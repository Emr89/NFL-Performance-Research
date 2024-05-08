library(readxl)

Defense_Weekly <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Defense Weekly.xlsx", 
                             col_types = c("text", "text", "text", 
                                           "text", "numeric", "numeric", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric"))


NEXT_GEN_STATS_PASSING <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/NEXT GEN STATS PASSING.xlsx", 
                                     col_types = c("text", "text", "numeric", 
                                                   "numeric", "numeric", "numeric", 
                                                   "numeric", "numeric", "numeric", 
                                                   "numeric", "numeric", "numeric", 
                                                   "numeric", "numeric", "numeric"))

Next_gen_stats_receving <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Next gen stats receving.xlsx", 
                                      col_types = c("text", "text", "text", 
                                                    "numeric", "numeric", "numeric", 
                                                    "numeric", "numeric", "numeric", 
                                                    "numeric", "numeric", "numeric", 
                                                    "numeric", "numeric", "numeric"))


REC_WEEKLY <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/REC WEEKLY.xlsx",col_types = c("text", "text", "text","text", "numeric", "numeric", "numeric", "numeric", "numeric"))


Weekly_Rushing_Stats <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Weekly Rushing Stats.xlsx", 
                                   col_types = c("text", "text", "text", 
                                                 "text", "numeric", "numeric", "numeric", 
                                                 "numeric", "numeric"))

Weekly_Passing <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Weekly_Passing.xlsx", 
                             col_types = c("text", "text", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "numeric"))

ADV_DEF_MOD_STATS <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Adv_DEF_MOD_STATS.xlsx")

Defense_Air_Comp <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Defense_Air_Comp.xlsx")

advanced_def_rush <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/advanced_def_rush.xlsx")

Advanced_Rec_stats <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Advanced_Rec_stats.xlsx")

Advanced_Rushing_data <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Advanced_Rushing_data.xlsx")

NGSR <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/NGSR.xlsx")


MODADV <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/MODADV.xlsx")

# Set up normilization

# Weekly Passing 
WP <- scale(Weekly_Passing[3:15])

scaleList_WP <- list(scale = attr(WP, "scaled:scale"),
                     center = attr(WP, "scaled:center"))

WP <- as.data.frame(WP)

# Next Gen Stats Passing 
NGSP <- scale(NEXT_GEN_STATS_PASSING[3:15])

scaleList_NGSP <- list(scale = attr(NGSP, "scaled:scale"),
                       center = attr(NGSP, "scaled:center"))

NGSP <- as.data.frame(NGSP)

#Weekly Rushing 

RUSHW <- scale(Weekly_Rushing_Stats[5:9])

scaleList_RUSHW <- list(scale = attr(RUSHW, "scaled:scale"),
                        center = attr(RUSHW, "scaled:center"))

RUSHW <- as.data.frame(RUSHW)

# Advanced Rushing stats season
ADVRUSHS <- scale(NGSR[3:9])

scaleList_ADVRUSHS <- list(scale = attr(ADVRUSHS, "scaled:scale"),
                           center = attr(ADVRUSHS, "scaled:center"))

ADVRUSHS <- as.data.frame(ADVRUSHS)


# Wr
#Weekly rec 

WRW <- scale(REC_WEEKLY[5:9])

scaleList_WRW <- list(scale = attr(WRW, "scaled:scale"),
                      center = attr(WRW, "scaled:center"))

WRW <- as.data.frame(WRW)


# Advanced Rushing stats season
ADVWRS <- scale(Next_gen_stats_receving[4:14])

scaleList_ADVWRS <- list(scale = attr(ADVWRS, "scaled:scale"),
                         center = attr(ADVWRS, "scaled:center"))

ADVWRS <- as.data.frame(ADVWRS)

# Defense season 

# Advanced defensiv stats season
ADVDEF <- scale(MODADV[3:17])

scaleList_ADVDEF <- list(scale = attr(ADVDEF, "scaled:scale"),
                         center = attr(ADVDEF, "scaled:center"))

ADVDEF <- as.data.frame(ADVDEF)


# DEF Weekly 
DEF_W <- scale(Defense_Weekly[5:11])

scaleList_DEF_W <- list(scale = attr(DEF_W, "scaled:scale"),
                        center = attr(DEF_W, "scaled:center"))

DEF_W <- as.data.frame(DEF_W)

# Taking away specific variables 

Weekly_Passing <- Weekly_Passing[c(-1:-2, -15:-16)]
NEXT_GEN_STATS_PASSING <- NEXT_GEN_STATS_PASSING[c(-1:-2)]
REC_WEEKLY <- REC_WEEKLY[c(-1:-2,-4)]
Next_gen_stats_receving <- Next_gen_stats_receving[c(-1:-3)]
Weekly_Rushing_Stats <- Weekly_Rushing_Stats[c(-1:-2,-4)]
NGSR <- NGSR[c(-1:-2)]
Defense_Weekly <- Defense_Weekly[c(-1:-2,-4)]
ADV_DEF_MOD_STATS <- ADV_DEF_MOD_STATS[c(-1:-2)]
MODADV<- MODADV[-1:-2]
# Clean names 


WP$AGG <- WP$`AGG%`
WP$COMP <- WP$`COMP%`

NGSP$AGG <- NGSP$`AGG%`
NGSP$COMP <- NGSP$`COMP%`


ADVWRS$TAYP <- ADVWRS$`TAY%`
ADVWRS$CTCH <- ADVWRS$`CTCH%`
ADVWRS$PLMUS<- ADVWRS$`+/-`
ADVWRS$YACR <- ADVWRS$`YAC/R`
ADVWRS$XYACR <- ADVWRS$`xYAC/R`


ADVRUSHS$ED <- ADVRUSHS$`8+D%`

DEF_W$Sk <- DEF_W$Sacks
DEF_W$Sky <- DEF_W$`Sack Yds`
DEF_W$QBH <- DEF_W$`QB Hits`
DEF_W$FF <- DEF_W$`Fumbles Forced`
DEF_W$FR <- DEF_W$`Fumbles Recovered`

Weekly_Passing$AGG <- Weekly_Passing$`AGG%`
Weekly_Passing$COMP <- Weekly_Passing$`COMP%`

NEXT_GEN_STATS_PASSING$AGG <- NEXT_GEN_STATS_PASSING$`AGG%`
NEXT_GEN_STATS_PASSING$COMP <- NEXT_GEN_STATS_PASSING$`COMP%`


Next_gen_stats_receving$TAYP <- Next_gen_stats_receving$`TAY%`
Next_gen_stats_receving$CTCH <- Next_gen_stats_receving$`CTCH%`
Next_gen_stats_receving$PLMUS<- Next_gen_stats_receving$`+/-`
Next_gen_stats_receving$YACR <- Next_gen_stats_receving$`YAC/R`
Next_gen_stats_receving$XYACR <- Next_gen_stats_receving$`xYAC/R`

NGSR$ED <- NGSR$`8+D%`

Defense_Weekly$Sk <- Defense_Weekly$Sacks
Defense_Weekly$Sky <- Defense_Weekly$`Sack Yds`
Defense_Weekly$QBH <- Defense_Weekly$`QB Hits`
Defense_Weekly$FF <- Defense_Weekly$`Fumbles Forced`
Defense_Weekly$FR <- Defense_Weekly$`Fumbles Recovered`

#GLMULTI SECTION 1, PREPICKED VAR
library(rJava)
library(glmulti)
GAMT1	<-	glmulti	(	TT	~	CAY+ AGG+ AYTS+ COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT2	<-	glmulti	(	CAY	~	 AGG+ AYTS+ COMP+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT3	<-	glmulti	(	IAY	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT4	<-	glmulti	(	AYD	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT5	<-	glmulti	(	AGG	~	CAY+ AYTS+ COMP+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT6	<-	glmulti	(	LCAD	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT7	<-	glmulti	(	AYTS	~	CAY+ AGG+ COMP+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT8	<-	glmulti	(	ATT	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT9	<-	glmulti	(	YDS	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT10	<-	glmulti	(	TD	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT11	<-	glmulti	(	INT	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT12	<-	glmulti	(	COMP	~	CAY+ AGG+ AYTS+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT13	<-	glmulti	(	TT	~	CAY+AGG+ATT+INT+COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT14	<-	glmulti	(	CAY	~	AGG+ATT+INT+COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT15	<-	glmulti	(	IAY	~	CAY+AGG+ATT+INT+COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT16	<-	glmulti	(	AYD	~	CAY+AGG+ATT+INT+COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT17	<-	glmulti	(	AGG	~	CAY+ATT+INT+COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT18	<-	glmulti	(	LCAD	~	CAY+AGG+ATT+INT+COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT19	<-	glmulti	(	AYTS	~	CAY+AGG+ATT+INT+COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT20	<-	glmulti	(	ATT	~	CAY+AGG+INT+COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT21	<-	glmulti	(	YDS	~	CAY+AGG+ATT+INT+COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT22	<-	glmulti	(	TD	~	CAY+AGG+ATT+INT+COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT23	<-	glmulti	(	INT	~	CAY+AGG+ATT+COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT24	<-	glmulti	(	COMP	~	CAY+AGG+ATT+INT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT25	<-	glmulti	(	TT	~	CAY+AGG+COMP+ATT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT26	<-	glmulti	(	CAY	~	AGG+COMP+ATT+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT27	<-	glmulti	(	IAY	~	CAY+AGG+COMP+ATT+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT28	<-	glmulti	(	AYD	~	CAY+AGG+COMP+ATT+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT29	<-	glmulti	(	AGG	~	CAY+COMP+ATT+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT30	<-	glmulti	(	LCAD	~	CAY+AGG+COMP+ATT+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT31	<-	glmulti	(	AYTS	~	CAY+AGG+COMP+ATT+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT32	<-	glmulti	(	ATT	~	CAY+AGG+COMP+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT33	<-	glmulti	(	YDS	~	CAY+AGG+COMP+ATT+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT34	<-	glmulti	(	TD	~	CAY+AGG+COMP+ATT+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT35	<-	glmulti	(	INT	~	CAY+AGG+COMP+ATT+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT36	<-	glmulti	(	COMP	~	CAY+AGG+ATT+TT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT37	<-	glmulti	(	TT	~	ATT+YDS+TD+INT+ COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT38	<-	glmulti	(	CAY	~	ATT+YDS+TD+INT+ COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT39	<-	glmulti	(	IAY	~	ATT+YDS+TD+INT+ COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT40	<-	glmulti	(	AYD	~	ATT+YDS+TD+INT+ COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT41	<-	glmulti	(	AGG	~	ATT+YDS+TD+INT+ COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT42	<-	glmulti	(	LCAD	~	ATT+YDS+TD+INT+ COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT43	<-	glmulti	(	AYTS	~	ATT+YDS+TD+INT+ COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT44	<-	glmulti	(	ATT	~	YDS+TD+INT+ COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT45	<-	glmulti	(	YDS	~	ATT+TD+INT+ COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT46	<-	glmulti	(	TD	~	ATT+YDS+INT+ COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT47	<-	glmulti	(	INT	~	ATT+YDS+TD+ COMP	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT48	<-	glmulti	(	COMP	~	ATT+YDS+TD+INT	,	data = 	WP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT49	<-	glmulti	(	Int	~	Cmp+ DADOT+ Bltz+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT50	<-	glmulti	(	Tgt	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT51	<-	glmulti	(	Cmp	~	Int+ DADOT+ Bltz+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT52	<-	glmulti	(	Yds	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT53	<-	glmulti	(	TD	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT54	<-	glmulti	(	DADOT	~	Int+Cmp+ Bltz+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT55	<-	glmulti	(	Air	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT56	<-	glmulti	(	YAC	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT57	<-	glmulti	(	Bltz	~	Int+Cmp+ DADOT+  Hurry+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT58	<-	glmulti	(	Hrry	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT59	<-	glmulti	(	QBKD	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT60	<-	glmulti	(	Sk	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT61	<-	glmulti	(	Prss	~	Int+Cmp+ DADOT+ Bltz	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT62	<-	glmulti	(	TC	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT63	<-	glmulti	(	TM2	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT64	<-	glmulti	(	Int	~	Tgt+Cmp+Yds+TD	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT65	<-	glmulti	(	Tgt	~	Cmp+Yds+TD+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT66	<-	glmulti	(	Cmp	~	Tgt+Yds+TD+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT67	<-	glmulti	(	Yds	~	Tgt+Cmp+TD+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT68	<-	glmulti	(	TD	~	Tgt+Cmp+Yds+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT69	<-	glmulti	(	DADOT	~	Tgt+Cmp+Yds+TD+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT70	<-	glmulti	(	Air	~	Tgt+Cmp+Yds+TD+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT71	<-	glmulti	(	YAC	~	Tgt+Cmp+Yds+TD+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT72	<-	glmulti	(	Bltz	~	Tgt+Cmp+Yds+TD+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT73	<-	glmulti	(	Hrry	~	Tgt+Cmp+Yds+TD+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT74	<-	glmulti	(	QBKD	~	Tgt+Cmp+Yds+TD+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT75	<-	glmulti	(	Sk	~	Tgt+Cmp+Yds+TD+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT76	<-	glmulti	(	Prss	~	Tgt+Cmp+Yds+TD+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT77	<-	glmulti	(	TC	~	Tgt+Cmp+Yds+TD+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT78	<-	glmulti	(	TM2	~	Tgt+Cmp+Yds+TD+Int	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT79	<-	glmulti	(	Int	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT80	<-	glmulti	(	Tgt	~	Hrry+Prss+Bltz+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT81	<-	glmulti	(	Cmp	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT82	<-	glmulti	(	Yds	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT83	<-	glmulti	(	TD	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT84	<-	glmulti	(	DADOT	~	Hrry+Prss+Bltz+Tgt	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT85	<-	glmulti	(	Air	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT86	<-	glmulti	(	YAC	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT87	<-	glmulti	(	Bltz	~	Hrry+Prss+Tgt+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT88	<-	glmulti	(	Hrry	~	Prss+Bltz+Tgt+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT89	<-	glmulti	(	QBKD	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT90	<-	glmulti	(	Sk	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT91	<-	glmulti	(	Prss	~	Hrry+Bltz+Tgt+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT92	<-	glmulti	(	TC	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT93	<-	glmulti	(	TM2	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	ADVDEF	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT94	<-	glmulti	(	CUSH	~	Sep+Rec+CTCH+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT95	<-	glmulti	(	SEP	~	Cush+Rec+CTCH+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT96	<-	glmulti	(	TAY	~	Cush+Sep+Rec+CTCH+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT97	<-	glmulti	(	TAY%	~	Cush+Sep+Rec+CTCH+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT98	<-	glmulti	(	REC	~	Cush+Sep+CTCH+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT99	<-	glmulti	(	TAR	~	Cush+Sep+Rec+CTCH+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT100	<-	glmulti	(	CTCH%	~	Cush+Sep+Rec+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT101	<-	glmulti	(	YDS	~	Cush+Sep+Rec+CTCH+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT102	<-	glmulti	(	TD	~	Cush+Sep+Rec+CTCH+YDS	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT103	<-	glmulti	(	YAC/R	~	Cush+Sep+Rec+CTCH+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT104	<-	glmulti	(	xYAC/R	~	Cush+Sep+Rec+CTCH+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT105	<-	glmulti	(	+/-	~	Cush+Sep+Rec+CTCH+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT106	<-	glmulti	(	CUSH	~	Sep+Ctch%+Yac/r+TAR	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT107	<-	glmulti	(	SEP	~	Cush+Ctch%+Yac/r+TAR	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT108	<-	glmulti	(	TAY	~	Cush+Sep+Ctch%+Yac/r+TAR	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT109	<-	glmulti	(	TAY%	~	Cush+Sep+Ctch%+Yac/r+TAR	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT110	<-	glmulti	(	REC	~	Cush+Sep+Ctch%+Yac/r+TAR	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT111	<-	glmulti	(	TAR	~	Cush+Sep+Ctch%+Yac/r	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT112	<-	glmulti	(	CTCH%	~	Cush+Sep+Yac/r+TAR	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT113	<-	glmulti	(	YDS	~	Cush+Sep+Ctch%+Yac/r+TAR	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT114	<-	glmulti	(	TD	~	Cush+Sep+Ctch%+Yac/r+TAR	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT115	<-	glmulti	(	YAC/R	~	Cush+Sep+Ctch%+TAR	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT116	<-	glmulti	(	xYAC/R	~	Cush+Sep+Ctch%+TAR	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT117	<-	glmulti	(	+/-	~	Cush+Sep+Ctch%+TAR	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT118	<-	glmulti	(	CUSH	~	REC+TAR+CTCH%+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT119	<-	glmulti	(	SEP	~	REC+TAR+CTCH%+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT120	<-	glmulti	(	TAY	~	REC+TAR+CTCH%+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT121	<-	glmulti	(	TAY%	~	REC+TAR+CTCH%+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT122	<-	glmulti	(	REC	~	TAR+CTCH%+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT123	<-	glmulti	(	TAR	~	REC+CTCH%+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT124	<-	glmulti	(	CTCH%	~	REC+TAR+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT125	<-	glmulti	(	YDS	~	REC+TAR+CTCH%+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT126	<-	glmulti	(	TD	~	REC+TAR+CTCH%+YDS	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT127	<-	glmulti	(	YAC/R	~	REC+TAR+CTCH%+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT128	<-	glmulti	(	xYAC/R	~	REC+TAR+CTCH%+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT129	<-	glmulti	(	+/-	~	REC+TAR+CTCH%+YDS+TD	,	data = 	ADVWRS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT130	<-	glmulti	(	EFF	~	TLOS+ATT+TD+YDS+ED	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT131	<-	glmulti	(	8+D%	~	EFF+TLOS+ATT+TD+YDS	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT132	<-	glmulti	(	TLOS	~	EFF+ATT+TD+YDS+ED	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT133	<-	glmulti	(	ATT	~	EFF+TLOS+TD+YDS+ED	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT134	<-	glmulti	(	YDS	~	EFF+TLOS+ATT+TD+ED	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT135	<-	glmulti	(	AVG	~	EFF+TLOS+ATT+TD+YDS+ED	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT136	<-	glmulti	(	TD	~	EFF+TLOS+ATT+YDS+ED	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT137	<-	glmulti	(	EFF	~	TLOS+ED+ATT	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT138	<-	glmulti	(	8+D%	~	EFF+TLOS+ATT	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT139	<-	glmulti	(	TLOS	~	EFF+ED+ATT	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT140	<-	glmulti	(	ATT	~	EFF+TLOS+ED	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT141	<-	glmulti	(	YDS	~	EFF+TLOS+ED+ATT	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT142	<-	glmulti	(	AVG	~	EFF+TLOS+ED+ATT	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT143	<-	glmulti	(	TD	~	EFF+TLOS+ED+ATT	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT144	<-	glmulti	(	EFF	~	ATT+YDS+TD	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT145	<-	glmulti	(	8+D%	~	ATT+YDS+TD	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT146	<-	glmulti	(	TLOS	~	ATT+YDS+TD	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT147	<-	glmulti	(	ATT	~	YDS+TD	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT148	<-	glmulti	(	YDS	~	ATT+TD	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT149	<-	glmulti	(	AVG	~	ATT+YDS+TD	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT150	<-	glmulti	(	TD	~	ATT+YDS	,	data = 	ADVRUSHS	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT151	<-	glmulti	(	Sacks	~	Sk+QBH+Assists+Tackles+FF	,	data = 	DEF_W	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT152	<-	glmulti	(	Sack Yds	~	Sk+QBH+Assists+Tackles+FF	,	data = 	DEF_W	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT153	<-	glmulti	(	QB Hits	~	Sk+QBH+Assists+Tackles+FF	,	data = 	DEF_W	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT154	<-	glmulti	(	Tackles	~	Sk+QBH+Assists+Tackles+FF	,	data = 	DEF_W	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT155	<-	glmulti	(	Assists	~	Sk+QBH+Assists+Tackles+FF	,	data = 	DEF_W	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT156	<-	glmulti	(	Fumbles Forced	~	Sk+QBH+Assists+Tackles+FF	,	data = 	DEF_W	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT157	<-	glmulti	(	Fumbles Recovered	~	Sk+QBH+Assists+Tackles+FF	,	data = 	DEF_W	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT158	<-	glmulti	(	Rec	~	Yds+Avg+TD+FUM	,	data = 	WRW	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT159	<-	glmulti	(	Yds	~	Rec+Avg+TD+FUM	,	data = 	WRW	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT160	<-	glmulti	(	Avg	~	Rec+Yds+TD+FUM	,	data = 	WRW	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT161	<-	glmulti	(	TD	~	Rec+Yds+Avg+FUM	,	data = 	WRW	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT162	<-	glmulti	(	FUM	~	Rec+Yds+Avg+TD	,	data = 	WRW	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT163	<-	glmulti	(	Att	~	Yds+Avg+TD+FUM	,	data = 	RUSHW	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT164	<-	glmulti	(	Yds	~	Att+Avg+TD+FUM	,	data = 	RUSHW	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT165	<-	glmulti	(	Avg	~	Att+Yds+TD+FUM	,	data = 	RUSHW	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT166	<-	glmulti	(	TD	~	Att+Yds+Avg+FUM	,	data = 	RUSHW	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT167	<-	glmulti	(	FUM	~	Att+Yds+Avg+TD	,	data = 	RUSHW	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT168	<-	glmulti	(	TT	~	CAY+ AGG+ AYTS+ COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT169	<-	glmulti	(	CAY	~	 AGG+ AYTS+ COMP+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT170	<-	glmulti	(	IAY	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT171	<-	glmulti	(	AYD	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT172	<-	glmulti	(	AGG	~	CAY+ AYTS+ COMP+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT173	<-	glmulti	(	LCAD	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT174	<-	glmulti	(	AYTS	~	CAY+ AGG+ COMP+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT175	<-	glmulti	(	ATT	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT176	<-	glmulti	(	YDS	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT177	<-	glmulti	(	TD	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT178	<-	glmulti	(	INT	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT179	<-	glmulti	(	COMP	~	CAY+ AGG+ AYTS+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT180	<-	glmulti	(	TT	~	CAY+AGG+ATT+INT+COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT181	<-	glmulti	(	CAY	~	AGG+ATT+INT+COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT182	<-	glmulti	(	IAY	~	CAY+AGG+ATT+INT+COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT183	<-	glmulti	(	AYD	~	CAY+AGG+ATT+INT+COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT184	<-	glmulti	(	AGG	~	CAY+ATT+INT+COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT185	<-	glmulti	(	LCAD	~	CAY+AGG+ATT+INT+COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT186	<-	glmulti	(	AYTS	~	CAY+AGG+ATT+INT+COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT187	<-	glmulti	(	ATT	~	CAY+AGG+INT+COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT188	<-	glmulti	(	YDS	~	CAY+AGG+ATT+INT+COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT189	<-	glmulti	(	TD	~	CAY+AGG+ATT+INT+COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT190	<-	glmulti	(	INT	~	CAY+AGG+ATT+COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT191	<-	glmulti	(	COMP	~	CAY+AGG+ATT+INT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT192	<-	glmulti	(	TT	~	CAY+AGG+COMP+ATT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT193	<-	glmulti	(	CAY	~	AGG+COMP+ATT+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT194	<-	glmulti	(	IAY	~	CAY+AGG+COMP+ATT+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT195	<-	glmulti	(	AYD	~	CAY+AGG+COMP+ATT+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT196	<-	glmulti	(	AGG	~	CAY+COMP+ATT+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT197	<-	glmulti	(	LCAD	~	CAY+AGG+COMP+ATT+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT198	<-	glmulti	(	AYTS	~	CAY+AGG+COMP+ATT+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT199	<-	glmulti	(	ATT	~	CAY+AGG+COMP+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT200	<-	glmulti	(	YDS	~	CAY+AGG+COMP+ATT+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT201	<-	glmulti	(	TD	~	CAY+AGG+COMP+ATT+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT202	<-	glmulti	(	INT	~	CAY+AGG+COMP+ATT+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT203	<-	glmulti	(	COMP	~	CAY+AGG+ATT+TT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT204	<-	glmulti	(	TT	~	ATT+YDS+TD+INT+ COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT205	<-	glmulti	(	CAY	~	ATT+YDS+TD+INT+ COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT206	<-	glmulti	(	IAY	~	ATT+YDS+TD+INT+ COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT207	<-	glmulti	(	AYD	~	ATT+YDS+TD+INT+ COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT208	<-	glmulti	(	AGG	~	ATT+YDS+TD+INT+ COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT209	<-	glmulti	(	LCAD	~	ATT+YDS+TD+INT+ COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT210	<-	glmulti	(	AYTS	~	ATT+YDS+TD+INT+ COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT211	<-	glmulti	(	ATT	~	YDS+TD+INT+ COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT212	<-	glmulti	(	YDS	~	ATT+TD+INT+ COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT213	<-	glmulti	(	TD	~	ATT+YDS+INT+ COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT214	<-	glmulti	(	INT	~	ATT+YDS+TD+ COMP	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT215	<-	glmulti	(	COMP	~	ATT+YDS+TD+INT	,	data = 	NGSP	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT216	<-	glmulti	(	TT	~	CAY+ AGG+ AYTS+ COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT217	<-	glmulti	(	CAY	~	 AGG+ AYTS+ COMP+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT218	<-	glmulti	(	IAY	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT219	<-	glmulti	(	AYD	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT220	<-	glmulti	(	AGG	~	CAY+ AYTS+ COMP+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT221	<-	glmulti	(	LCAD	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT222	<-	glmulti	(	AYTS	~	CAY+ AGG+ COMP+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT223	<-	glmulti	(	ATT	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT224	<-	glmulti	(	YDS	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT225	<-	glmulti	(	TD	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT226	<-	glmulti	(	INT	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT227	<-	glmulti	(	COMP	~	CAY+ AGG+ AYTS+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT228	<-	glmulti	(	TT	~	CAY+AGG+ATT+INT+COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT229	<-	glmulti	(	CAY	~	AGG+ATT+INT+COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT230	<-	glmulti	(	IAY	~	CAY+AGG+ATT+INT+COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT231	<-	glmulti	(	AYD	~	CAY+AGG+ATT+INT+COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT232	<-	glmulti	(	AGG	~	CAY+ATT+INT+COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT233	<-	glmulti	(	LCAD	~	CAY+AGG+ATT+INT+COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT234	<-	glmulti	(	AYTS	~	CAY+AGG+ATT+INT+COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT235	<-	glmulti	(	ATT	~	CAY+AGG+INT+COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT236	<-	glmulti	(	YDS	~	CAY+AGG+ATT+INT+COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT237	<-	glmulti	(	TD	~	CAY+AGG+ATT+INT+COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT238	<-	glmulti	(	INT	~	CAY+AGG+ATT+COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT239	<-	glmulti	(	COMP	~	CAY+AGG+ATT+INT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT240	<-	glmulti	(	TT	~	CAY+AGG+COMP+ATT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT241	<-	glmulti	(	CAY	~	AGG+COMP+ATT+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT242	<-	glmulti	(	IAY	~	CAY+AGG+COMP+ATT+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT243	<-	glmulti	(	AYD	~	CAY+AGG+COMP+ATT+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT244	<-	glmulti	(	AGG	~	CAY+COMP+ATT+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT245	<-	glmulti	(	LCAD	~	CAY+AGG+COMP+ATT+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT246	<-	glmulti	(	AYTS	~	CAY+AGG+COMP+ATT+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT247	<-	glmulti	(	ATT	~	CAY+AGG+COMP+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT248	<-	glmulti	(	YDS	~	CAY+AGG+COMP+ATT+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT249	<-	glmulti	(	TD	~	CAY+AGG+COMP+ATT+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT250	<-	glmulti	(	INT	~	CAY+AGG+COMP+ATT+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT251	<-	glmulti	(	COMP	~	CAY+AGG+ATT+TT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT252	<-	glmulti	(	TT	~	ATT+YDS+TD+INT+ COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT253	<-	glmulti	(	CAY	~	ATT+YDS+TD+INT+ COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT254	<-	glmulti	(	IAY	~	ATT+YDS+TD+INT+ COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT255	<-	glmulti	(	AYD	~	ATT+YDS+TD+INT+ COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT256	<-	glmulti	(	AGG	~	ATT+YDS+TD+INT+ COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT257	<-	glmulti	(	LCAD	~	ATT+YDS+TD+INT+ COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT258	<-	glmulti	(	AYTS	~	ATT+YDS+TD+INT+ COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT259	<-	glmulti	(	ATT	~	YDS+TD+INT+ COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT260	<-	glmulti	(	YDS	~	ATT+TD+INT+ COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT261	<-	glmulti	(	TD	~	ATT+YDS+INT+ COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT262	<-	glmulti	(	INT	~	ATT+YDS+TD+ COMP	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT263	<-	glmulti	(	COMP	~	ATT+YDS+TD+INT	,	data = 	Weekly_Passing	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT264	<-	glmulti	(	Int	~	Cmp+ DADOT+ Bltz+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT265	<-	glmulti	(	Tgt	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT266	<-	glmulti	(	Cmp	~	Int+ DADOT+ Bltz+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT267	<-	glmulti	(	Yds	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT268	<-	glmulti	(	TD	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT269	<-	glmulti	(	DADOT	~	Int+Cmp+ Bltz+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT270	<-	glmulti	(	Air	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT271	<-	glmulti	(	YAC	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT272	<-	glmulti	(	Bltz	~	Int+Cmp+ DADOT+  Hurry+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT273	<-	glmulti	(	Hrry	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT274	<-	glmulti	(	QBKD	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT275	<-	glmulti	(	Sk	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT276	<-	glmulti	(	Prss	~	Int+Cmp+ DADOT+ Bltz	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT277	<-	glmulti	(	TC	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT278	<-	glmulti	(	TM2	~	Int+Cmp+ DADOT+ Bltz+ Prss	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT279	<-	glmulti	(	Int	~	Tgt+Cmp+Yds+TD	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT280	<-	glmulti	(	Tgt	~	Cmp+Yds+TD+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT281	<-	glmulti	(	Cmp	~	Tgt+Yds+TD+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT282	<-	glmulti	(	Yds	~	Tgt+Cmp+TD+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT283	<-	glmulti	(	TD	~	Tgt+Cmp+Yds+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT284	<-	glmulti	(	DADOT	~	Tgt+Cmp+Yds+TD+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT285	<-	glmulti	(	Air	~	Tgt+Cmp+Yds+TD+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT286	<-	glmulti	(	YAC	~	Tgt+Cmp+Yds+TD+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT287	<-	glmulti	(	Bltz	~	Tgt+Cmp+Yds+TD+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT288	<-	glmulti	(	Hrry	~	Tgt+Cmp+Yds+TD+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT289	<-	glmulti	(	QBKD	~	Tgt+Cmp+Yds+TD+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT290	<-	glmulti	(	Sk	~	Tgt+Cmp+Yds+TD+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT291	<-	glmulti	(	Prss	~	Tgt+Cmp+Yds+TD+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT292	<-	glmulti	(	TC	~	Tgt+Cmp+Yds+TD+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT293	<-	glmulti	(	TM2	~	Tgt+Cmp+Yds+TD+Int	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT294	<-	glmulti	(	Int	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT295	<-	glmulti	(	Tgt	~	Hrry+Prss+Bltz+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT296	<-	glmulti	(	Cmp	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT297	<-	glmulti	(	Yds	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT298	<-	glmulti	(	TD	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT299	<-	glmulti	(	DADOT	~	Hrry+Prss+Bltz+Tgt	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT300	<-	glmulti	(	Air	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT301	<-	glmulti	(	YAC	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT302	<-	glmulti	(	Bltz	~	Hrry+Prss+Tgt+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT303	<-	glmulti	(	Hrry	~	Prss+Bltz+Tgt+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT304	<-	glmulti	(	QBKD	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT305	<-	glmulti	(	Sk	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT306	<-	glmulti	(	Prss	~	Hrry+Bltz+Tgt+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT307	<-	glmulti	(	TC	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT308	<-	glmulti	(	TM2	~	Hrry+Prss+Bltz+Tgt+DADOT	,	data = 	MODADV	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT309	<-	glmulti	(	CUSH	~	Sep+Rec+CTCH+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT310	<-	glmulti	(	SEP	~	Cush+Rec+CTCH+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT311	<-	glmulti	(	TAY	~	Cush+Sep+Rec+CTCH+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT312	<-	glmulti	(	TAY%	~	Cush+Sep+Rec+CTCH+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT313	<-	glmulti	(	REC	~	Cush+Sep+CTCH+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT314	<-	glmulti	(	TAR	~	Cush+Sep+Rec+CTCH+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT315	<-	glmulti	(	CTCH%	~	Cush+Sep+Rec+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT316	<-	glmulti	(	YDS	~	Cush+Sep+Rec+CTCH+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT317	<-	glmulti	(	TD	~	Cush+Sep+Rec+CTCH+YDS	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT318	<-	glmulti	(	YAC/R	~	Cush+Sep+Rec+CTCH+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT319	<-	glmulti	(	xYAC/R	~	Cush+Sep+Rec+CTCH+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT320	<-	glmulti	(	+/-	~	Cush+Sep+Rec+CTCH+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT321	<-	glmulti	(	CUSH	~	Sep+Ctch%+Yac/r+TAR	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT322	<-	glmulti	(	SEP	~	Cush+Ctch%+Yac/r+TAR	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT323	<-	glmulti	(	TAY	~	Cush+Sep+Ctch%+Yac/r+TAR	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT324	<-	glmulti	(	TAY%	~	Cush+Sep+Ctch%+Yac/r+TAR	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT325	<-	glmulti	(	REC	~	Cush+Sep+Ctch%+Yac/r+TAR	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT326	<-	glmulti	(	TAR	~	Cush+Sep+Ctch%+Yac/r	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT327	<-	glmulti	(	CTCH%	~	Cush+Sep+Yac/r+TAR	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT328	<-	glmulti	(	YDS	~	Cush+Sep+Ctch%+Yac/r+TAR	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT329	<-	glmulti	(	TD	~	Cush+Sep+Ctch%+Yac/r+TAR	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT330	<-	glmulti	(	YAC/R	~	Cush+Sep+Ctch%+TAR	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT331	<-	glmulti	(	xYAC/R	~	Cush+Sep+Ctch%+TAR	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT332	<-	glmulti	(	+/-	~	Cush+Sep+Ctch%+TAR	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT333	<-	glmulti	(	CUSH	~	REC+TAR+CTCH%+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT334	<-	glmulti	(	SEP	~	REC+TAR+CTCH%+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT335	<-	glmulti	(	TAY	~	REC+TAR+CTCH%+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT336	<-	glmulti	(	TAY%	~	REC+TAR+CTCH%+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT337	<-	glmulti	(	REC	~	TAR+CTCH%+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT338	<-	glmulti	(	TAR	~	REC+CTCH%+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT339	<-	glmulti	(	CTCH%	~	REC+TAR+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT340	<-	glmulti	(	YDS	~	REC+TAR+CTCH%+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT341	<-	glmulti	(	TD	~	REC+TAR+CTCH%+YDS	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT342	<-	glmulti	(	YAC/R	~	REC+TAR+CTCH%+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT343	<-	glmulti	(	xYAC/R	~	REC+TAR+CTCH%+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT344	<-	glmulti	(	+/-	~	REC+TAR+CTCH%+YDS+TD	,	data = 	Next_gen_stats_receving	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT345	<-	glmulti	(	EFF	~	TLOS+ATT+TD+YDS+ED	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT346	<-	glmulti	(	8+D%	~	EFF+TLOS+ATT+TD+YDS	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT347	<-	glmulti	(	TLOS	~	EFF+ATT+TD+YDS+ED	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT348	<-	glmulti	(	ATT	~	EFF+TLOS+TD+YDS+ED	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT349	<-	glmulti	(	YDS	~	EFF+TLOS+ATT+TD+ED	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT350	<-	glmulti	(	AVG	~	EFF+TLOS+ATT+TD+YDS+ED	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT351	<-	glmulti	(	TD	~	EFF+TLOS+ATT+YDS+ED	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT352	<-	glmulti	(	EFF	~	TLOS+ED+ATT	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT353	<-	glmulti	(	8+D%	~	EFF+TLOS+ATT	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT354	<-	glmulti	(	TLOS	~	EFF+ED+ATT	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT355	<-	glmulti	(	ATT	~	EFF+TLOS+ED	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT356	<-	glmulti	(	YDS	~	EFF+TLOS+ED+ATT	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT357	<-	glmulti	(	AVG	~	EFF+TLOS+ED+ATT	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT358	<-	glmulti	(	TD	~	EFF+TLOS+ED+ATT	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT359	<-	glmulti	(	EFF	~	ATT+YDS+TD	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT360	<-	glmulti	(	8+D%	~	ATT+YDS+TD	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT361	<-	glmulti	(	TLOS	~	ATT+YDS+TD	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT362	<-	glmulti	(	ATT	~	YDS+TD	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT363	<-	glmulti	(	YDS	~	ATT+TD	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT364	<-	glmulti	(	AVG	~	ATT+YDS+TD	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT365	<-	glmulti	(	TD	~	ATT+YDS	,	data = 	NGSR	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT366	<-	glmulti	(	Sacks	~	Sk+QBH+Assists+Tackles+FF	,	data = 	Defense_Weekly	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT367	<-	glmulti	(	Sack Yds	~	Sk+QBH+Assists+Tackles+FF	,	data = 	Defense_Weekly	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT368	<-	glmulti	(	QB Hits	~	Sk+QBH+Assists+Tackles+FF	,	data = 	Defense_Weekly	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT369	<-	glmulti	(	Tackles	~	Sk+QBH+Assists+Tackles+FF	,	data = 	Defense_Weekly	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT370	<-	glmulti	(	Assists	~	Sk+QBH+Assists+Tackles+FF	,	data = 	Defense_Weekly	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT371	<-	glmulti	(	Fumbles Forced	~	Sk+QBH+Assists+Tackles+FF	,	data = 	Defense_Weekly	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT372	<-	glmulti	(	Fumbles Recovered	~	Sk+QBH+Assists+Tackles+FF	,	data = 	Defense_Weekly	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT373	<-	glmulti	(	Rec	~	Yds+Avg+TD+FUM	,	data = 	REC_WEEKLY	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT374	<-	glmulti	(	Yds	~	Rec+Avg+TD+FUM	,	data = 	REC_WEEKLY	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT375	<-	glmulti	(	Avg	~	Rec+Yds+TD+FUM	,	data = 	REC_WEEKLY	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT376	<-	glmulti	(	TD	~	Rec+Yds+Avg+FUM	,	data = 	REC_WEEKLY	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT377	<-	glmulti	(	FUM	~	Rec+Yds+Avg+TD	,	data = 	REC_WEEKLY	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT378	<-	glmulti	(	Att	~	Yds+Avg+TD+FUM	,	data = 	Weekly_Rushing_Stats	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT379	<-	glmulti	(	Yds	~	Att+Avg+TD+FUM	,	data = 	Weekly_Rushing_Stats	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT380	<-	glmulti	(	Avg	~	Att+Yds+TD+FUM	,	data = 	Weekly_Rushing_Stats	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT381	<-	glmulti	(	TD	~	Att+Yds+Avg+FUM	,	data = 	Weekly_Rushing_Stats	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT382	<-	glmulti	(	FUM	~	Att+Yds+Avg+TD	,	data = 	Weekly_Rushing_Stats	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT383	<-	glmulti	(	TT	~	CAY+ AGG+ AYTS+ COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT384	<-	glmulti	(	CAY	~	 AGG+ AYTS+ COMP+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT385	<-	glmulti	(	IAY	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT386	<-	glmulti	(	AYD	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT387	<-	glmulti	(	AGG	~	CAY+ AYTS+ COMP+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT388	<-	glmulti	(	LCAD	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT389	<-	glmulti	(	AYTS	~	CAY+ AGG+ COMP+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT390	<-	glmulti	(	ATT	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT391	<-	glmulti	(	YDS	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT392	<-	glmulti	(	TD	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT393	<-	glmulti	(	INT	~	CAY+ AGG+ AYTS+ COMP+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT394	<-	glmulti	(	COMP	~	CAY+ AGG+ AYTS+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT395	<-	glmulti	(	TT	~	CAY+AGG+ATT+INT+COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT396	<-	glmulti	(	CAY	~	AGG+ATT+INT+COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT397	<-	glmulti	(	IAY	~	CAY+AGG+ATT+INT+COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT398	<-	glmulti	(	AYD	~	CAY+AGG+ATT+INT+COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT399	<-	glmulti	(	AGG	~	CAY+ATT+INT+COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT400	<-	glmulti	(	LCAD	~	CAY+AGG+ATT+INT+COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT401	<-	glmulti	(	AYTS	~	CAY+AGG+ATT+INT+COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT402	<-	glmulti	(	ATT	~	CAY+AGG+INT+COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT403	<-	glmulti	(	YDS	~	CAY+AGG+ATT+INT+COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT404	<-	glmulti	(	TD	~	CAY+AGG+ATT+INT+COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT405	<-	glmulti	(	INT	~	CAY+AGG+ATT+COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT406	<-	glmulti	(	COMP	~	CAY+AGG+ATT+INT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT407	<-	glmulti	(	TT	~	CAY+AGG+COMP+ATT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT408	<-	glmulti	(	CAY	~	AGG+COMP+ATT+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT409	<-	glmulti	(	IAY	~	CAY+AGG+COMP+ATT+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT410	<-	glmulti	(	AYD	~	CAY+AGG+COMP+ATT+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT411	<-	glmulti	(	AGG	~	CAY+COMP+ATT+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT412	<-	glmulti	(	LCAD	~	CAY+AGG+COMP+ATT+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT413	<-	glmulti	(	AYTS	~	CAY+AGG+COMP+ATT+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT414	<-	glmulti	(	ATT	~	CAY+AGG+COMP+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT415	<-	glmulti	(	YDS	~	CAY+AGG+COMP+ATT+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT416	<-	glmulti	(	TD	~	CAY+AGG+COMP+ATT+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT417	<-	glmulti	(	INT	~	CAY+AGG+COMP+ATT+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT418	<-	glmulti	(	COMP	~	CAY+AGG+ATT+TT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT419	<-	glmulti	(	TT	~	ATT+YDS+TD+INT+ COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT420	<-	glmulti	(	CAY	~	ATT+YDS+TD+INT+ COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT421	<-	glmulti	(	IAY	~	ATT+YDS+TD+INT+ COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT422	<-	glmulti	(	AYD	~	ATT+YDS+TD+INT+ COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT423	<-	glmulti	(	AGG	~	ATT+YDS+TD+INT+ COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT424	<-	glmulti	(	LCAD	~	ATT+YDS+TD+INT+ COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT425	<-	glmulti	(	AYTS	~	ATT+YDS+TD+INT+ COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT426	<-	glmulti	(	ATT	~	YDS+TD+INT+ COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT427	<-	glmulti	(	YDS	~	ATT+TD+INT+ COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT428	<-	glmulti	(	TD	~	ATT+YDS+INT+ COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT429	<-	glmulti	(	INT	~	ATT+YDS+TD+ COMP	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
GAMT430	<-	glmulti	(	COMP	~	ATT+YDS+TD+INT	,	data = 	NEXT_GEN_STATS_PASSING	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)


