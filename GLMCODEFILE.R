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
EKG1	<- 	glmulti(formula = TD ~ LCAD + AYTS + ATT + YDS + INT + COMP, data = WP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG2	<- 	glmulti(formula = TT ~ CAY + LCAD + ATT + `xCOMP%` + AGG + COMP, data = WP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG3	<- 	glmulti(formula = CAY ~ TT + LCAD + AYTS + ATT + YDS + `xCOMP%`, data = WP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG4	<- 	glmulti(formula = IAY ~ LCAD + AYTS + ATT + YDS + `xCOMP%` + COMP, data = WP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG5	<- 	glmulti(formula = AYD ~ TT + LCAD + AYTS + ATT + YDS + INT, data = WP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG6	<- 	glmulti(formula = AGG ~ TT + CAY + YDS + TD + `xCOMP%` + COMP,  data = WP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG7	<- 	glmulti(formula = LCAD ~ TT + CAY + YDS + TD + INT + `xCOMP%`,  data = WP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG8	<- 	glmulti(formula = AYTS ~ CAY + ATT + YDS + TD + `xCOMP%` + COMP,    data = WP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG9	<- 	glmulti(formula = ATT ~ TT + CAY + YDS + TD + INT + COMP, data = WP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG10	<- 	glmulti(formula = INT ~ AYTS + ATT + YDS + TD + AGG + COMP, data = WP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG11	<- 	glmulti(formula = COMP ~ CAY + AYTS + ATT + YDS + TD + `xCOMP%`,  data = WP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG12	<- 	glmulti(formula = YDS ~ CAY + LCAD + ATT + TD + AGG + COMP, data = WP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG13	<- 	glmulti(formula = TD ~ TT + CAY + AYTS + YDS + INT + COMP, data = NGSP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG14	<- 	glmulti(formula = TT ~ YDS + TD + INT + `xCOMP%` + AGG + COMP,  data = NGSP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG15	<- 	glmulti(formula = CAY ~ AYTS + YDS + TD + `xCOMP%` + AGG + COMP,   data = NGSP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG16	<- 	glmulti(formula = IAY ~ TT + AYTS + YDS + TD + `xCOMP%` + AGG, data = NGSP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG17	<- 	glmulti(formula = AYD ~ TT + AYTS + ATT + INT + AGG + COMP, data = NGSP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG18	<- 	glmulti(formula = AGG ~ TT + CAY + AYTS + YDS + INT + `xCOMP%`, data = NGSP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG19	<- 	glmulti(formula = LCAD ~ AYTS + YDS + TD + INT + `xCOMP%` + COMP, data = NGSP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG20	<- 	glmulti(formula = AYTS ~ CAY + LCAD + TD + `xCOMP%` + AGG + COMP, data = NGSP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG21	<- 	glmulti(formula = ATT ~ TT + CAY + LCAD + YDS + AGG + COMP, data = NGSP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG22	<- 	glmulti(formula = INT ~ TT + CAY + ATT + TD + `xCOMP%` + AGG, data = NGSP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG23	<- 	glmulti(formula = COMP ~ TT + CAY + YDS + TD + `xCOMP%` + AGG,  data = NGSP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG24	<- 	glmulti(formula = YDS ~ CAY + ATT + TD + INT + AGG + COMP, data = NGSP,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG25	<- 	glmulti(formula = Yds ~ Rec + TD + FUM, data = WRW,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG26	<- 	glmulti(formula = Avg ~ Rec + TD + FUM, data = WRW,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG27	<- 	glmulti(formula = TD ~ Rec + Yds + Avg + FUM, data = WRW,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG28	<- 	glmulti(formula = FUM ~ Rec + Yds + Avg + TD, data = WRW,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG29	<- 	glmulti(formula = Rec ~ Yds + TD + FUM, data = WRW,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG30	<- 	glmulti(formula = YDS ~ CUSH + SEP + TAY + TAR + CTCH + YACR, data = ADVWRS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG31	<- 	glmulti(formula = CUSH ~ SEP + TAY + YDS + TD + CTCH + YACR, data = ADVWRS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG32	<- 	glmulti(formula = TAY ~ CUSH + SEP + TAR + TD + CTCH + YACR, data = ADVWRS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG33	<- 	glmulti(formula = SEP ~ CUSH + TAY + YDS + TD + CTCH + YACR, data = ADVWRS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG34	<- 	glmulti(formula = TAYP ~ CUSH + SEP + TAR + TD + CTCH + YACR, data = ADVWRS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG35	<- 	glmulti(formula = REC ~ CUSH + SEP + TAY + YDS + CTCH + YACR, data = ADVWRS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG36	<- 	glmulti(formula = TAR ~ CUSH + SEP + TAY + YDS + CTCH + YACR, data = ADVWRS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG37	<- 	glmulti(formula = CTCH ~ CUSH + SEP + TAY + REC + TD + YACR, data = ADVWRS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG38	<- 	glmulti(formula = TD ~ CUSH + SEP + TAY + YDS + CTCH + YACR, data = ADVWRS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG39	<- 	glmulti(formula = YACR ~ CUSH + SEP + TAY + TAR + TD + CTCH, data = ADVWRS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG40	<- 	glmulti(formula = XYACR ~ CUSH + SEP + TAY + TAR + TD + CTCH, data = ADVWRS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG41	<- 	glmulti(formula = PglmultiUS ~ CUSH + SEP + TAY + TAR + TD + CTCH, data = ADVWRS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG42	<- 	glmulti(formula = TD ~ Att + Yds + Avg + FUM, data = RUSHW,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG43	<- 	glmulti(formula = Att ~ Yds + TD + FUM, data = RUSHW,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG44	<- 	glmulti(formula = Yds ~ Att + TD + FUM, data = RUSHW,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG45	<- 	glmulti(formula = Avg ~ Att + TD + FUM, data = RUSHW,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG46	<- 	glmulti(formula = FUM ~ Att + Yds + Avg + TD, data = RUSHW,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG47	<- 	glmulti(formula = TD ~ EFF + TLOS + YDS + ED, data = ADVRUSHS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG48	<- 	glmulti(formula = EFF ~ TLOS + YDS + AVG + TD + ED, data = ADVRUSHS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG49	<- 	glmulti(formula = TLOS ~ EFF + YDS + AVG + TD + ED, data = ADVRUSHS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG50	<- 	glmulti(formula = ED ~ EFF + TLOS + ATT + AVG + TD, data = ADVRUSHS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG51	<- 	glmulti(formula = ATT ~ EFF + TLOS + YDS + TD + ED, data = ADVRUSHS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG52	<- 	glmulti(formula = YDS ~ EFF + TLOS + ATT + TD + ED, data = ADVRUSHS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG53	<- 	glmulti(formula = AVG ~ EFF + TLOS + ATT + TD + ED, data = ADVRUSHS,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG54	<- 	glmulti(formula = Sacks ~ `QB Hits` + Tackles + Assists + `Fumbles Forced` + `Fumbles Recovered`, data = DEF_W,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG55	<- 	glmulti(formula = `Sack Yds` ~ Sacks + `QB Hits` + Tackles + Assists + `Fumbles Forced` + `Fumbles Recovered`,  data = DEF_W,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG56	<- 	glmulti(formula = `QB Hits` ~ Sacks + `Sack Yds` + Tackles +  Assists + `Fumbles Forced` + `Fumbles Recovered`, data = DEF_W,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG57	<- 	glmulti(formula = Tackles ~ Sacks + `Sack Yds` + `QB Hits` +  Assists + `Fumbles Forced` + `Fumbles Recovered`, data = DEF_W,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG58	<- 	glmulti(formula = Assists ~ Sacks + `Sack Yds` + `QB Hits` + Tackles + `Fumbles Forced` + `Fumbles Recovered`,   data = DEF_W,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG59	<- 	glmulti(formula = `Fumbles Forced` ~ Sacks + `Sack Yds` + `QB Hits` + Tackles + Assists, data = DEF_W,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG60	<- 	glmulti(formula = `Fumbles Recovered` ~ Sacks + `Sack Yds` +  `QB Hits` + Tackles + Assists + `Fumbles Forced`, data = DEF_W,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG61	<- 	glmulti(formula = Int ~ Tgt + DADOT + YAC + QBKD + TC + TM2, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG62	<- 	glmulti(formula = Tgt ~ Int + Yds + TD + DADOT + Prss + TC, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG63	<- 	glmulti(formula = Cmp ~ Yds + DADOT + YAC + Bltz + Prss + TC, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG64	<- 	glmulti(formula = Yds ~ Int + Tgt + TD + DADOT + QBKD + Prss, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG65	<- 	glmulti(formula = TD ~ Int + Yds + DADOT + YAC + Prss + TM2, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG66	<- 	glmulti(formula = DADOT ~ Int + Yds + TD + YAC + Prss + TC, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG67	<- 	glmulti(formula = Air ~ Int + Tgt + TD + DADOT + Prss + TC, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG68	<- 	glmulti(formula = YAC ~ Cmp + TD + DADOT + Bltz + Hrry + TC, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG69	<- 	glmulti(formula = Bltz ~ Int + Cmp + TD + YAC + TC + TM2, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG70	<- 	glmulti(formula = Hrry ~ Int + DADOT + YAC + Bltz + TC + TM2, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG71	<- 	glmulti(formula = QBKD ~ Yds + Bltz + Sk + Prss + TC + TM2, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG72	<- 	glmulti(formula = Sk ~ Int + DADOT + Bltz + QBKD + Prss + TM2, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG73	<- 	glmulti(formula = Prss ~ Int + DADOT + YAC + Bltz + TC + TM2, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG74	<- 	glmulti(formula = TC ~ Cmp + DADOT + YAC + Bltz + Prss + TM2, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)
EKG75	<- 	glmulti(formula = TM2 ~ Int + TD + YAC + Sk + Prss + TC, data = ADVDEF,	,level=2	,crit = "aic"	,method = "h"	,report = TRUE	,intercept = TRUE	)

