library(readxl)
WEEKLY_TEAM_PERFORMANCE <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/WEEKLY TEAM PERFORMANCE.xlsx")
WEEKLY_TEAM_PERFORMANCE[4:33] <- lapply(WEEKLY_TEAM_PERFORMANCE[4:33], as.numeric)
WEEKLY_TEAM_PERFORMANCE$TO[is.na(WEEKLY_TEAM_PERFORMANCE$TO)] = 0
WEEKLY_TEAM_PERFORMANCE$DTO[is.na(WEEKLY_TEAM_PERFORMANCE$DTO)] = 0
WEEKLY_TEAM_PERFORMANCE<- na.omit(WEEKLY_TEAM_PERFORMANCE)

AWTP <- subset(WEEKLY_TEAM_PERFORMANCE,select=c(TT,CAY,AGG,AYTS,COMP,Week,EFF,EM,TLOS,AVG,CUSH,SEP,TAY,CTCH,YACR)) 

library(rJava)
library(glmulti)
NGU22<-glmulti(RUSHTD~AGG+EM+AVG+SEP+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
NGU21<-glmulti(RUSHATT~AGG+EFF+AVG+SEP+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
NGU19<-glmulti(INT~TT+AYTS+COMP+Week+AVG+TAY,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
NGU18<-glmulti(TD~CAY+AYTS+COMP+AVG+TAY+YACR,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
NGU17<-glmulti(ATT~TT+AYTS+Week+AVG+CUSH+YACR,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
NGU15<-glmulti(LCAD~TT+CAY+CUSH+SEP+TAY+YACR,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
NGU11<-glmulti(DTO~CAY+AGG+Week+EFF+EM+TLOS,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
NGU10<-glmulti(DRY~Week+TLOS+AVG+CUSH+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
NGU9<-glmulti(DPY~CAY+AGG+COMP+EM+TLOS+CTCH,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
NGU8<-glmulti(DFD~CAY+AGG+COMP+AVG+SEP+TAY,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
NGU7<-glmulti(TO~CAY+AYTS+EM+CUSH+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
#NGU6<-glmulti(RY~AGG+AYTS+COMP+AVG+TAY+YACR,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
#NGU5<-glmulti(PY~TT+CAY+COMP+AVG+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
#NGU4<-glmulti(FD~TT+AYTS+COMP+AVG+TAY+CTCH,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
#NGU3<-glmulti(OPPS~AGG+Week+EFF+EM+AVG+CUSH,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
#NGU2<-glmulti(TEAMS~TT+CAY+COMP+Week+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)
#NGU1<-glmulti(outcome~AGG+EFF+EM+CUSH+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE,level=2,crit="aic",method="h",report=TRUE,,intercept=TRUE)

