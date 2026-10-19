"""Pregame-information reconstruction of a single historical team-season workbook."""
import os,json,hashlib,subprocess
from pathlib import Path
import numpy as np,pandas as pd
from sklearn.pipeline import make_pipeline
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import brier_score_loss,log_loss,roc_auc_score

root=Path(__file__).resolve().parents[1]
data=Path(os.environ.get('NFL_DATA_DIR',root/'data/raw'))/'WTP AV.xlsx'
out=Path(os.environ.get('RESEARCH_OUTPUT_DIR',root/'local_results'));out.mkdir(exist_ok=True,parents=True)
code='a<-commandArgs(TRUE);write.csv(readxl::read_excel(a[1]),a[2],row.names=FALSE)'
subprocess.run(['Rscript','--vanilla','-e',code,str(data),str(out/'source_table.csv')],check=True)
d=pd.read_csv(out/'source_table.csv');needed=['Team','Opp','Week','outcome','TEAMS','OPPS','PY','RY','DPY','DRY']
assert set(needed).issubset(d) and not d[needed].isna().any().any()
assert not d.duplicated(['Team','Week']).any() and d.Week.between(1,18).all()
full_names=['Arizona Cardinals','Atlanta Falcons','Baltimore Ravens','Buffalo Bills','Carolina Panthers','Chicago Bears','Cincinnati Bengals','Cleveland Browns','Dallas Cowboys','Denver Broncos','Detroit Lions','Green Bay Packers','Houston Texans','Indianapolis Colts','Jacksonville Jaguars','Kansas City Chiefs','Los Angeles Chargers','Los Angeles Rams','Miami Dolphins','Minnesota Vikings','New England Patriots','New Orleans Saints','New York Giants','New York Jets','Oakland Raiders','Philadelphia Eagles','Pittsburgh Steelers','Seattle Seahawks','San Francisco 49ers','Tampa Bay Buccaneers','Tennessee Titans','Washington Redskins']
codes=['ARI','ATL','BAL','BUF','CAR','CHI','CIN','CLE','DAL','DEN','DET','GB','HOU','IND','JAX','KC','LAC','LAR','MIA','MIN','NE','NO','NYG','NYJ','OAK','PHI','PIT','SEA','SF','TB','TEN','WAS']
crosswalk=dict(zip(full_names,codes));d['Opp']=d.Opp.astype(str).str.strip().map(crosswalk)
assert d.Opp.notna().all(),'Unmapped historical opponent name'
d=d.sort_values(['Team','Week']).copy();raw=['TEAMS','OPPS','PY','RY','DPY','DRY']
for col in raw:
    d['lag_'+col]=d.groupby('Team')[col].transform(lambda s:s.shift(1).rolling(3,min_periods=1).mean())
d['last_history_week']=d.groupby('Team').Week.shift(1)
other=d[['Team','Week','last_history_week']+['lag_'+c for c in raw]].rename(columns={'Team':'Opp',**{c:'opp_'+c for c in ['last_history_week']+['lag_'+c for c in raw]}})
d=d.merge(other,on=['Opp','Week'],validate='many_to_one')
d['passing_matchup']=d.lag_PY-d.opp_lag_DPY;d['rushing_matchup']=d.lag_RY-d.opp_lag_DRY
features=['lag_TEAMS','lag_OPPS','opp_lag_TEAMS','opp_lag_OPPS','passing_matchup','rushing_matchup']
eligible=d.dropna(subset=features).copy()
tie_rows=int((eligible.TEAMS==eligible.OPPS).sum())
eligible=eligible[eligible.TEAMS!=eligible.OPPS].copy()
assert len(eligible)>50,'Insufficient lagged eligible rows'
assert np.array_equal(eligible.outcome.to_numpy(),(eligible.TEAMS>eligible.OPPS).astype(int).to_numpy())
assert (eligible.last_history_week<eligible.Week).all() and (eligible.opp_last_history_week<eligible.Week).all()
eligible['game_key']=eligible.apply(lambda r:str(r.Week)+':'+':'.join(sorted([r.Team,r.Opp])),axis=1)
pair=eligible.groupby('game_key').agg(rows=('outcome','size'),win_sum=('outcome','sum'))
assert (pair.rows==2).all() and (pair.win_sum==1).all()
train=eligible[eligible.Week<=12];test=eligible[eligible.Week>=13]
assert set(train.game_key).isdisjoint(test.game_key)
model=make_pipeline(StandardScaler(),LogisticRegression(C=1,max_iter=1000));model.fit(train[features],train.outcome)
pred=model.predict_proba(test[features])[:,1];constant=np.repeat(train.outcome.mean(),len(test))
def metrics(p):return {'brier':float(brier_score_loss(test.outcome,p)),'log_loss':float(log_loss(test.outcome,p)),'auc':float(roc_auc_score(test.outcome,p))}
scored=test[['Team','Opp','Week','outcome','game_key','last_history_week','opp_last_history_week']].copy();scored['predicted_win']=pred
scored['brier_delta']=(test.outcome-pred)**2-(test.outcome-constant)**2
g=scored.groupby('game_key').brier_delta.mean().to_numpy();ix=np.random.default_rng(89).integers(0,len(g),(2000,len(g)))
result={'status':'EXECUTED_PREGAME_INFORMATION_RECONSTRUCTION','source_sha256':hashlib.sha256(data.read_bytes()).hexdigest(),
 'raw_team_game_rows':len(d),'eligible_rows':len(eligible),'excluded_tie_team_rows':tie_rows,'train_rows':len(train),'test_rows':len(test),
 'train_games':train.game_key.nunique(),'test_games':test.game_key.nunique(),'features':features,
 'train_weeks':'2–12','test_weeks':'13–17','training_mean':metrics(constant),'logistic':metrics(pred),
 'brier_delta_game_bootstrap_interval':np.quantile(g[ix].mean(axis=1),[.025,.975]).tolist(),
 'limitations':['One recovered historical season; calendar year not independently established from workbook metadata.',
 'All predictors are lagged through prior weeks; the original same-game model is not reproduced.',
 'Both team perspectives share one game; split and uncertainty preserve complete games.',
 'No home/away, injuries, roster, schedule-strength or season transfer adjustment.',
 'No tuning, deployment, causal claim or current Chargers forecast. Raw workbook and results remain private.']}
(out/'results.json').write_text(json.dumps(result,indent=2,default=int));scored.to_csv(out/'heldout_predictions.csv',index=False)
print(json.dumps(result,indent=2,default=int))
