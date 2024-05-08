
  
library(readxl)
WEEKLY_TEAM_PERFORMANCE <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/WEEKLY TEAM PERFORMANCE.xlsx")


WEEKLY_TEAM_PERFORMANCE[4:33] <- lapply(WEEKLY_TEAM_PERFORMANCE[4:33], as.numeric)

WEEKLY_TEAM_PERFORMANCE$TO[is.na(WEEKLY_TEAM_PERFORMANCE$TO)] = 0

WEEKLY_TEAM_PERFORMANCE$DTO[is.na(WEEKLY_TEAM_PERFORMANCE$DTO)] = 0



WEEKLY_TEAM_PERFORMANCE<- na.omit(WEEKLY_TEAM_PERFORMANCE)









# general models 

NRE1	<-	glm(	outcome	~. -TEAMS -OPPS-Team -Opp	, family = binomial  , data = 	WEEKLY_TEAM_PERFORMANCE,	control = list(maxit = 1000))

NRE2	<-	lm(	TEAMS	~. -OPPS-outcome	-Team -Opp, data = 	WEEKLY_TEAM_PERFORMANCE	)


NRE2B	<-	lm(	TEAMS	~. -OPPS-outcome -TD -RUSHTD-Team -Opp	, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE3	<-	lm(	OPPS	~.-outcome -TEAMS-Team -Opp	, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE3B	<-	lm(	OPPS	~.-outcome -TEAMS -TD -RUSHTD-Team -Opp	, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE4	<-	lm(	FD	~. -DFD - EFF - AYTS-outcome -TEAMS -OPPS	-Team -Opp, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE5	<-	lm(	PY	~. -DPY -outcome -TEAMS -OPPS-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)


NRE6	<-	lm(	RY	~.-outcome -TEAMS -OPPS-EFF-AVG-DRY-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)


NRE7	<-	lm(	TO	~.-outcome -TEAMS -OPPS-DTO-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)


NRE8	<-	lm(	DFD	~.-outcome -TEAMS -OPPS -FD-Team -Opp	, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE9	<-	lm(	DPY	~.-outcome -TEAMS -OPPS -PY-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)
NRE10	<-	lm(	DRY	~.-outcome -TEAMS -OPPS-RY-Team -Opp	, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE11	<-	lm(	DTO	~.-outcome -TEAMS -OPPS-TO-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE12	<-	lm(	TT	~.-outcome -TEAMS -OPPS -TLOS-EFF-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE13	<-	lm(	CAY	~.-outcome -TEAMS -OPPS -PY -YACR-TAY-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)


NRE14	<-	lm(	AGG	~.-outcome -TEAMS -OPPS-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE15	<-	lm(	LCAD	~.-outcome -TEAMS -OPPS -PY-Team -Opp 		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE16	<-	lm(	AYTS	~.-outcome -TEAMS -OPPS - CAY -Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)
NRE17	<-	lm(	ATT	~.-outcome -TEAMS -OPPS-PY-CAY-Team -Opp	, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE18	<-	lm(	TD	~.-outcome -TEAMS -OPPS-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE19	<-	lm(	INT	~.-outcome -TEAMS -OPPS -DTO - TO		-Team -Opp, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE20	<-	lm(	COMP	~.-outcome -TEAMS -OPPS -CTCH - PY-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE21	<-	lm(	RUSHATT	~.-outcome -TEAMS -OPPS -EFF - RY -AVG-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE22	<-	lm(	RUSHTD	~.-outcome -TEAMS -OPPS-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE23	<-	lm(	EFF	~.-outcome -TEAMS -OPPS-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE24	<-	lm(	EM	~.-outcome -TEAMS -OPPS-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE25	<-	lm(	TLOS	~.-outcome -TEAMS -OPPS -TT-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE26	<-	lm(	AVG	~.-outcome -TEAMS -OPPS-PY-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE27	<-	lm(	CUSH	~.-outcome -TEAMS -OPPS-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE28	<-	lm(	SEP	~.-outcome -TEAMS -OPPS-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE29	<-	lm(	TAY	~.-outcome -TEAMS -OPPS -CAY -AYTS-Team -Opp	, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE30	<-	lm(	CTCH	~.-outcome -TEAMS -OPPS -COMP-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)

NRE31	<-	lm(	YACR	~.-outcome -TEAMS -OPPS- PY-Team -Opp		, data = 	WEEKLY_TEAM_PERFORMANCE	)





library(pedometrics)
#stepvif


VFNL1	<-	stepVIF(	NRE1	, threshold = 5)
VFNL2	<-	stepVIF(	NRE2	, threshold = 5)
VFNL2B	<-	stepVIF(	NRE2B	, threshold = 5)
VFNL3	<-	stepVIF(	NRE3	, threshold = 5)
VFNL3B	<-	stepVIF(	NRE3B	, threshold = 5)
VFNL4	<-	stepVIF(	NRE4	, threshold = 5)
VFNL5	<-	stepVIF(	NRE5	, threshold = 5)
VFNL6	<-	stepVIF(	NRE6	, threshold = 5)
VFNL7	<-	stepVIF(	NRE7	, threshold = 5)
VFNL8	<-	stepVIF(	NRE8	, threshold = 5)
VFNL9	<-	stepVIF(	NRE9	, threshold = 5)
VFNL10	<-	stepVIF(	NRE10	, threshold = 5)
VFNL11	<-	stepVIF(	NRE11	, threshold = 5)
VFNL12	<-	stepVIF(	NRE12	, threshold = 5)
VFNL13	<-	stepVIF(	NRE13	, threshold = 5)
VFNL14	<-	stepVIF(	NRE14	, threshold = 5)
VFNL15	<-	stepVIF(	NRE15	, threshold = 5)
VFNL16	<-	stepVIF(	NRE16	, threshold = 5)
VFNL17	<-	stepVIF(	NRE17	, threshold = 5)
VFNL18	<-	stepVIF(	NRE18	, threshold = 5)
VFNL19	<-	stepVIF(	NRE19	, threshold = 5)
VFNL20	<-	stepVIF(	NRE20	, threshold = 5)
VFNL21	<-	stepVIF(	NRE21	, threshold = 5)
VFNL22	<-	stepVIF(	NRE22	, threshold = 5)
VFNL23	<-	stepVIF(	NRE23	, threshold = 5)
VFNL24	<-	stepVIF(	NRE24	, threshold = 5)
VFNL25	<-	stepVIF(	NRE25	, threshold = 5)
VFNL26	<-	stepVIF(	NRE26	, threshold = 5)
VFNL27	<-	stepVIF(	NRE27	, threshold = 5)
VFNL28	<-	stepVIF(	NRE28	, threshold = 5)
VFNL29	<-	stepVIF(	NRE29	, threshold = 5)
VFNL30	<-	stepVIF(	NRE30	, threshold = 5)
VFNL31	<-	stepVIF(	NRE31	, threshold = 5)





# creating normalized models
library(dplyr)

WTP <- WEEKLY_TEAM_PERFORMANCE %>% mutate_at(c(4:34), ~(scale(.) %>% as.vector))

scaleList_WTP <- list(scale = attr(WTP, "scaled:scale"),
                      center = attr(WTP, "scaled:center"))

WTP <- as.data.frame(WTP)

lapply(WTP,class)



# HRG MODELS

HRG1	<-	lm(	outcome	~.	, data = 	WTP	)
HRG2	<-	lm(	TEAMS	~.	, data = 	WTP	)
HRG3	<-	lm(	OPPS	~.	, data = 	WTP	)
HRG4	<-	lm(	FD	~.	, data = 	WTP	)
HRG5	<-	lm(	PY	~.	, data = 	WTP	)
HRG6	<-	lm(	RY	~.	, data = 	WTP	)
HRG7	<-	lm(	TO	~.	, data = 	WTP	)
HRG8	<-	lm(	DFD	~.	, data = 	WTP	)
HRG9	<-	lm(	DPY	~.	, data = 	WTP	)
HRG10	<-	lm(	DRY	~.	, data = 	WTP	)
HRG11	<-	lm(	DTO	~.	, data = 	WTP	)
HRG12	<-	lm(	TT	~.	, data = 	WTP	)
HRG13	<-	lm(	CAY	~.	, data = 	WTP	)
HRG14	<-	lm(	AGG	~.	, data = 	WTP	)
HRG15	<-	lm(	LCAD	~.	, data = 	WTP	)
HRG16	<-	lm(	AYTS	~.	, data = 	WTP	)
HRG17	<-	lm(	ATT	~.	, data = 	WTP	)
HRG18	<-	lm(	TD	~.	, data = 	WTP	)
HRG19	<-	lm(	INT	~.	, data = 	WTP	)
HRG20	<-	lm(	COMP	~.	, data = 	WTP	)
HRG21	<-	lm(	RUSHATT	~.	, data = 	WTP	)
HRG22	<-	lm(	RUSHTD	~.	, data = 	WTP	)
HRG23	<-	lm(	EFF	~.	, data = 	WTP	)
HRG24	<-	lm(	EM	~.	, data = 	WTP	)
HRG25	<-	lm(	TLOS	~.	, data = 	WTP	)
HRG26	<-	lm(	AVG	~.	, data = 	WTP	)
HRG27	<-	lm(	CUSH	~.	, data = 	WTP	)
HRG28	<-	lm(	SEP	~.	, data = 	WTP	)
HRG29	<-	lm(	TAY	~.	, data = 	WTP	)
HRG30	<-	lm(	CTCH	~.	, data = 	WTP	)
HRG31	<-	lm(	YACR	~.	, data = 	WTP	)




RFA1	<-	stepVIF(	HRG1	,threshold=5)
RFA2	<-	stepVIF(	HRG2	,threshold=5)
RFA3	<-	stepVIF(	HRG3	,threshold=5)
RFA4	<-	stepVIF(	HRG4	,threshold=5)
RFA5	<-	stepVIF(	HRG5	,threshold=5)
RFA6	<-	stepVIF(	HRG6	,threshold=5)
RFA7	<-	stepVIF(	HRG7	,threshold=5)
RFA8	<-	stepVIF(	HRG8	,threshold=5)
RFA9	<-	stepVIF(	HRG9	,threshold=5)
RFA10	<-	stepVIF(	HRG10	,threshold=5)
RFA11	<-	stepVIF(	HRG11	,threshold=5)
RFA12	<-	stepVIF(	HRG12	,threshold=5)
RFA13	<-	stepVIF(	HRG13	,threshold=5)
RFA14	<-	stepVIF(	HRG14	,threshold=5)
RFA15	<-	stepVIF(	HRG15	,threshold=5)
RFA16	<-	stepVIF(	HRG16	,threshold=5)
RFA17	<-	stepVIF(	HRG17	,threshold=5)
RFA18	<-	stepVIF(	HRG18	,threshold=5)
RFA19	<-	stepVIF(	HRG19	,threshold=5)
RFA20	<-	stepVIF(	HRG20	,threshold=5)
RFA21	<-	stepVIF(	HRG21	,threshold=5)
RFA22	<-	stepVIF(	HRG22	,threshold=5)
RFA23	<-	stepVIF(	HRG23	,threshold=5)
RFA24	<-	stepVIF(	HRG24	,threshold=5)
RFA25	<-	stepVIF(	HRG25	,threshold=5)
RFA26	<-	stepVIF(	HRG26	,threshold=5)
RFA27	<-	stepVIF(	HRG27	,threshold=5)
RFA28	<-	stepVIF(	HRG28	,threshold=5)
RFA29	<-	stepVIF(	HRG29	,threshold=5)
RFA30	<-	stepVIF(	HRG30	,threshold=5)
RFA31	<-	stepVIF(	HRG31	,threshold=5)





# stepwise forward baseline model
ST_BM_NRE1<-step(NRE1,direction="both")
ST_BM_NRE2<-step(NRE2,direction="both")
ST_BM_NRE2B<-step(NRE2B,direction="both")
ST_BM_NRE3<-step(NRE3,direction="both")
ST_BM_NRE3B<-step(NRE3B,direction="both")
ST_BM_NRE4<-step(NRE4,direction="both")
ST_BM_NRE5<-step(NRE5,direction="both")
ST_BM_NRE6<-step(NRE6,direction="both")
ST_BM_NRE7<-step(NRE7,direction="both")
ST_BM_NRE8<-step(NRE8,direction="both")
ST_BM_NRE9<-step(NRE9,direction="both")
ST_BM_NRE10<-step(NRE10,direction="both")
ST_BM_NRE11<-step(NRE11,direction="both")
ST_BM_NRE12<-step(NRE12,direction="both")
ST_BM_NRE13<-step(NRE13,direction="both")
ST_BM_NRE14<-step(NRE14,direction="both")
ST_BM_NRE15<-step(NRE15,direction="both")
ST_BM_NRE16<-step(NRE16,direction="both")
ST_BM_NRE17<-step(NRE17,direction="both")
ST_BM_NRE18<-step(NRE18,direction="both")
ST_BM_NRE19<-step(NRE19,direction="both")
ST_BM_NRE20<-step(NRE20,direction="both")
ST_BM_NRE21<-step(NRE21,direction="both")
ST_BM_NRE22<-step(NRE22,direction="both")
ST_BM_NRE23<-step(NRE23,direction="both")
ST_BM_NRE24<-step(NRE24,direction="both")
ST_BM_NRE25<-step(NRE25,direction="both")
ST_BM_NRE26<-step(NRE26,direction="both")
ST_BM_NRE27<-step(NRE27,direction="both")
ST_BM_NRE28<-step(NRE28,direction="both")
ST_BM_NRE29<-step(NRE29,direction="both")
ST_BM_NRE30<-step(NRE30,direction="both")
ST_BM_NRE31<-step(NRE31,direction="both")






ST_BM_HRG1<-step(HRG1,direction="both")
ST_BM_HRG2<-step(HRG2,direction="both")
ST_BM_HRG3<-step(HRG3,direction="both")
ST_BM_HRG4<-step(HRG4,direction="both")
ST_BM_HRG5<-step(HRG5,direction="both")
ST_BM_HRG6<-step(HRG6,direction="both")
ST_BM_HRG7<-step(HRG7,direction="both")
ST_BM_HRG8<-step(HRG8,direction="both")
ST_BM_HRG9<-step(HRG9,direction="both")
ST_BM_HRG10<-step(HRG10,direction="both")
ST_BM_HRG11<-step(HRG11,direction="both")
ST_BM_HRG12<-step(HRG12,direction="both")
ST_BM_HRG13<-step(HRG13,direction="both")
ST_BM_HRG14<-step(HRG14,direction="both")
ST_BM_HRG15<-step(HRG15,direction="both")
ST_BM_HRG16<-step(HRG16,direction="both")
ST_BM_HRG17<-step(HRG17,direction="both")
ST_BM_HRG18<-step(HRG18,direction="both")
ST_BM_HRG19<-step(HRG19,direction="both")
ST_BM_HRG20<-step(HRG20,direction="both")
ST_BM_HRG21<-step(HRG21,direction="both")
ST_BM_HRG22<-step(HRG22,direction="both")
ST_BM_HRG23<-step(HRG23,direction="both")
ST_BM_HRG24<-step(HRG24,direction="both")
ST_BM_HRG25<-step(HRG25,direction="both")
ST_BM_HRG26<-step(HRG26,direction="both")
ST_BM_HRG27<-step(HRG27,direction="both")
ST_BM_HRG28<-step(HRG28,direction="both")
ST_BM_HRG29<-step(HRG29,direction="both")
ST_BM_HRG30<-step(HRG30,direction="both")
ST_BM_HRG31<-step(HRG31,direction="both")





# first reg subsets
library(leaps)
RGS4<-regsubsets(FD~PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS5<-regsubsets(PY~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS6<-regsubsets(RY~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS7<-regsubsets(TO~FD+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS8<-regsubsets(DFD~FD+TO+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS9<-regsubsets(DPY~FD+TO+DFD+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS10<-regsubsets(DRY~FD+TO+DFD+DPY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS11<-regsubsets(DTO~FD+PY+TO+DFD+DPY+DRY+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS12<-regsubsets(TT~FD+PY+TO+DFD+DPY+DRY+DTO+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS13<-regsubsets(CAY~FD+PY+TO+DFD+DPY+DRY+DTO+TT+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS14<-regsubsets(AGG~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS15<-regsubsets(LCAD~PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS16<-regsubsets(AYTS~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS17<-regsubsets(ATT~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS18<-regsubsets(TD~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS19<-regsubsets(INT~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS20<-regsubsets(COMP~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS21<-regsubsets(RUSHATT~FD+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS22<-regsubsets(RUSHTD~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS23<-regsubsets(EFF~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS24<-regsubsets(EM~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS25<-regsubsets(TLOS~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS26<-regsubsets(AVG~PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS27<-regsubsets(CUSH~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+SEP+TAY+CTCH+YACR,data=WTP)
RGS28<-regsubsets(SEP~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+TAY+CTCH+YACR,data=WTP)
RGS29<-regsubsets(TAY~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+CTCH+YACR,data=WTP)
RGS30<-regsubsets(CTCH~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+YACR,data=WTP)
RGS31<-regsubsets(YACR~PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH,data=WTP)
RGS32<-regsubsets(outcome~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS33<-regsubsets(TEAMS~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS34<-regsubsets(OPPS~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS35<-regsubsets(FD~PY+RY+TO+DPY+DRY+DTO+TT+CAY+AGG+LCAD+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS36<-regsubsets(PY~FD+RY+TO+DFD+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS37<-regsubsets(RY~FD+PY+TO+DFD+DPY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EM+TLOS+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS38<-regsubsets(TO~FD+PY+RY+DFD+DPY+DRY+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS39<-regsubsets(DFD~PY+RY+TO+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS40<-regsubsets(DPY~FD+RY+TO+DFD+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS41<-regsubsets(DRY~FD+PY+TO+DFD+DPY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS42<-regsubsets(DTO~FD+PY+RY+DFD+DPY+DRY+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS43<-regsubsets(TT~FD+PY+RY+TO+DFD+DPY+DRY+DTO+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EM+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS44<-regsubsets(CAY~FD+RY+TO+DFD+DPY+DRY+DTO+TT+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+CTCH,data=WEEKLY_TEAM_PERFORMANCE)
RGS45<-regsubsets(AGG~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS46<-regsubsets(LCAD~FD+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS47<-regsubsets(AYTS~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+AGG+LCAD+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS48<-regsubsets(ATT~FD+RY+TO+DFD+DPY+DRY+DTO+TT+AGG+LCAD+AYTS+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS49<-regsubsets(TD~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS50<-regsubsets(INT~FD+PY+RY+DFD+DPY+DRY+TT+CAY+AGG+LCAD+AYTS+ATT+TD+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS51<-regsubsets(COMP~FD+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS52<-regsubsets(RUSHATT~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHTD+EM+TLOS+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS53<-regsubsets(RUSHTD~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS54<-regsubsets(EFF~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS55<-regsubsets(EM~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS56<-regsubsets(TLOS~FD+PY+RY+TO+DFD+DPY+DRY+DTO+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS57<-regsubsets(AVG~FD+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS58<-regsubsets(CUSH~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS59<-regsubsets(SEP~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS60<-regsubsets(TAY~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+AGG+LCAD+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS61<-regsubsets(CTCH~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+YACR,data=WEEKLY_TEAM_PERFORMANCE)
RGS62<-regsubsets(YACR~FD+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH,data=WEEKLY_TEAM_PERFORMANCE)


#second reg subsets
ARGS4<-regsubsets(FD~PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS5<-regsubsets(PY~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS6<-regsubsets(RY~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS7<-regsubsets(TO~FD+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS8<-regsubsets(DFD~FD+TO+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS9<-regsubsets(DPY~FD+TO+DFD+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS10<-regsubsets(DRY~FD+TO+DFD+DPY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS11<-regsubsets(DTO~FD+PY+TO+DFD+DPY+DRY+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS12<-regsubsets(TT~FD+PY+TO+DFD+DPY+DRY+DTO+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS13<-regsubsets(CAY~FD+PY+TO+DFD+DPY+DRY+DTO+TT+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS14<-regsubsets(AGG~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS15<-regsubsets(LCAD~PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS16<-regsubsets(AYTS~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS17<-regsubsets(ATT~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS18<-regsubsets(TD~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS19<-regsubsets(INT~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS20<-regsubsets(COMP~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS21<-regsubsets(RUSHATT~FD+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS22<-regsubsets(RUSHTD~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS23<-regsubsets(EFF~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS24<-regsubsets(EM~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS25<-regsubsets(TLOS~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS26<-regsubsets(AVG~PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS27<-regsubsets(CUSH~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+SEP+TAY+CTCH+YACR,data=WTP)
ARGS28<-regsubsets(SEP~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+TAY+CTCH+YACR,data=WTP)
ARGS29<-regsubsets(TAY~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+CTCH+YACR,data=WTP)
ARGS30<-regsubsets(CTCH~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+YACR,data=WTP)
ARGS31<-regsubsets(YACR~PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH,data=WTP)
ARGS32<-regsubsets(outcome~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS33<-regsubsets(TEAMS~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS34<-regsubsets(OPPS~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS35<-regsubsets(FD~PY+RY+TO+DPY+DRY+DTO+TT+CAY+AGG+LCAD+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS36<-regsubsets(PY~FD+RY+TO+DFD+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS37<-regsubsets(RY~FD+PY+TO+DFD+DPY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EM+TLOS+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS38<-regsubsets(TO~FD+PY+RY+DFD+DPY+DRY+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS39<-regsubsets(DFD~PY+RY+TO+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS40<-regsubsets(DPY~FD+RY+TO+DFD+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS41<-regsubsets(DRY~FD+PY+TO+DFD+DPY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS42<-regsubsets(DTO~FD+PY+RY+DFD+DPY+DRY+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS43<-regsubsets(TT~FD+PY+RY+TO+DFD+DPY+DRY+DTO+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EM+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS44<-regsubsets(CAY~FD+RY+TO+DFD+DPY+DRY+DTO+TT+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+CTCH,data=WEEKLY_TEAM_PERFORMANCE)
ARGS45<-regsubsets(AGG~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS46<-regsubsets(LCAD~FD+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS47<-regsubsets(AYTS~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+AGG+LCAD+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS48<-regsubsets(ATT~FD+RY+TO+DFD+DPY+DRY+DTO+TT+AGG+LCAD+AYTS+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS49<-regsubsets(TD~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS50<-regsubsets(INT~FD+PY+RY+DFD+DPY+DRY+TT+CAY+AGG+LCAD+AYTS+ATT+TD+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS51<-regsubsets(COMP~FD+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS52<-regsubsets(RUSHATT~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHTD+EM+TLOS+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS53<-regsubsets(RUSHTD~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS54<-regsubsets(EFF~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS55<-regsubsets(EM~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS56<-regsubsets(TLOS~FD+PY+RY+TO+DFD+DPY+DRY+DTO+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS57<-regsubsets(AVG~FD+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+CUSH+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS58<-regsubsets(CUSH~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+SEP+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS59<-regsubsets(SEP~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS60<-regsubsets(TAY~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+AGG+LCAD+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS61<-regsubsets(CTCH~FD+PY+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+YACR,data=WEEKLY_TEAM_PERFORMANCE)
ARGS62<-regsubsets(YACR~FD+RY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH,data=WEEKLY_TEAM_PERFORMANCE)


RGS2<-regsubsets(TEAMS~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS3<-regsubsets(OPPS~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS1<-regsubsets(outcome~FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS2<-regsubsets(TEAMS~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
ARGS3<-regsubsets(OPPS~FD+PY+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP)
RGS1<-regsubsets(outcome~Opp+FD+TO+DFD+DPY+DRY+DTO+TT+CAY+AGG+LCAD+AYTS+ATT+TD+INT+COMP+Week+RUSHATT+RUSHTD+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR,data=WTP,really.big = T)




y1	<-	order(summary(	RGS1	)$adjr2,decreasing=T)[1]
y2	<-	order(summary(	RGS2	)$adjr2,decreasing=T)[1]
y3	<-	order(summary(	RGS3	)$adjr2,decreasing=T)[1]
y4	<-	order(summary(	RGS4	)$adjr2,decreasing=T)[1]
y5	<-	order(summary(	RGS5	)$adjr2,decreasing=T)[1]
y6	<-	order(summary(	RGS6	)$adjr2,decreasing=T)[1]
y7	<-	order(summary(	RGS7	)$adjr2,decreasing=T)[1]
y8	<-	order(summary(	RGS8	)$adjr2,decreasing=T)[1]
y9	<-	order(summary(	RGS9	)$adjr2,decreasing=T)[1]
y10	<-	order(summary(	RGS10	)$adjr2,decreasing=T)[1]
y11	<-	order(summary(	RGS11	)$adjr2,decreasing=T)[1]
y12	<-	order(summary(	RGS12	)$adjr2,decreasing=T)[1]
y13	<-	order(summary(	RGS13	)$adjr2,decreasing=T)[1]
y14	<-	order(summary(	RGS14	)$adjr2,decreasing=T)[1]
y15	<-	order(summary(	RGS15	)$adjr2,decreasing=T)[1]
y16	<-	order(summary(	RGS16	)$adjr2,decreasing=T)[1]
y17	<-	order(summary(	RGS17	)$adjr2,decreasing=T)[1]
y18	<-	order(summary(	RGS18	)$adjr2,decreasing=T)[1]
y19	<-	order(summary(	RGS19	)$adjr2,decreasing=T)[1]
y20	<-	order(summary(	RGS20	)$adjr2,decreasing=T)[1]
y21	<-	order(summary(	RGS21	)$adjr2,decreasing=T)[1]
y22	<-	order(summary(	RGS22	)$adjr2,decreasing=T)[1]
y23	<-	order(summary(	RGS23	)$adjr2,decreasing=T)[1]
y24	<-	order(summary(	RGS24	)$adjr2,decreasing=T)[1]
y25	<-	order(summary(	RGS25	)$adjr2,decreasing=T)[1]
y26	<-	order(summary(	RGS26	)$adjr2,decreasing=T)[1]
y27	<-	order(summary(	RGS27	)$adjr2,decreasing=T)[1]
y28	<-	order(summary(	RGS28	)$adjr2,decreasing=T)[1]
y29	<-	order(summary(	RGS29	)$adjr2,decreasing=T)[1]
y30	<-	order(summary(	RGS30	)$adjr2,decreasing=T)[1]
y31	<-	order(summary(	RGS31	)$adjr2,decreasing=T)[1]
y32	<-	order(summary(	RGS32	)$adjr2,decreasing=T)[1]
y33	<-	order(summary(	RGS33	)$adjr2,decreasing=T)[1]
y34	<-	order(summary(	RGS34	)$adjr2,decreasing=T)[1]
y35	<-	order(summary(	RGS35	)$adjr2,decreasing=T)[1]
y36	<-	order(summary(	RGS36	)$adjr2,decreasing=T)[1]
y37	<-	order(summary(	RGS37	)$adjr2,decreasing=T)[1]
y38	<-	order(summary(	RGS38	)$adjr2,decreasing=T)[1]
y39	<-	order(summary(	RGS39	)$adjr2,decreasing=T)[1]
y40	<-	order(summary(	RGS40	)$adjr2,decreasing=T)[1]
y41	<-	order(summary(	RGS41	)$adjr2,decreasing=T)[1]
y42	<-	order(summary(	RGS42	)$adjr2,decreasing=T)[1]
y43	<-	order(summary(	RGS43	)$adjr2,decreasing=T)[1]
y44	<-	order(summary(	RGS44	)$adjr2,decreasing=T)[1]
y45	<-	order(summary(	RGS45	)$adjr2,decreasing=T)[1]
y46	<-	order(summary(	RGS46	)$adjr2,decreasing=T)[1]
y47	<-	order(summary(	RGS47	)$adjr2,decreasing=T)[1]
y48	<-	order(summary(	RGS48	)$adjr2,decreasing=T)[1]
y49	<-	order(summary(	RGS49	)$adjr2,decreasing=T)[1]
y50	<-	order(summary(	RGS50	)$adjr2,decreasing=T)[1]
y51	<-	order(summary(	RGS51	)$adjr2,decreasing=T)[1]
y52	<-	order(summary(	RGS52	)$adjr2,decreasing=T)[1]
y53	<-	order(summary(	RGS53	)$adjr2,decreasing=T)[1]
y54	<-	order(summary(	RGS54	)$adjr2,decreasing=T)[1]
y55	<-	order(summary(	RGS55	)$adjr2,decreasing=T)[1]
y56	<-	order(summary(	RGS56	)$adjr2,decreasing=T)[1]
y57	<-	order(summary(	RGS57	)$adjr2,decreasing=T)[1]
y58	<-	order(summary(	RGS58	)$adjr2,decreasing=T)[1]
y59	<-	order(summary(	RGS59	)$adjr2,decreasing=T)[1]
y60	<-	order(summary(	RGS60	)$adjr2,decreasing=T)[1]
y61	<-	order(summary(	RGS61	)$adjr2,decreasing=T)[1]
y62	<-	order(summary(	RGS62	)$adjr2,decreasing=T)[1]


z1	<-	order(summary(	ARGS1	)$adjr2,decreasing=T)[1]
z2	<-	order(summary(	ARGS2	)$adjr2,decreasing=T)[1]
z3	<-	order(summary(	ARGS3	)$adjr2,decreasing=T)[1]
z4	<-	order(summary(	ARGS4	)$adjr2,decreasing=T)[1]
z5	<-	order(summary(	ARGS5	)$adjr2,decreasing=T)[1]
z6	<-	order(summary(	ARGS6	)$adjr2,decreasing=T)[1]
z7	<-	order(summary(	ARGS7	)$adjr2,decreasing=T)[1]
z8	<-	order(summary(	ARGS8	)$adjr2,decreasing=T)[1]
z9	<-	order(summary(	ARGS9	)$adjr2,decreasing=T)[1]
z10	<-	order(summary(	ARGS10	)$adjr2,decreasing=T)[1]
z11	<-	order(summary(	ARGS11	)$adjr2,decreasing=T)[1]
z12	<-	order(summary(	ARGS12	)$adjr2,decreasing=T)[1]
z13	<-	order(summary(	ARGS13	)$adjr2,decreasing=T)[1]
z14	<-	order(summary(	ARGS14	)$adjr2,decreasing=T)[1]
z15	<-	order(summary(	ARGS15	)$adjr2,decreasing=T)[1]
z16	<-	order(summary(	ARGS16	)$adjr2,decreasing=T)[1]
z17	<-	order(summary(	ARGS17	)$adjr2,decreasing=T)[1]
z18	<-	order(summary(	ARGS18	)$adjr2,decreasing=T)[1]
z19	<-	order(summary(	ARGS19	)$adjr2,decreasing=T)[1]
z20	<-	order(summary(	ARGS20	)$adjr2,decreasing=T)[1]
z21	<-	order(summary(	ARGS21	)$adjr2,decreasing=T)[1]
z22	<-	order(summary(	ARGS22	)$adjr2,decreasing=T)[1]
z23	<-	order(summary(	ARGS23	)$adjr2,decreasing=T)[1]
z24	<-	order(summary(	ARGS24	)$adjr2,decreasing=T)[1]
z25	<-	order(summary(	ARGS25	)$adjr2,decreasing=T)[1]
z26	<-	order(summary(	ARGS26	)$adjr2,decreasing=T)[1]
z27	<-	order(summary(	ARGS27	)$adjr2,decreasing=T)[1]
z28	<-	order(summary(	ARGS28	)$adjr2,decreasing=T)[1]
z29	<-	order(summary(	ARGS29	)$adjr2,decreasing=T)[1]
z30	<-	order(summary(	ARGS30	)$adjr2,decreasing=T)[1]
z31	<-	order(summary(	ARGS31	)$adjr2,decreasing=T)[1]
z32	<-	order(summary(	ARGS32	)$adjr2,decreasing=T)[1]
z33	<-	order(summary(	ARGS33	)$adjr2,decreasing=T)[1]
z34	<-	order(summary(	ARGS34	)$adjr2,decreasing=T)[1]
z35	<-	order(summary(	ARGS35	)$adjr2,decreasing=T)[1]
z36	<-	order(summary(	ARGS36	)$adjr2,decreasing=T)[1]
z37	<-	order(summary(	ARGS37	)$adjr2,decreasing=T)[1]
z38	<-	order(summary(	ARGS38	)$adjr2,decreasing=T)[1]
z39	<-	order(summary(	ARGS39	)$adjr2,decreasing=T)[1]
z40	<-	order(summary(	ARGS40	)$adjr2,decreasing=T)[1]
z41	<-	order(summary(	ARGS41	)$adjr2,decreasing=T)[1]
z42	<-	order(summary(	ARGS42	)$adjr2,decreasing=T)[1]
z43	<-	order(summary(	ARGS43	)$adjr2,decreasing=T)[1]
z44	<-	order(summary(	ARGS44	)$adjr2,decreasing=T)[1]
z45	<-	order(summary(	ARGS45	)$adjr2,decreasing=T)[1]
z46	<-	order(summary(	ARGS46	)$adjr2,decreasing=T)[1]
z47	<-	order(summary(	ARGS47	)$adjr2,decreasing=T)[1]
z48	<-	order(summary(	ARGS48	)$adjr2,decreasing=T)[1]
z49	<-	order(summary(	ARGS49	)$adjr2,decreasing=T)[1]
z50	<-	order(summary(	ARGS50	)$adjr2,decreasing=T)[1]
z51	<-	order(summary(	ARGS51	)$adjr2,decreasing=T)[1]
z52	<-	order(summary(	ARGS52	)$adjr2,decreasing=T)[1]
z53	<-	order(summary(	ARGS53	)$adjr2,decreasing=T)[1]
z54	<-	order(summary(	ARGS54	)$adjr2,decreasing=T)[1]
z55	<-	order(summary(	ARGS55	)$adjr2,decreasing=T)[1]
z56	<-	order(summary(	ARGS56	)$adjr2,decreasing=T)[1]
z57	<-	order(summary(	ARGS57	)$adjr2,decreasing=T)[1]
z58	<-	order(summary(	ARGS58	)$adjr2,decreasing=T)[1]
z59	<-	order(summary(	ARGS59	)$adjr2,decreasing=T)[1]
z60	<-	order(summary(	ARGS60	)$adjr2,decreasing=T)[1]
z61	<-	order(summary(	ARGS61	)$adjr2,decreasing=T)[1]
z62	<-	order(summary(	ARGS62	)$adjr2,decreasing=T)[1]



#lm regsubsets
library(HH)

LRS1	<-	lm.regsubsets(	RGS1	,	y1	)
LRS2	<-	lm.regsubsets(	RGS2	,	y2	)
LRS3	<-	lm.regsubsets(	RGS3	,	y3	)
LRS4	<-	lm.regsubsets(	RGS4	,	y4	)
LRS5	<-	lm.regsubsets(	RGS5	,	y5	)
LRS6	<-	lm.regsubsets(	RGS6	,	y6	)
LRS7	<-	lm.regsubsets(	RGS7	,	y7	)
LRS8	<-	lm.regsubsets(	RGS8	,	y8	)
LRS9	<-	lm.regsubsets(	RGS9	,	y9	)
LRS10	<-	lm.regsubsets(	RGS10	,	y10	)
LRS11	<-	lm.regsubsets(	RGS11	,	y11	)
LRS12	<-	lm.regsubsets(	RGS12	,	y12	)
LRS13	<-	lm.regsubsets(	RGS13	,	y13	)
LRS14	<-	lm.regsubsets(	RGS14	,	y14	)
LRS15	<-	lm.regsubsets(	RGS15	,	y15	)
LRS16	<-	lm.regsubsets(	RGS16	,	y16	)
LRS17	<-	lm.regsubsets(	RGS17	,	y17	)
LRS18	<-	lm.regsubsets(	RGS18	,	y18	)
LRS19	<-	lm.regsubsets(	RGS19	,	y19	)
LRS20	<-	lm.regsubsets(	RGS20	,	y20	)
LRS21	<-	lm.regsubsets(	RGS21	,	y21	)
LRS22	<-	lm.regsubsets(	RGS22	,	y22	)
LRS23	<-	lm.regsubsets(	RGS23	,	y23	)
LRS24	<-	lm.regsubsets(	RGS24	,	y24	)
LRS25	<-	lm.regsubsets(	RGS25	,	y25	)
LRS26	<-	lm.regsubsets(	RGS26	,	y26	)
LRS27	<-	lm.regsubsets(	RGS27	,	y27	)
LRS28	<-	lm.regsubsets(	RGS28	,	y28	)
LRS29	<-	lm.regsubsets(	RGS29	,	y29	)
LRS30	<-	lm.regsubsets(	RGS30	,	y30	)
LRS31	<-	lm.regsubsets(	RGS31	,	y31	)
LRS32	<-	lm.regsubsets(	RGS32	,	y32	)
LRS33	<-	lm.regsubsets(	RGS33	,	y33	)
LRS34	<-	lm.regsubsets(	RGS34	,	y34	)
LRS35	<-	lm.regsubsets(	RGS35	,	y35	)
LRS36	<-	lm.regsubsets(	RGS36	,	y36	)
LRS37	<-	lm.regsubsets(	RGS37	,	y37	)
LRS38	<-	lm.regsubsets(	RGS38	,	y38	)
LRS39	<-	lm.regsubsets(	RGS39	,	y39	)
LRS40	<-	lm.regsubsets(	RGS40	,	y40	)
LRS41	<-	lm.regsubsets(	RGS41	,	y41	)
LRS42	<-	lm.regsubsets(	RGS42	,	y42	)
LRS43	<-	lm.regsubsets(	RGS43	,	y43	)
LRS44	<-	lm.regsubsets(	RGS44	,	y44	)
LRS45	<-	lm.regsubsets(	RGS45	,	y45	)
LRS46	<-	lm.regsubsets(	RGS46	,	y46	)
LRS47	<-	lm.regsubsets(	RGS47	,	y47	)
LRS48	<-	lm.regsubsets(	RGS48	,	y48	)
LRS49	<-	lm.regsubsets(	RGS49	,	y49	)
LRS50	<-	lm.regsubsets(	RGS50	,	y50	)
LRS51	<-	lm.regsubsets(	RGS51	,	y51	)
LRS52	<-	lm.regsubsets(	RGS52	,	y52	)
LRS53	<-	lm.regsubsets(	RGS53	,	y53	)
LRS54	<-	lm.regsubsets(	RGS54	,	y54	)
LRS55	<-	lm.regsubsets(	RGS55	,	y55	)
LRS56	<-	lm.regsubsets(	RGS56	,	y56	)
LRS57	<-	lm.regsubsets(	RGS57	,	y57	)
LRS58	<-	lm.regsubsets(	RGS58	,	y58	)
LRS59	<-	lm.regsubsets(	RGS59	,	y59	)
LRS60	<-	lm.regsubsets(	RGS60	,	y60	)
LRS61	<-	lm.regsubsets(	RGS61	,	y61	)
LRS62	<-	lm.regsubsets(	RGS62	,	y62	)










# new models
EDS1<-LRS1$call
EDS2<-LRS2$call
EDS3<-LRS3$call
EDS4<-LRS4$call
EDS5<-LRS5$call
EDS6<-LRS6$call
EDS7<-LRS7$call
EDS8<-LRS8$call
EDS9<-LRS9$call
EDS10<-LRS10$call
EDS11<-LRS11$call
EDS12<-LRS12$call
EDS13<-LRS13$call
EDS14<-LRS14$call
EDS15<-LRS15$call
EDS16<-LRS16$call
EDS17<-LRS17$call
EDS18<-LRS18$call
EDS19<-LRS19$call
EDS20<-LRS20$call
EDS21<-LRS21$call
EDS22<-LRS22$call
EDS23<-LRS23$call
EDS24<-LRS24$call
EDS25<-LRS25$call
EDS26<-LRS26$call
EDS27<-LRS27$call
EDS28<-LRS28$call
EDS29<-LRS29$call
EDS30<-LRS30$call
EDS31<-LRS31$call
EDS32<-LRS32$call
EDS33<-LRS33$call
EDS34<-LRS34$call
EDS35<-LRS35$call
EDS36<-LRS36$call
EDS37<-LRS37$call
EDS38<-LRS38$call
EDS39<-LRS39$call
EDS40<-LRS40$call
EDS41<-LRS41$call
EDS42<-LRS42$call
EDS43<-LRS43$call
EDS44<-LRS44$call
EDS45<-LRS45$call
EDS46<-LRS46$call
EDS47<-LRS47$call
EDS48<-LRS48$call
EDS49<-LRS49$call
EDS50<-LRS50$call
EDS51<-LRS51$call
EDS52<-LRS52$call
EDS53<-LRS53$call
EDS54<-LRS54$call
EDS55<-LRS55$call
EDS56<-LRS56$call
EDS57<-LRS57$call
EDS58<-LRS58$call
EDS59<-LRS59$call
EDS60<-LRS60$call
EDS61<-LRS61$call
EDS62<-LRS62$call






ADJNLM1	<-	lm(formula = outcome ~ FD + TO + DPY + DRY + DTO + ATT + CTCH + YACR, data = WTP)
ADJNLM2	<-	lm(formula = TEAMS ~ FD + PY + TO + DTO + ATT + TD + RUSHTD +     YACR, data = WTP)
ADJNLM3	<-	lm(formula = OPPS ~ FD + TO + DFD + DPY + DRY + DTO + Week +     TAY, data = WTP)
ADJNLM4	<-	lm(formula = FD ~ PY + LCAD + TD + RUSHATT + RUSHTD + AVG + TAY +     YACR, data = WTP)
ADJNLM5	<-	lm(formula = PY ~ FD + CAY + ATT + COMP + RUSHATT + AVG + TAY +     YACR, data = WTP)
ADJNLM6	<-	lm(formula = RY ~ FD + DRY + CAY + ATT + COMP + RUSHATT + AVG +     CUSH, data = WTP)
ADJNLM7	<-	lm(formula = TO ~ DFD + DRY + INT + COMP + RUSHTD + EM + SEP +    CTCH, data = WTP)
ADJNLM8	<-	lm(formula = DFD ~ FD + DPY + DRY + AYTS + TD + RUSHATT + RUSHTD +     AVG, data = WTP)
ADJNLM9	<-	lm(formula = DPY ~ FD + DFD + DRY + LCAD + INT + EM + TLOS +    AVG, data = WTP)
ADJNLM10	<-	lm(formula = DRY ~ TO + DFD + DPY + DTO + RUSHATT + CUSH + CTCH +     YACR, data = WTP)
ADJNLM11	<-	lm(formula = DTO ~ FD + PY + DRY + AGG + TD + Week + RUSHTD +    EM, data = WTP)
ADJNLM12	<-	lm(formula = TT ~ PY + CAY + AGG + LCAD + COMP + Week + SEP +    TAY, data = WTP)
ADJNLM13	<-	lm(formula = CAY ~ PY + TT + LCAD + AYTS + ATT + TD + SEP + YACR,     data = WTP)
ADJNLM14	<-	lm(formula = AGG ~ DPY + TT + AYTS + COMP + RUSHTD + AVG + SEP +     TAY, data = WTP)
ADJNLM15	<-	lm(formula = LCAD ~ DPY + TT + CAY + AYTS + CUSH + SEP + TAY +     YACR, data = WTP)
ADJNLM16	<-	lm(formula = AYTS ~ FD + CAY + AGG + TD + COMP + TLOS + SEP +     TAY, data = WTP)
ADJNLM17	<-	lm(formula = ATT ~ FD + PY + CAY + INT + COMP + RUSHATT + AVG +     YACR, data = WTP)
ADJNLM18	<-	lm(formula = TD ~ FD + DFD + CAY + COMP + RUSHTD + AVG + TAY +    YACR, data = WTP)
ADJNLM19	<-	lm(formula = INT ~ FD + TO + ATT + COMP + EM + AVG + TAY + CTCH,     data = WTP)
ADJNLM20	<-	lm(formula = COMP ~ PY + TT + AGG + AYTS + ATT + TD + TAY + CTCH,     data = WTP)
ADJNLM21	<-	lm(formula = RUSHATT ~ RY + DFD + DRY + Week + RUSHTD + AVG +    SEP + CTCH, data = WTP)
ADJNLM22	<-	lm(formula = RUSHTD ~ FD + TO + DFD + DTO + AGG + TD + RUSHATT +     AVG, data = WTP)
ADJNLM23	<-	lm(formula = EFF ~ TO + AGG + TD + RUSHATT + TLOS + AVG + SEP +     YACR, data = WTP)
ADJNLM24	<-	lm(formula = EM ~ TO + DPY + DTO + TT + TD + INT + CTCH + YACR,     data = WTP)
ADJNLM25	<-	lm(formula = TLOS ~ DRY + TT + CAY + AYTS + COMP + EFF + AVG +   CUSH, data = WTP)
ADJNLM26	<-	lm(formula = AVG ~ RY + TO + DFD + DRY + TD + RUSHATT + EFF +     CUSH, data = WTP)
ADJNLM27	<-	lm(formula = CUSH ~ CAY + LCAD + ATT + Week + TLOS + SEP + TAY +     YACR, data = WTP)
ADJNLM28	<-	lm(formula = SEP ~ AGG + AYTS + RUSHATT + EFF + CUSH + TAY +     CTCH + YACR, data = WTP)
ADJNLM29	<-	lm(formula = TAY ~ TT + LCAD + AYTS + TD + INT + COMP + SEP +   CTCH, data = WTP)
ADJNLM30	<-	lm(formula = CTCH ~ FD + TO + CAY + INT + COMP + EM + SEP + TAY,     data = WTP)
ADJNLM31	<-	lm(formula = YACR ~ PY + DRY + CAY + ATT + COMP + EFF + AVG +     SEP, data = WTP)
ADJNLM32	<-	lm(formula = outcome ~ PY + RY + TO + DPY + DRY + DTO + ATT +   CTCH, data=WEEKLY_TEAM_PERFORMANCE)
ADJNLM33	<-	lm(formula = TEAMS ~ FD + PY + TO + DTO + ATT + TD + RUSHTD +  YACR, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM34	<-	lm(formula = OPPS ~ FD + TO + DFD + DPY + DRY + DTO + Week +    TAY, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM35	<-	lm(formula = FD ~ PY + RY + LCAD + ATT + COMP + AVG + TAY + YACR,    data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM36	<-	lm(formula = PY ~ FD + RY + CAY + LCAD + ATT + COMP + TAY + YACR,    data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM37	<-	lm(formula = RY ~ FD + PY + CAY + ATT + RUSHATT + RUSHTD + TLOS +     YACR, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM38	<-	lm(formula = TO ~ DFD + DRY + INT + COMP + RUSHTD + EM + SEP +     CTCH, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM39	<-	lm(formula = DFD ~ DPY + DRY + TD + COMP + RUSHATT + RUSHTD +   AVG + CUSH, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM40	<-	lm(formula = DPY ~ FD + DFD + DRY + LCAD + INT + EM + TLOS +     AVG, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM41	<-	lm(formula = DRY ~ TO + DFD + DPY + DTO + RUSHATT + CUSH + CTCH +    YACR, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM42	<-	lm(formula = DTO ~ FD + PY + DRY + AGG + TD + Week + RUSHTD +   EM, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM43	<-	lm(formula = TT ~ PY + CAY + AGG + LCAD + COMP + Week + SEP +    TAY, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM44	<-	lm(formula = CAY ~ TT + LCAD + AYTS + TD + TLOS + CUSH + SEP +   CTCH, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM45	<-	lm(formula = AGG ~ DPY + TT + AYTS + COMP + RUSHTD + AVG + SEP +    TAY, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM46	<-	lm(formula = LCAD ~ FD + DPY + TT + CAY + COMP + CUSH + SEP +   TAY, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM47	<-	lm(formula = AYTS ~ FD + TT + AGG + LCAD + TD + COMP + TLOS + TAY, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM48	<-	lm(formula = ATT ~ FD + RY + AYTS + INT + COMP + AVG + CUSH +   YACR, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM49	<-	lm(formula = TD ~ FD + DFD + CAY + COMP + RUSHTD + AVG + TAY +  YACR, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM50	<-	lm(formula = INT ~ FD + DPY + AGG + AYTS + ATT + TD + RUSHATT +   AVG, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM51	<-	lm(formula = COMP ~ FD + RY + TT + AGG + AYTS + ATT + TD + Week,   data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM52	<-	lm(formula = RUSHATT ~ FD + PY + DFD + DRY + AYTS + ATT + Week +  RUSHTD, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM53	<-	lm(formula = RUSHTD ~ PY + RY + TO + DFD + DTO + AGG + TD + RUSHATT, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM54	<-	lm(formula = EFF ~ TO + AGG + TD + RUSHATT + TLOS + AVG + SEP +     YACR, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM55	<-	lm(formula = EM ~ TO + DPY + DTO + TT + TD + INT + CTCH + YACR,     data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM56	<-	lm(formula = TLOS ~ DPY + DRY + CAY + AYTS + COMP + EFF + CUSH +     CTCH, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM57	<-	lm(formula = AVG ~ FD + RY + TO + DFD + DRY + TD + RUSHATT +    EFF, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM58	<-	lm(formula = CUSH ~ CAY + LCAD + ATT + Week + TLOS + SEP + TAY +    YACR, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM59	<-	lm(formula = SEP ~ AGG + AYTS + RUSHATT + EFF + CUSH + TAY +     CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM60	<-	lm(formula = TAY ~ FD + PY + RY + TT + LCAD + INT + SEP + CTCH,     data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM61	<-	lm(formula = CTCH ~ PY + ATT + TD + RUSHATT + EM + SEP + TAY +     YACR, data = WEEKLY_TEAM_PERFORMANCE)
ADJNLM62	<-	lm(formula = YACR ~ DRY + AGG + ATT + TD + RUSHTD + EFF + CUSH +     SEP, data = WEEKLY_TEAM_PERFORMANCE)





SOLM1	<-	lm(formula = outcome ~( FD + TO + DPY + DRY + DTO + ATT + CTCH + YACR)^2, data = WTP)
SOLM2	<-	lm(formula = TEAMS ~( FD + PY + TO + DTO + ATT + TD + RUSHTD +     YACR)^2, data = WTP)
SOLM3	<-	lm(formula = OPPS ~( FD + TO + DFD + DPY + DRY + DTO + Week +     TAY)^2, data = WTP)
SOLM4	<-	lm(formula = FD ~( PY + LCAD + TD + RUSHATT + RUSHTD + AVG + TAY +     YACR)^2, data = WTP)
SOLM5	<-	lm(formula = PY ~( FD + CAY + ATT + COMP + RUSHATT + AVG + TAY +     YACR)^2, data = WTP)
SOLM6	<-	lm(formula = RY ~( FD + DRY + CAY + ATT + COMP + RUSHATT + AVG +     CUSH)^2, data = WTP)
SOLM7	<-	lm(formula = TO ~( DFD + DRY + INT + COMP + RUSHTD + EM + SEP +    CTCH)^2, data = WTP)
SOLM8	<-	lm(formula = DFD ~( FD + DPY + DRY + AYTS + TD + RUSHATT + RUSHTD +     AVG)^2, data = WTP)
SOLM9	<-	lm(formula = DPY ~( FD + DFD + DRY + LCAD + INT + EM + TLOS +    AVG)^2, data = WTP)
SOLM10	<-	lm(formula = DRY ~( TO + DFD + DPY + DTO + RUSHATT + CUSH + CTCH +     YACR)^2, data = WTP)
SOLM11	<-	lm(formula = DTO ~( FD + PY + DRY + AGG + TD + Week + RUSHTD +    EM)^2, data = WTP)
SOLM12	<-	lm(formula = TT ~( PY + CAY + AGG + LCAD + COMP + Week + SEP +    TAY)^2, data = WTP)
SOLM13	<-	lm(formula = CAY ~( PY + TT + LCAD + AYTS + ATT + TD + SEP + YACR)^2,     data = WTP)
SOLM14	<-	lm(formula = AGG ~( DPY + TT + AYTS + COMP + RUSHTD + AVG + SEP +     TAY)^2, data = WTP)
SOLM15	<-	lm(formula = LCAD ~( DPY + TT + CAY + AYTS + CUSH + SEP + TAY +     YACR)^2, data = WTP)
SOLM16	<-	lm(formula = AYTS ~( FD + CAY + AGG + TD + COMP + TLOS + SEP +     TAY)^2, data = WTP)
SOLM17	<-	lm(formula = ATT ~( FD + PY + CAY + INT + COMP + RUSHATT + AVG +     YACR)^2, data = WTP)
SOLM18	<-	lm(formula = TD ~( FD + DFD + CAY + COMP + RUSHTD + AVG + TAY +    YACR)^2, data = WTP)
SOLM19	<-	lm(formula = INT ~( FD + TO + ATT + COMP + EM + AVG + TAY + CTCH)^2,     data = WTP)
SOLM20	<-	lm(formula = COMP ~( PY + TT + AGG + AYTS + ATT + TD + TAY + CTCH)^2,     data = WTP)
SOLM21	<-	lm(formula = RUSHATT ~( RY + DFD + DRY + Week + RUSHTD + AVG +    SEP + CTCH)^2, data = WTP)
SOLM22	<-	lm(formula = RUSHTD ~( FD + TO + DFD + DTO + AGG + TD + RUSHATT +     AVG)^2, data = WTP)
SOLM23	<-	lm(formula = EFF ~( TO + AGG + TD + RUSHATT + TLOS + AVG + SEP +     YACR)^2, data = WTP)
SOLM24	<-	lm(formula = EM ~( TO + DPY + DTO + TT + TD + INT + CTCH + YACR)^2,     data = WTP)
SOLM25	<-	lm(formula = TLOS ~( DRY + TT + CAY + AYTS + COMP + EFF + AVG +   CUSH)^2, data = WTP)
SOLM26	<-	lm(formula = AVG ~( RY + TO + DFD + DRY + TD + RUSHATT + EFF +     CUSH)^2, data = WTP)
SOLM27	<-	lm(formula = CUSH ~( CAY + LCAD + ATT + Week + TLOS + SEP + TAY +     YACR)^2, data = WTP)
SOLM28	<-	lm(formula = SEP ~( AGG + AYTS + RUSHATT + EFF + CUSH + TAY +     CTCH + YACR)^2, data = WTP)
SOLM29	<-	lm(formula = TAY ~( TT + LCAD + AYTS + TD + INT + COMP + SEP +   CTCH)^2, data = WTP)
SOLM30	<-	lm(formula = CTCH ~( FD + TO + CAY + INT + COMP + EM + SEP + TAY)^2,     data = WTP)
SOLM31	<-	lm(formula = YACR ~( PY + DRY + CAY + ATT + COMP + EFF + AVG +     SEP)^2, data = WTP)
SOLM32	<-	lm(formula = outcome ~( PY + RY + TO + DPY + DRY + DTO + ATT +   CTCH)^2, data=WEEKLY_TEAM_PERFORMANCE)
SOLM33	<-	lm(formula = TEAMS ~( FD + PY + TO + DTO + ATT + TD + RUSHTD +  YACR)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM34	<-	lm(formula = OPPS ~( FD + TO + DFD + DPY + DRY + DTO + Week +    TAY)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM35	<-	lm(formula = FD ~( PY + RY + LCAD + ATT + COMP + AVG + TAY + YACR)^2,    data = WEEKLY_TEAM_PERFORMANCE)
SOLM36	<-	lm(formula = PY ~( FD + RY + CAY + LCAD + ATT + COMP + TAY + YACR)^2,    data = WEEKLY_TEAM_PERFORMANCE)
SOLM37	<-	lm(formula = RY ~( FD + PY + CAY + ATT + RUSHATT + RUSHTD + TLOS +     YACR)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM38	<-	lm(formula = TO ~( DFD + DRY + INT + COMP + RUSHTD + EM + SEP +     CTCH)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM39	<-	lm(formula = DFD ~( DPY + DRY + TD + COMP + RUSHATT + RUSHTD +   AVG + CUSH)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM40	<-	lm(formula = DPY ~( FD + DFD + DRY + LCAD + INT + EM + TLOS +     AVG)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM41	<-	lm(formula = DRY ~( TO + DFD + DPY + DTO + RUSHATT + CUSH + CTCH +    YACR)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM42	<-	lm(formula = DTO ~( FD + PY + DRY + AGG + TD + Week + RUSHTD +   EM)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM43	<-	lm(formula = TT ~( PY + CAY + AGG + LCAD + COMP + Week + SEP +    TAY)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM44	<-	lm(formula = CAY ~( TT + LCAD + AYTS + TD + TLOS + CUSH + SEP +   CTCH)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM45	<-	lm(formula = AGG ~( DPY + TT + AYTS + COMP + RUSHTD + AVG + SEP +    TAY)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM46	<-	lm(formula = LCAD ~( FD + DPY + TT + CAY + COMP + CUSH + SEP +   TAY)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM47	<-	lm(formula = AYTS ~( FD + TT + AGG + LCAD + TD + COMP + TLOS + TAY)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM48	<-	lm(formula = ATT ~( FD + RY + AYTS + INT + COMP + AVG + CUSH +   YACR)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM49	<-	lm(formula = TD ~( FD + DFD + CAY + COMP + RUSHTD + AVG + TAY +  YACR)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM50	<-	lm(formula = INT ~( FD + DPY + AGG + AYTS + ATT + TD + RUSHATT +   AVG)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM51	<-	lm(formula = COMP ~( FD + RY + TT + AGG + AYTS + ATT + TD + Week)^2,   data = WEEKLY_TEAM_PERFORMANCE)
SOLM52	<-	lm(formula = RUSHATT ~( FD + PY + DFD + DRY + AYTS + ATT + Week +  RUSHTD)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM53	<-	lm(formula = RUSHTD ~( PY + RY + TO + DFD + DTO + AGG + TD + RUSHATT)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM54	<-	lm(formula = EFF ~( TO + AGG + TD + RUSHATT + TLOS + AVG + SEP +     YACR)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM55	<-	lm(formula = EM ~( TO + DPY + DTO + TT + TD + INT + CTCH + YACR)^2,     data = WEEKLY_TEAM_PERFORMANCE)
SOLM56	<-	lm(formula = TLOS ~( DPY + DRY + CAY + AYTS + COMP + EFF + CUSH +     CTCH)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM57	<-	lm(formula = AVG ~( FD + RY + TO + DFD + DRY + TD + RUSHATT +    EFF)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM58	<-	lm(formula = CUSH ~( CAY + LCAD + ATT + Week + TLOS + SEP + TAY +    YACR)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM59	<-	lm(formula = SEP ~( AGG + AYTS + RUSHATT + EFF + CUSH + TAY +     CTCH + YACR)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM60	<-	lm(formula = TAY ~( FD + PY + RY + TT + LCAD + INT + SEP + CTCH)^2,     data = WEEKLY_TEAM_PERFORMANCE)
SOLM61	<-	lm(formula = CTCH ~( PY + ATT + TD + RUSHATT + EM + SEP + TAY +     YACR)^2, data = WEEKLY_TEAM_PERFORMANCE)
SOLM62	<-	lm(formula = YACR ~( DRY + AGG + ATT + TD + RUSHTD + EFF + CUSH +     SEP)^2, data = WEEKLY_TEAM_PERFORMANCE)





CIM1	<-	lm(formula = outcome ~ FD * TO * DPY * DRY * DTO * ATT * CTCH * YACR, data = WTP)
CIM2	<-	lm(formula = TEAMS ~ FD * PY * TO * DTO * ATT * TD * RUSHTD *     YACR, data = WTP)
CIM3	<-	lm(formula = OPPS ~ FD * TO * DFD * DPY * DRY * DTO * Week *     TAY, data = WTP)
CIM4	<-	lm(formula = FD ~ PY * LCAD * TD * RUSHATT * RUSHTD * AVG * TAY *     YACR, data = WTP)
CIM5	<-	lm(formula = PY ~ FD * CAY * ATT * COMP * RUSHATT * AVG * TAY *     YACR, data = WTP)
CIM6	<-	lm(formula = RY ~ FD * DRY * CAY * ATT * COMP * RUSHATT * AVG *     CUSH, data = WTP)
CIM7	<-	lm(formula = TO ~ DFD * DRY * INT * COMP * RUSHTD * EM * SEP *    CTCH, data = WTP)
CIM8	<-	lm(formula = DFD ~ FD * DPY * DRY * AYTS * TD * RUSHATT * RUSHTD *     AVG, data = WTP)
CIM9	<-	lm(formula = DPY ~ FD * DFD * DRY * LCAD * INT * EM * TLOS *    AVG, data = WTP)
CIM10	<-	lm(formula = DRY ~ TO * DFD * DPY * DTO * RUSHATT * CUSH * CTCH *     YACR, data = WTP)
CIM11	<-	lm(formula = DTO ~ FD * PY * DRY * AGG * TD * Week * RUSHTD *    EM, data = WTP)
CIM12	<-	lm(formula = TT ~ PY * CAY * AGG * LCAD * COMP * Week * SEP *    TAY, data = WTP)
CIM13	<-	lm(formula = CAY ~ PY * TT * LCAD * AYTS * ATT * TD * SEP * YACR,     data = WTP)
CIM14	<-	lm(formula = AGG ~ DPY * TT * AYTS * COMP * RUSHTD * AVG * SEP *     TAY, data = WTP)
CIM15	<-	lm(formula = LCAD ~ DPY * TT * CAY * AYTS * CUSH * SEP * TAY *     YACR, data = WTP)
CIM16	<-	lm(formula = AYTS ~ FD * CAY * AGG * TD * COMP * TLOS * SEP *     TAY, data = WTP)
CIM17	<-	lm(formula = ATT ~ FD * PY * CAY * INT * COMP * RUSHATT * AVG *     YACR, data = WTP)
CIM18	<-	lm(formula = TD ~ FD * DFD * CAY * COMP * RUSHTD * AVG * TAY *    YACR, data = WTP)
CIM19	<-	lm(formula = INT ~ FD * TO * ATT * COMP * EM * AVG * TAY * CTCH,     data = WTP)
CIM20	<-	lm(formula = COMP ~ PY * TT * AGG * AYTS * ATT * TD * TAY * CTCH,     data = WTP)
CIM21	<-	lm(formula = RUSHATT ~ RY * DFD * DRY * Week * RUSHTD * AVG *    SEP * CTCH, data = WTP)
CIM22	<-	lm(formula = RUSHTD ~ FD * TO * DFD * DTO * AGG * TD * RUSHATT *     AVG, data = WTP)
CIM23	<-	lm(formula = EFF ~ TO * AGG * TD * RUSHATT * TLOS * AVG * SEP *     YACR, data = WTP)
CIM24	<-	lm(formula = EM ~ TO * DPY * DTO * TT * TD * INT * CTCH * YACR,     data = WTP)
CIM25	<-	lm(formula = TLOS ~ DRY * TT * CAY * AYTS * COMP * EFF * AVG *   CUSH, data = WTP)
CIM26	<-	lm(formula = AVG ~ RY * TO * DFD * DRY * TD * RUSHATT * EFF *     CUSH, data = WTP)
CIM27	<-	lm(formula = CUSH ~ CAY * LCAD * ATT * Week * TLOS * SEP * TAY *     YACR, data = WTP)
CIM28	<-	lm(formula = SEP ~ AGG * AYTS * RUSHATT * EFF * CUSH * TAY *     CTCH * YACR, data = WTP)
CIM29	<-	lm(formula = TAY ~ TT * LCAD * AYTS * TD * INT * COMP * SEP *   CTCH, data = WTP)
CIM30	<-	lm(formula = CTCH ~ FD * TO * CAY * INT * COMP * EM * SEP * TAY,     data = WTP)
CIM31	<-	lm(formula = YACR ~ PY * DRY * CAY * ATT * COMP * EFF * AVG *     SEP, data = WTP)
CIM32	<-	lm(formula = outcome ~ PY * RY * TO * DPY * DRY * DTO * ATT *   CTCH, data=WEEKLY_TEAM_PERFORMANCE)
CIM33	<-	lm(formula = TEAMS ~ FD * PY * TO * DTO * ATT * TD * RUSHTD *  YACR, data = WEEKLY_TEAM_PERFORMANCE)
CIM34	<-	lm(formula = OPPS ~ FD * TO * DFD * DPY * DRY * DTO * Week *    TAY, data = WEEKLY_TEAM_PERFORMANCE)
CIM35	<-	lm(formula = FD ~ PY * RY * LCAD * ATT * COMP * AVG * TAY * YACR,    data = WEEKLY_TEAM_PERFORMANCE)
CIM36	<-	lm(formula = PY ~ FD * RY * CAY * LCAD * ATT * COMP * TAY * YACR,    data = WEEKLY_TEAM_PERFORMANCE)
CIM37	<-	lm(formula = RY ~ FD * PY * CAY * ATT * RUSHATT * RUSHTD * TLOS *     YACR, data = WEEKLY_TEAM_PERFORMANCE)
CIM38	<-	lm(formula = TO ~ DFD * DRY * INT * COMP * RUSHTD * EM * SEP *     CTCH, data = WEEKLY_TEAM_PERFORMANCE)
CIM39	<-	lm(formula = DFD ~ DPY * DRY * TD * COMP * RUSHATT * RUSHTD *   AVG * CUSH, data = WEEKLY_TEAM_PERFORMANCE)
CIM40	<-	lm(formula = DPY ~ FD * DFD * DRY * LCAD * INT * EM * TLOS *     AVG, data = WEEKLY_TEAM_PERFORMANCE)
CIM41	<-	lm(formula = DRY ~ TO * DFD * DPY * DTO * RUSHATT * CUSH * CTCH *    YACR, data = WEEKLY_TEAM_PERFORMANCE)
CIM42	<-	lm(formula = DTO ~ FD * PY * DRY * AGG * TD * Week * RUSHTD *   EM, data = WEEKLY_TEAM_PERFORMANCE)
CIM43	<-	lm(formula = TT ~ PY * CAY * AGG * LCAD * COMP * Week * SEP *    TAY, data = WEEKLY_TEAM_PERFORMANCE)
CIM44	<-	lm(formula = CAY ~ TT * LCAD * AYTS * TD * TLOS * CUSH * SEP *   CTCH, data = WEEKLY_TEAM_PERFORMANCE)
CIM45	<-	lm(formula = AGG ~ DPY * TT * AYTS * COMP * RUSHTD * AVG * SEP *    TAY, data = WEEKLY_TEAM_PERFORMANCE)
CIM46	<-	lm(formula = LCAD ~ FD * DPY * TT * CAY * COMP * CUSH * SEP *   TAY, data = WEEKLY_TEAM_PERFORMANCE)
CIM47	<-	lm(formula = AYTS ~ FD * TT * AGG * LCAD * TD * COMP * TLOS * TAY, data = WEEKLY_TEAM_PERFORMANCE)
CIM48	<-	lm(formula = ATT ~ FD * RY * AYTS * INT * COMP * AVG * CUSH *   YACR, data = WEEKLY_TEAM_PERFORMANCE)
CIM49	<-	lm(formula = TD ~ FD * DFD * CAY * COMP * RUSHTD * AVG * TAY *  YACR, data = WEEKLY_TEAM_PERFORMANCE)
CIM50	<-	lm(formula = INT ~ FD * DPY * AGG * AYTS * ATT * TD * RUSHATT *   AVG, data = WEEKLY_TEAM_PERFORMANCE)
CIM51	<-	lm(formula = COMP ~ FD * RY * TT * AGG * AYTS * ATT * TD * Week,   data = WEEKLY_TEAM_PERFORMANCE)
CIM52	<-	lm(formula = RUSHATT ~ FD * PY * DFD * DRY * AYTS * ATT * Week *  RUSHTD, data = WEEKLY_TEAM_PERFORMANCE)
CIM53	<-	lm(formula = RUSHTD ~ PY * RY * TO * DFD * DTO * AGG * TD * RUSHATT, data = WEEKLY_TEAM_PERFORMANCE)
CIM54	<-	lm(formula = EFF ~ TO * AGG * TD * RUSHATT * TLOS * AVG * SEP *     YACR, data = WEEKLY_TEAM_PERFORMANCE)
CIM55	<-	lm(formula = EM ~ TO * DPY * DTO * TT * TD * INT * CTCH * YACR,     data = WEEKLY_TEAM_PERFORMANCE)
CIM56	<-	lm(formula = TLOS ~ DPY * DRY * CAY * AYTS * COMP * EFF * CUSH *     CTCH, data = WEEKLY_TEAM_PERFORMANCE)
CIM57	<-	lm(formula = AVG ~ FD * RY * TO * DFD * DRY * TD * RUSHATT *    EFF, data = WEEKLY_TEAM_PERFORMANCE)
CIM58	<-	lm(formula = CUSH ~ CAY * LCAD * ATT * Week * TLOS * SEP * TAY *    YACR, data = WEEKLY_TEAM_PERFORMANCE)
CIM59	<-	lm(formula = SEP ~ AGG * AYTS * RUSHATT * EFF * CUSH * TAY *     CTCH * YACR, data = WEEKLY_TEAM_PERFORMANCE)
CIM60	<-	lm(formula = TAY ~ FD * PY * RY * TT * LCAD * INT * SEP * CTCH,     data = WEEKLY_TEAM_PERFORMANCE)
CIM61	<-	lm(formula = CTCH ~ PY * ATT * TD * RUSHATT * EM * SEP * TAY *     YACR, data = WEEKLY_TEAM_PERFORMANCE)
CIM62	<-	lm(formula = YACR ~ DRY * AGG * ATT * TD * RUSHTD * EFF * CUSH *     SEP, data = WEEKLY_TEAM_PERFORMANCE)





SLST1	<-	step(	SOLM1	)
SLST2	<-	step(	SOLM2	)
SLST3	<-	step(	SOLM3	)
SLST4	<-	step(	SOLM4	)
SLST5	<-	step(	SOLM5	)
SLST6	<-	step(	SOLM6	)
SLST7	<-	step(	SOLM7	)
SLST8	<-	step(	SOLM8	)
SLST9	<-	step(	SOLM9	)
SLST10	<-	step(	SOLM10	)
SLST11	<-	step(	SOLM11	)
SLST12	<-	step(	SOLM12	)
SLST13	<-	step(	SOLM13	)
SLST14	<-	step(	SOLM14	)
SLST15	<-	step(	SOLM15	)
SLST16	<-	step(	SOLM16	)
SLST17	<-	step(	SOLM17	)
SLST18	<-	step(	SOLM18	)
SLST19	<-	step(	SOLM19	)
SLST20	<-	step(	SOLM20	)
SLST21	<-	step(	SOLM21	)
SLST22	<-	step(	SOLM22	)
SLST23	<-	step(	SOLM23	)
SLST24	<-	step(	SOLM24	)
SLST25	<-	step(	SOLM25	)
SLST26	<-	step(	SOLM26	)
SLST27	<-	step(	SOLM27	)
SLST28	<-	step(	SOLM28	)
SLST29	<-	step(	SOLM29	)
SLST30	<-	step(	SOLM30	)
SLST31	<-	step(	SOLM31	)
SLST32	<-	step(	SOLM32	)
SLST33	<-	step(	SOLM33	)
SLST34	<-	step(	SOLM34	)
SLST35	<-	step(	SOLM35	)
SLST36	<-	step(	SOLM36	)
SLST37	<-	step(	SOLM37	)
SLST38	<-	step(	SOLM38	)
SLST39	<-	step(	SOLM39	)
SLST40	<-	step(	SOLM40	)
SLST41	<-	step(	SOLM41	)
SLST42	<-	step(	SOLM42	)
SLST43	<-	step(	SOLM43	)
SLST44	<-	step(	SOLM44	)
SLST45	<-	step(	SOLM45	)
SLST46	<-	step(	SOLM46	)
SLST47	<-	step(	SOLM47	)
SLST48	<-	step(	SOLM48	)
SLST49	<-	step(	SOLM49	)
SLST50	<-	step(	SOLM50	)
SLST51	<-	step(	SOLM51	)
SLST52	<-	step(	SOLM52	)
SLST53	<-	step(	SOLM53	)
SLST54	<-	step(	SOLM54	)
SLST55	<-	step(	SOLM55	)
SLST56	<-	step(	SOLM56	)
SLST57	<-	step(	SOLM57	)
SLST58	<-	step(	SOLM58	)
SLST59	<-	step(	SOLM59	)
SLST60	<-	step(	SOLM60	)
SLST61	<-	step(	SOLM61	)
SLST62	<-	step(	SOLM62	)


CST1	<-	step(	CIM1	)
CST2	<-	step(	CIM2	)
CST3	<-	step(	CIM3	)
CST4	<-	step(	CIM4	)
CST5	<-	step(	CIM5	)
CST6	<-	step(	CIM6	)
CST7	<-	step(	CIM7	)
CST8	<-	step(	CIM8	)
CST9	<-	step(	CIM9	)
CST10	<-	step(	CIM10	)
CST11	<-	step(	CIM11	)
CST12	<-	step(	CIM12	)
CST13	<-	step(	CIM13	)
CST14	<-	step(	CIM14	)
CST15	<-	step(	CIM15	)
CST16	<-	step(	CIM16	)
CST17	<-	step(	CIM17	)
CST18	<-	step(	CIM18	)
CST19	<-	step(	CIM19	)
CST20	<-	step(	CIM20	)
CST21	<-	step(	CIM21	)
CST22	<-	step(	CIM22	)
CST23	<-	step(	CIM23	)
CST24	<-	step(	CIM24	)
CST25	<-	step(	CIM25	)
CST26	<-	step(	CIM26	)
CST27	<-	step(	CIM27	)
CST28	<-	step(	CIM28	)
CST29	<-	step(	CIM29	)
CST30	<-	step(	CIM30	)
CST31	<-	step(	CIM31	)
CST32	<-	step(	CIM32	)
CST33	<-	step(	CIM33	)
CST34	<-	step(	CIM34	)
CST35	<-	step(	CIM35	)
CST36	<-	step(	CIM36	)
CST37	<-	step(	CIM37	)
CST38	<-	step(	CIM38	)
CST39	<-	step(	CIM39	)
CST40	<-	step(	CIM40	)
CST41	<-	step(	CIM41	)
CST42	<-	step(	CIM42	)
CST43	<-	step(	CIM43	)
CST44	<-	step(	CIM44	)
CST45	<-	step(	CIM45	)
CST46	<-	step(	CIM46	)
CST47	<-	step(	CIM47	)
CST48	<-	step(	CIM48	)
CST49	<-	step(	CIM49	)
CST50	<-	step(	CIM50	)
CST51	<-	step(	CIM51	)
CST52	<-	step(	CIM52	)
CST53	<-	step(	CIM53	)
CST54	<-	step(	CIM54	)
CST55	<-	step(	CIM55	)
CST56	<-	step(	CIM56	)
CST57	<-	step(	CIM57	)
CST58	<-	step(	CIM58	)
CST59	<-	step(	CIM59	)
CST60	<-	step(	CIM60	)
CST61	<-	step(	CIM61	)
CST62	<-	step(	CIM62	)







library(caTools)

#TT
sample_WP_TT <- sample.split(WEEKLY_TEAM_PERFORMANCE$TT,SplitRatio = 0.9)
train_WP_TT <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_TT == TRUE)
testWPTT <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_TT == FALSE)


#outcome
sample_WP_outcome <- sample.split(WEEKLY_TEAM_PERFORMANCE$outcome,SplitRatio = 0.9)
train_WP_outcome <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_outcome == TRUE)
testWPoutcome <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_outcome == FALSE)


#OPPS
sample_WP_OPPS <- sample.split(WEEKLY_TEAM_PERFORMANCE$OPPS,SplitRatio = 0.9)
train_WP_OPPS <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_OPPS == TRUE)
testWPOPPS <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_OPPS == FALSE)

#TEAMS
sample_WP_TEAMS <- sample.split(WEEKLY_TEAM_PERFORMANCE$TEAMS,SplitRatio = 0.9)
train_WP_TEAMS <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_TEAMS == TRUE)
testWPTEAMS <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_TEAMS == FALSE)

#FD
sample_WP_FD <- sample.split(WEEKLY_TEAM_PERFORMANCE$FD,SplitRatio = 0.9)
train_WP_FD <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_FD == TRUE)
testWPFD <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_FD == FALSE)

#PY
sample_WP_PY <- sample.split(WEEKLY_TEAM_PERFORMANCE$PY,SplitRatio = 0.9)
train_WP_PY <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_PY == TRUE)
testWPPY <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_PY == FALSE)

#RY
sample_WP_RY <- sample.split(WEEKLY_TEAM_PERFORMANCE$RY,SplitRatio = 0.9)
train_WP_RY <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_RY == TRUE)
testWPRY <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_RY == FALSE)

#TO
sample_WP_TO <- sample.split(WEEKLY_TEAM_PERFORMANCE$TO,SplitRatio = 0.9)
train_WP_TO <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_TO == TRUE)
testWPTO <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_TO == FALSE)

#DFD
sample_WP_DFD <- sample.split(WEEKLY_TEAM_PERFORMANCE$DFD,SplitRatio = 0.9)
train_WP_DFD <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_DFD == TRUE)
testWPDFD <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_DFD == FALSE)

#DPY
sample_WP_DPY <- sample.split(WEEKLY_TEAM_PERFORMANCE$DPY,SplitRatio = 0.9)
train_WP_DPY <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_DPY == TRUE)
testWPDPY <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_DPY == FALSE)

#DRY
sample_WP_DRY <- sample.split(WEEKLY_TEAM_PERFORMANCE$DRY,SplitRatio = 0.9)
train_WP_DRY <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_DRY == TRUE)
testWPDRY <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_DRY == FALSE)

#DTO
sample_WP_DTO <- sample.split(WEEKLY_TEAM_PERFORMANCE$DTO,SplitRatio = 0.9)
train_WP_DTO <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_DTO == TRUE)
testWPDTO <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_DTO == FALSE)

#CAY
sample_WP_CAY <- sample.split(WEEKLY_TEAM_PERFORMANCE$CAY,SplitRatio = 0.9)
train_WP_CAY <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_CAY == TRUE)
testWPCAY <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_CAY == FALSE)

#AGG
sample_WP_AGG <- sample.split(WEEKLY_TEAM_PERFORMANCE$AGG,SplitRatio = 0.9)
train_WP_AGG <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_AGG == TRUE)
testWPAGG <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_AGG == FALSE)

#LCAD
sample_WP_LCAD <- sample.split(WEEKLY_TEAM_PERFORMANCE$LCAD,SplitRatio = 0.9)
train_WP_LCAD <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_LCAD == TRUE)
testWPLCAD <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_LCAD == FALSE)

#AYTS
sample_WP_AYTS <- sample.split(WEEKLY_TEAM_PERFORMANCE$AYTS,SplitRatio = 0.9)
train_WP_AYTS <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_AYTS == TRUE)
testWPAYTS <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_AYTS == FALSE)

#ATT
sample_WP_ATT <- sample.split(WEEKLY_TEAM_PERFORMANCE$ATT,SplitRatio = 0.9)
train_WP_ATT <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_ATT == TRUE)
testWPATT <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_ATT == FALSE)

#TD
sample_WP_TD <- sample.split(WEEKLY_TEAM_PERFORMANCE$TD,SplitRatio = 0.9)
train_WP_TD <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_TD == TRUE)
testWPTD <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_TD == FALSE)

#INT
sample_WP_INT <- sample.split(WEEKLY_TEAM_PERFORMANCE$INT,SplitRatio = 0.9)
train_WP_INT <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_INT == TRUE)
testWPINT <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_INT == FALSE)

#COMP
sample_WP_COMP <- sample.split(WEEKLY_TEAM_PERFORMANCE$COMP,SplitRatio = 0.9)
train_WP_COMP <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_COMP == TRUE)
testWPCOMP <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_COMP == FALSE)

#RUSHATT
sample_WP_RUSHATT <- sample.split(WEEKLY_TEAM_PERFORMANCE$RUSHATT,SplitRatio = 0.9)
train_WP_RUSHATT <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_RUSHATT == TRUE)
testWPRUSHATT <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_RUSHATT == FALSE)

#RUSHTD
sample_WP_RUSHTD <- sample.split(WEEKLY_TEAM_PERFORMANCE$RUSHTD,SplitRatio = 0.9)
train_WP_RUSHTD <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_RUSHTD == TRUE)
testWPRUSHTD <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_RUSHTD == FALSE)

#EFF
sample_WP_EFF <- sample.split(WEEKLY_TEAM_PERFORMANCE$EFF,SplitRatio = 0.9)
train_WP_EFF <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_EFF == TRUE)
testWPEFF <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_EFF == FALSE)

#EM
sample_WP_EM <- sample.split(WEEKLY_TEAM_PERFORMANCE$EM,SplitRatio = 0.9)
train_WP_EM <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_EM == TRUE)
testWPEM <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_EM == FALSE)

#TLOS
sample_WP_TLOS <- sample.split(WEEKLY_TEAM_PERFORMANCE$TLOS,SplitRatio = 0.9)
train_WP_TLOS <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_TLOS == TRUE)
testWPTLOS <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_TLOS == FALSE)

#AVG
sample_WP_AVG <- sample.split(WEEKLY_TEAM_PERFORMANCE$AVG,SplitRatio = 0.9)
train_WP_AVG <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_AVG == TRUE)
testWPAVG <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_AVG == FALSE)

#CUSH
sample_WP_CUSH <- sample.split(WEEKLY_TEAM_PERFORMANCE$CUSH,SplitRatio = 0.9)
train_WP_CUSH <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_CUSH == TRUE)
testWPCUSH <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_CUSH == FALSE)

#SEP
sample_WP_SEP <- sample.split(WEEKLY_TEAM_PERFORMANCE$SEP,SplitRatio = 0.9)
train_WP_SEP <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_SEP == TRUE)
testWPSEP <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_SEP == FALSE)

#TAY
sample_WP_TAY <- sample.split(WEEKLY_TEAM_PERFORMANCE$TAY,SplitRatio = 0.9)
train_WP_TAY <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_TAY == TRUE)
testWPTAY <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_TAY == FALSE)

#CTCH
sample_WP_CTCH <- sample.split(WEEKLY_TEAM_PERFORMANCE$CTCH,SplitRatio = 0.9)
train_WP_CTCH <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_CTCH == TRUE)
testWPCTCH <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_CTCH == FALSE)

#YACR
sample_WP_YACR <- sample.split(WEEKLY_TEAM_PERFORMANCE$YACR,SplitRatio = 0.9)
train_WP_YACR <- subset(WEEKLY_TEAM_PERFORMANCE,sample_WP_YACR == TRUE)
testWPYACR <- subset(WEEKLY_TEAM_PERFORMANCE, sample_WP_YACR == FALSE)







library(randomForest)
PRM1<-randomForest(outcome~.,data=train_WP_outcome)
PRM2<-randomForest(TEAMS~.,data=train_WP_TEAMS)
PRM3<-randomForest(OPPS~.,data=train_WP_OPPS)
PRM4<-randomForest(FD~.,data=train_WP_FD)
PRM5<-randomForest(PY~.,data=train_WP_PY)
PRM6<-randomForest(RY~.,data=train_WP_RY)
PRM7<-randomForest(TO~.,data=train_WP_TO)
PRM8<-randomForest(DFD~.,data=train_WP_DFD)
PRM9<-randomForest(DPY~.,data=train_WP_DPY)
PRM10<-randomForest(DRY~.,data=train_WP_DRY)
PRM11<-randomForest(DTO~.,data=train_WP_DTO)
PRM12<-randomForest(TT~.,data=train_WP_TT)
PRM13<-randomForest(CAY~.,data=train_WP_CAY)
PRM14<-randomForest(AGG~.,data=train_WP_AGG)
PRM15<-randomForest(LCAD~.,data=train_WP_LCAD)
PRM16<-randomForest(AYTS~.,data=train_WP_AYTS)
PRM17<-randomForest(ATT~.,data=train_WP_ATT)
PRM18<-randomForest(TD~.,data=train_WP_TD)
PRM19<-randomForest(INT~.,data=train_WP_INT)
PRM20<-randomForest(COMP~.,data=train_WP_COMP)
PRM21<-randomForest(RUSHATT~.,data=train_WP_RUSHATT)
PRM22<-randomForest(RUSHTD~.,data=train_WP_RUSHTD)
PRM23<-randomForest(EFF~.,data=train_WP_EFF)
PRM24<-randomForest(EM~.,data=train_WP_EM)
PRM25<-randomForest(TLOS~.,data=train_WP_TLOS)
PRM26<-randomForest(AVG~.,data=train_WP_AVG)
PRM27<-randomForest(CUSH~.,data=train_WP_CUSH)
PRM28<-randomForest(SEP~.,data=train_WP_SEP)
PRM29<-randomForest(TAY~.,data=train_WP_TAY)
PRM30<-randomForest(CTCH~.,data=train_WP_CTCH)
PRM31<-randomForest(YACR~.,data=train_WP_YACR)







# PDR71	<-	predict(	PRM1	,	newdata=	testWPoutcome	[	-	2	])
PDR72	<-	predict(	PRM2	,	newdata=	testWPTEAMS	[	-	4	])
PDR73	<-	predict(	PRM3	,	newdata=	testWPOPPS	[	-	5	])
PDR74	<-	predict(	PRM4	,	newdata=	testWPFD	[	-	6	])
PDR75	<-	predict(	PRM5	,	newdata=	testWPPY	[	-	7	])
PDR76	<-	predict(	PRM6	,	newdata=	testWPRY	[	-	8	])
PDR77	<-	predict(	PRM7	,	newdata=	testWPTO	[	-	9	])
PDR78	<-	predict(	PRM8	,	newdata=	testWPDFD	[	-	10	])
PDR79	<-	predict(	PRM9	,	newdata=	testWPDPY	[	-	11	])
PDR80	<-	predict(	PRM10	,	newdata=	testWPDRY	[	-	12	])
PDR81	<-	predict(	PRM11	,	newdata=	testWPDTO	[	-	13	])
PDR82	<-	predict(	PRM12	,	newdata=	testWPTT	[	-	14	])
PDR83	<-	predict(	PRM13	,	newdata=	testWPCAY	[	-	15	])
PDR84	<-	predict(	PRM14	,	newdata=	testWPAGG	[	-	16	])
PDR85	<-	predict(	PRM15	,	newdata=	testWPLCAD	[	-	17	])
PDR86	<-	predict(	PRM16	,	newdata=	testWPAYTS	[	-	18	])
PDR87	<-	predict(	PRM17	,	newdata=	testWPATT	[	-	19	])
PDR88	<-	predict(	PRM18	,	newdata=	testWPTD	[	-	20	])
PDR89	<-	predict(	PRM19	,	newdata=	testWPINT	[	-	21	])
PDR90	<-	predict(	PRM20	,	newdata=	testWPCOMP	[	-	22	])
PDR91	<-	predict(	PRM21	,	newdata=	testWPRUSHATT	[	-	24	])
PDR92	<-	predict(	PRM22	,	newdata=	testWPRUSHTD	[	-	25	])
PDR93	<-	predict(	PRM23	,	newdata=	testWPEFF	[	-	26	])
PDR94	<-	predict(	PRM24	,	newdata=	testWPEM	[	-	27	])
PDR95	<-	predict(	PRM25	,	newdata=	testWPTLOS	[	-	28	])
PDR96	<-	predict(	PRM26	,	newdata=	testWPAVG	[	-	29	])
PDR97	<-	predict(	PRM27	,	newdata=	testWPCUSH	[	-	30	])
PDR98	<-	predict(	PRM28	,	newdata=	testWPSEP	[	-	31	])
PDR99	<-	predict(	PRM29	,	newdata=	testWPTAY	[	-	32	])
PDR100	<-	predict(	PRM30	,	newdata=	testWPCTCH	[	-	33	])
PDR101	<-	predict(	PRM31	,	newdata=	testWPYACR	[	-	34	])





ND_WP<- WEEKLY_TEAM_PERFORMANCE[1,]

ND_WTP <- WTP[1,]

#predictions 

PLO1	<- 	predict(	CST1	,	ND_WTP	)
PLO2	<- 	predict(	CST2	,	ND_WTP	)
PLO3	<- 	predict(	CST3	,	ND_WTP	)
PLO4	<- 	predict(	CST4	,	ND_WTP	)
PLO5	<- 	predict(	CST5	,	ND_WTP	)
PLO6	<- 	predict(	CST6	,	ND_WTP	)
PLO7	<- 	predict(	CST7	,	ND_WTP	)
PLO8	<- 	predict(	CST8	,	ND_WTP	)
PLO9	<- 	predict(	CST9	,	ND_WTP	)
PLO10	<- 	predict(	CST10	,	ND_WTP	)
PLO11	<- 	predict(	CST11	,	ND_WTP	)
PLO12	<- 	predict(	CST12	,	ND_WTP	)
PLO13	<- 	predict(	CST13	,	ND_WTP	)
PLO14	<- 	predict(	CST14	,	ND_WTP	)
PLO15	<- 	predict(	CST15	,	ND_WTP	)
PLO16	<- 	predict(	CST16	,	ND_WTP	)
PLO17	<- 	predict(	CST17	,	ND_WTP	)
PLO18	<- 	predict(	CST18	,	ND_WTP	)
PLO19	<- 	predict(	CST19	,	ND_WTP	)
PLO20	<- 	predict(	CST20	,	ND_WTP	)
PLO21	<- 	predict(	CST21	,	ND_WTP	)
PLO22	<- 	predict(	CST22	,	ND_WTP	)
PLO23	<- 	predict(	CST23	,	ND_WTP	)
PLO24	<- 	predict(	CST24	,	ND_WTP	)
PLO25	<- 	predict(	CST25	,	ND_WTP	)
PLO26	<- 	predict(	CST26	,	ND_WTP	)
PLO27	<- 	predict(	CST27	,	ND_WTP	)
PLO28	<- 	predict(	CST28	,	ND_WTP	)
PLO29	<- 	predict(	CST29	,	ND_WTP	)
PLO30	<- 	predict(	CST30	,	ND_WTP	)
PLO31	<- 	predict(	CST31	,	ND_WTP	)
PLO32	<- 	predict(	CST32	,	ND_WP	)
PLO33	<- 	predict(	CST33	,	ND_WP	)
PLO34	<- 	predict(	CST34	,	ND_WP	)
PLO35	<- 	predict(	CST35	,	ND_WP	)
PLO36	<- 	predict(	CST36	,	ND_WP	)
PLO37	<- 	predict(	CST37	,	ND_WP	)
PLO38	<- 	predict(	CST38	,	ND_WP	)
PLO39	<- 	predict(	CST39	,	ND_WP	)
PLO40	<- 	predict(	CST40	,	ND_WP	)
PLO41	<- 	predict(	CST41	,	ND_WP	)
PLO42	<- 	predict(	CST42	,	ND_WP	)
PLO43	<- 	predict(	CST43	,	ND_WP	)
PLO44	<- 	predict(	CST44	,	ND_WP	)
PLO45	<- 	predict(	CST45	,	ND_WP	)
PLO46	<- 	predict(	CST46	,	ND_WP	)
PLO47	<- 	predict(	CST47	,	ND_WP	)
PLO48	<- 	predict(	CST48	,	ND_WP	)
PLO49	<- 	predict(	CST49	,	ND_WP	)
PLO50	<- 	predict(	CST50	,	ND_WP	)
PLO51	<- 	predict(	CST51	,	ND_WP	)
PLO52	<- 	predict(	CST52	,	ND_WP	)
PLO53	<- 	predict(	CST53	,	ND_WP	)
PLO54	<- 	predict(	CST54	,	ND_WP	)
PLO55	<- 	predict(	CST55	,	ND_WP	)
PLO56	<- 	predict(	CST56	,	ND_WP	)
PLO57	<- 	predict(	CST57	,	ND_WP	)
PLO58	<- 	predict(	CST58	,	ND_WP	)
PLO59	<- 	predict(	CST59	,	ND_WP	)
PLO60	<- 	predict(	CST60	,	ND_WP	)
PLO61	<- 	predict(	CST61	,	ND_WP	)
PLO62	<- 	predict(	CST62	,	ND_WP	)
PLT1	<- 	predict(	SLST1	,	ND_WTP	)
PLT2	<- 	predict(	SLST2	,	ND_WTP	)
PLT3	<- 	predict(	SLST3	,	ND_WTP	)
PLT4	<- 	predict(	SLST4	,	ND_WTP	)
PLT5	<- 	predict(	SLST5	,	ND_WTP	)
PLT6	<- 	predict(	SLST6	,	ND_WTP	)
PLT7	<- 	predict(	SLST7	,	ND_WTP	)
PLT8	<- 	predict(	SLST8	,	ND_WTP	)
PLT9	<- 	predict(	SLST9	,	ND_WTP	)
PLT10	<- 	predict(	SLST10	,	ND_WTP	)
PLT11	<- 	predict(	SLST11	,	ND_WTP	)
PLT12	<- 	predict(	SLST12	,	ND_WTP	)
PLT13	<- 	predict(	SLST13	,	ND_WTP	)
PLT14	<- 	predict(	SLST14	,	ND_WTP	)
PLT15	<- 	predict(	SLST15	,	ND_WTP	)
PLT16	<- 	predict(	SLST16	,	ND_WTP	)
PLT17	<- 	predict(	SLST17	,	ND_WTP	)
PLT18	<- 	predict(	SLST18	,	ND_WTP	)
PLT19	<- 	predict(	SLST19	,	ND_WTP	)
PLT20	<- 	predict(	SLST20	,	ND_WTP	)
PLT21	<- 	predict(	SLST21	,	ND_WTP	)
PLT22	<- 	predict(	SLST22	,	ND_WTP	)
PLT23	<- 	predict(	SLST23	,	ND_WTP	)
PLT24	<- 	predict(	SLST24	,	ND_WTP	)
PLT25	<- 	predict(	SLST25	,	ND_WTP	)
PLT26	<- 	predict(	SLST26	,	ND_WTP	)
PLT27	<- 	predict(	SLST27	,	ND_WTP	)
PLT28	<- 	predict(	SLST28	,	ND_WTP	)
PLT29	<- 	predict(	SLST29	,	ND_WTP	)
PLT30	<- 	predict(	SLST30	,	ND_WTP	)
PLT31	<- 	predict(	SLST31	,	ND_WTP	)
PLT32	<- 	predict(	SLST32	,	ND_WP	)
PLT33	<- 	predict(	SLST33	,	ND_WP	)
PLT34	<- 	predict(	SLST34	,	ND_WP	)
PLT35	<- 	predict(	SLST35	,	ND_WP	)
PLT36	<- 	predict(	SLST36	,	ND_WP	)
PLT37	<- 	predict(	SLST37	,	ND_WP	)
PLT38	<- 	predict(	SLST38	,	ND_WP	)
PLT39	<- 	predict(	SLST39	,	ND_WP	)
PLT40	<- 	predict(	SLST40	,	ND_WP	)
PLT41	<- 	predict(	SLST41	,	ND_WP	)
PLT42	<- 	predict(	SLST42	,	ND_WP	)
PLT43	<- 	predict(	SLST43	,	ND_WP	)
PLT44	<- 	predict(	SLST44	,	ND_WP	)
PLT45	<- 	predict(	SLST45	,	ND_WP	)
PLT46	<- 	predict(	SLST46	,	ND_WP	)
PLT47	<- 	predict(	SLST47	,	ND_WP	)
PLT48	<- 	predict(	SLST48	,	ND_WP	)
PLT49	<- 	predict(	SLST49	,	ND_WP	)
PLT50	<- 	predict(	SLST50	,	ND_WP	)
PLT51	<- 	predict(	SLST51	,	ND_WP	)
PLT52	<- 	predict(	SLST52	,	ND_WP	)
PLT53	<- 	predict(	SLST53	,	ND_WP	)
PLT54	<- 	predict(	SLST54	,	ND_WP	)
PLT55	<- 	predict(	SLST55	,	ND_WP	)
PLT56	<- 	predict(	SLST56	,	ND_WP	)
PLT57	<- 	predict(	SLST57	,	ND_WP	)
PLT58	<- 	predict(	SLST58	,	ND_WP	)
PLT59	<- 	predict(	SLST59	,	ND_WP	)
PLT60	<- 	predict(	SLST60	,	ND_WP	)
PLT61	<- 	predict(	SLST61	,	ND_WP	)
PLT62	<- 	predict(	SLST62	,	ND_WP	)
PLA1	<- 	predict(	ADJNLM1	,	ND_WTP	)
PLA2	<- 	predict(	ADJNLM2	,	ND_WTP	)
PLA3	<- 	predict(	ADJNLM3	,	ND_WTP	)
PLA4	<- 	predict(	ADJNLM4	,	ND_WTP	)
PLA5	<- 	predict(	ADJNLM5	,	ND_WTP	)
PLA6	<- 	predict(	ADJNLM6	,	ND_WTP	)
PLA7	<- 	predict(	ADJNLM7	,	ND_WTP	)
PLA8	<- 	predict(	ADJNLM8	,	ND_WTP	)
PLA9	<- 	predict(	ADJNLM9	,	ND_WTP	)
PLA10	<- 	predict(	ADJNLM10	,	ND_WTP	)
PLA11	<- 	predict(	ADJNLM11	,	ND_WTP	)
PLA12	<- 	predict(	ADJNLM12	,	ND_WTP	)
PLA13	<- 	predict(	ADJNLM13	,	ND_WTP	)
PLA14	<- 	predict(	ADJNLM14	,	ND_WTP	)
PLA15	<- 	predict(	ADJNLM15	,	ND_WTP	)
PLA16	<- 	predict(	ADJNLM16	,	ND_WTP	)
PLA17	<- 	predict(	ADJNLM17	,	ND_WTP	)
PLA18	<- 	predict(	ADJNLM18	,	ND_WTP	)
PLA19	<- 	predict(	ADJNLM19	,	ND_WTP	)
PLA20	<- 	predict(	ADJNLM20	,	ND_WTP	)
PLA21	<- 	predict(	ADJNLM21	,	ND_WTP	)
PLA22	<- 	predict(	ADJNLM22	,	ND_WTP	)
PLA23	<- 	predict(	ADJNLM23	,	ND_WTP	)
PLA24	<- 	predict(	ADJNLM24	,	ND_WTP	)
PLA25	<- 	predict(	ADJNLM25	,	ND_WTP	)
PLA26	<- 	predict(	ADJNLM26	,	ND_WTP	)
PLA27	<- 	predict(	ADJNLM27	,	ND_WTP	)
PLA28	<- 	predict(	ADJNLM28	,	ND_WTP	)
PLA29	<- 	predict(	ADJNLM29	,	ND_WTP	)
PLA30	<- 	predict(	ADJNLM30	,	ND_WTP	)
PLA31	<- 	predict(	ADJNLM31	,	ND_WTP	)
PLA32	<- 	predict(	ADJNLM32	,	ND_WP	)
PLA33	<- 	predict(	ADJNLM33	,	ND_WP	)
PLA34	<- 	predict(	ADJNLM34	,	ND_WP	)
PLA35	<- 	predict(	ADJNLM35	,	ND_WP	)
PLA36	<- 	predict(	ADJNLM36	,	ND_WP	)
PLA37	<- 	predict(	ADJNLM37	,	ND_WP	)
PLA38	<- 	predict(	ADJNLM38	,	ND_WP	)
PLA39	<- 	predict(	ADJNLM39	,	ND_WP	)
PLA40	<- 	predict(	ADJNLM40	,	ND_WP	)
PLA41	<- 	predict(	ADJNLM41	,	ND_WP	)
PLA42	<- 	predict(	ADJNLM42	,	ND_WP	)
PLA43	<- 	predict(	ADJNLM43	,	ND_WP	)
PLA44	<- 	predict(	ADJNLM44	,	ND_WP	)
PLA45	<- 	predict(	ADJNLM45	,	ND_WP	)
PLA46	<- 	predict(	ADJNLM46	,	ND_WP	)
PLA47	<- 	predict(	ADJNLM47	,	ND_WP	)
PLA48	<- 	predict(	ADJNLM48	,	ND_WP	)
PLA49	<- 	predict(	ADJNLM49	,	ND_WP	)
PLA50	<- 	predict(	ADJNLM50	,	ND_WP	)
PLA51	<- 	predict(	ADJNLM51	,	ND_WP	)
PLA52	<- 	predict(	ADJNLM52	,	ND_WP	)
PLA53	<- 	predict(	ADJNLM53	,	ND_WP	)
PLA54	<- 	predict(	ADJNLM54	,	ND_WP	)
PLA55	<- 	predict(	ADJNLM55	,	ND_WP	)
PLA56	<- 	predict(	ADJNLM56	,	ND_WP	)
PLA57	<- 	predict(	ADJNLM57	,	ND_WP	)
PLA58	<- 	predict(	ADJNLM58	,	ND_WP	)
PLA59	<- 	predict(	ADJNLM59	,	ND_WP	)
PLA60	<- 	predict(	ADJNLM60	,	ND_WP	)
PLA61	<- 	predict(	ADJNLM61	,	ND_WP	)
PLA62	<- 	predict(	ADJNLM62	,	ND_WP	)






AWTP <- subset(WEEKLY_TEAM_PERFORMANCE,select=c(TT,	CAY,AGG,AYTS,COMP,Week,EFF,EM,TLOS,AVG,CUSH,SEP,	TAY,CTCH,YACR
)) 

# first models

NAD12	<- 	lm(	TT	~.	, data = 	AWTP	)
NAD13	<- 	lm(	CAY	~.	, data = 	AWTP	)
NAD14	<- 	lm(	AGG	~.	, data = 	AWTP	)
NAD16	<- 	lm(	AYTS	~.	, data = 	AWTP	)
NAD20	<- 	lm(	COMP	~.	, data = 	AWTP	)
NAD23	<- 	lm(	EFF	~.	, data = 	AWTP	)
NAD24	<- 	lm(	EM	~.	, data = 	AWTP	)
NAD25	<- 	lm(	TLOS	~.	, data = 	AWTP	)
NAD26	<- 	lm(	AVG	~.	, data = 	AWTP	)
NAD27	<- 	lm(	CUSH	~.	, data = 	AWTP	)
NAD28	<- 	lm(	SEP	~.	, data = 	AWTP	)
NAD29	<- 	lm(	TAY	~.	, data = 	AWTP	)
NAD30	<- 	lm(	CTCH	~.	, data = 	AWTP	)
NAD31	<- 	lm(	YACR	~.	, data = 	AWTP	)

NAD1	<- 	lm(	outcome	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD2	<- 	lm(	TEAMS	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD3	<- 	lm(	OPPS	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD4	<- 	lm(	FD	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD5	<- 	lm(	PY	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD6	<- 	lm(	RY	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD7	<- 	lm(	TO	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD8	<- 	lm(	DFD	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD9	<- 	lm(	DPY	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD10	<- 	lm(	DRY	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD11	<- 	lm(	DTO	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD15	<- 	lm(	LCAD	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD17	<- 	lm(	ATT	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD18	<- 	lm(	TD	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD19	<- 	lm(	INT	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD21	<- 	lm(	RUSHATT	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)
NAD22	<- 	lm(	RUSHTD	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WEEKLY_TEAM_PERFORMANCE	)

# stepvif
VFA1	<-	stepVIF(	NAD1	)
VFA2	<-	stepVIF(	NAD2	)
VFA3	<-	stepVIF(	NAD3	)
VFA4	<-	stepVIF(	NAD4	)
VFA5	<-	stepVIF(	NAD5	)
VFA6	<-	stepVIF(	NAD6	)
VFA7	<-	stepVIF(	NAD7	)
VFA8	<-	stepVIF(	NAD8	)
VFA9	<-	stepVIF(	NAD9	)
VFA10	<-	stepVIF(	NAD10	)
VFA11	<-	stepVIF(	NAD11	)
VFA12	<-	stepVIF(	NAD12	)
VFA13	<-	stepVIF(	NAD13	)
VFA14	<-	stepVIF(	NAD14	)
VFA15	<-	stepVIF(	NAD15	)
VFA16	<-	stepVIF(	NAD16	)
VFA17	<-	stepVIF(	NAD17	)
VFA18	<-	stepVIF(	NAD18	)
VFA19	<-	stepVIF(	NAD19	)
VFA20	<-	stepVIF(	NAD20	)
VFA21	<-	stepVIF(	NAD21	)
VFA22	<-	stepVIF(	NAD22	)
VFA23	<-	stepVIF(	NAD23	)
VFA24	<-	stepVIF(	NAD24	)
VFA25	<-	stepVIF(	NAD25	)
VFA26	<-	stepVIF(	NAD26	)
VFA27	<-	stepVIF(	NAD27	)
VFA28	<-	stepVIF(	NAD28	)
VFA29	<-	stepVIF(	NAD29	)
VFA30	<-	stepVIF(	NAD30	)
VFA31	<-	stepVIF(	NAD31	)




# REGSUBSETS

ANRS1	<-	regsubsets(	outcome	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS2	<-	regsubsets(	TEAMS	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS3	<-	regsubsets(	OPPS	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS4	<-	regsubsets(	FD	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS5	<-	regsubsets(	PY	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS6	<-	regsubsets(	RY	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS7	<-	regsubsets(	TO	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS8	<-	regsubsets(	DFD	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS9	<-	regsubsets(	DPY	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS10	<-	regsubsets(	DRY	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS11	<-	regsubsets(	DTO	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS12	<-	regsubsets(	TT	~	.	 ,data=	AWTP	)
ANRS13	<-	regsubsets(	CAY	~	.	 ,data=	AWTP	)
ANRS14	<-	regsubsets(	AGG	~	.	 ,data=	AWTP	)
ANRS15	<-	regsubsets(	LCAD	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS16	<-	regsubsets(	AYTS	~	.	 ,data=	AWTP	)
ANRS17	<-	regsubsets(	ATT	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS18	<-	regsubsets(	TD	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS19	<-	regsubsets(	INT	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS20	<-	regsubsets(	COMP	~	.	 ,data=	AWTP	)
ANRS21	<-	regsubsets(	RUSHATT	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS22	<-	regsubsets(	RUSHTD	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WEEKLY_TEAM_PERFORMANCE	)
ANRS23	<-	regsubsets(	EFF	~	.	 ,data=	AWTP	)
ANRS24	<-	regsubsets(	EM	~	.	 ,data=	AWTP	)
ANRS25	<-	regsubsets(	TLOS	~	.	 ,data=	AWTP	)
ANRS26	<-	regsubsets(	AVG	~	.	 ,data=	AWTP	)
ANRS27	<-	regsubsets(	CUSH	~	.	 ,data=	AWTP	)
ANRS28	<-	regsubsets(	SEP	~	.	 ,data=	AWTP	)
ANRS29	<-	regsubsets(	TAY	~	.	 ,data=	AWTP	)
ANRS30	<-	regsubsets(	CTCH	~	.	 ,data=	AWTP	)
ANRS31	<-	regsubsets(	YACR	~	.	 ,data=	AWTP	)


J1	<-	order(summary(	ANRS1	)$adjr2,decreasing=T)[1]		
J2	<-	order(summary(	ANRS2	)$adjr2,decreasing=T)[1]		
J3	<-	order(summary(	ANRS3	)$adjr2,decreasing=T)[1]		
J4	<-	order(summary(	ANRS4	)$adjr2,decreasing=T)[1]		
J5	<-	order(summary(	ANRS5	)$adjr2,decreasing=T)[1]		
J6	<-	order(summary(	ANRS6	)$adjr2,decreasing=T)[1]		
J7	<-	order(summary(	ANRS7	)$adjr2,decreasing=T)[1]		
J8	<-	order(summary(	ANRS8	)$adjr2,decreasing=T)[1]		
J9	<-	order(summary(	ANRS9	)$adjr2,decreasing=T)[1]		
J10	<-	order(summary(	ANRS10	)$adjr2,decreasing=T)[1]		
J11	<-	order(summary(	ANRS11	)$adjr2,decreasing=T)[1]		
J12	<-	order(summary(	ANRS12	)$adjr2,decreasing=T)[1]		
J13	<-	order(summary(	ANRS13	)$adjr2,decreasing=T)[1]		
J14	<-	order(summary(	ANRS14	)$adjr2,decreasing=T)[1]		
J15	<-	order(summary(	ANRS15	)$adjr2,decreasing=T)[1]		
J16	<-	order(summary(	ANRS16	)$adjr2,decreasing=T)[1]		
J17	<-	order(summary(	ANRS17	)$adjr2,decreasing=T)[1]		
J18	<-	order(summary(	ANRS18	)$adjr2,decreasing=T)[1]		
J19	<-	order(summary(	ANRS19	)$adjr2,decreasing=T)[1]		
J20	<-	order(summary(	ANRS20	)$adjr2,decreasing=T)[1]		
J21	<-	order(summary(	ANRS21	)$adjr2,decreasing=T)[1]		
J22	<-	order(summary(	ANRS22	)$adjr2,decreasing=T)[1]		
J23	<-	order(summary(	ANRS23	)$adjr2,decreasing=T)[1]		
J24	<-	order(summary(	ANRS24	)$adjr2,decreasing=T)[1]		
J25	<-	order(summary(	ANRS25	)$adjr2,decreasing=T)[1]		
J26	<-	order(summary(	ANRS26	)$adjr2,decreasing=T)[1]		
J27	<-	order(summary(	ANRS27	)$adjr2,decreasing=T)[1]		
J28	<-	order(summary(	ANRS28	)$adjr2,decreasing=T)[1]		
J29	<-	order(summary(	ANRS29	)$adjr2,decreasing=T)[1]		
J30	<-	order(summary(	ANRS30	)$adjr2,decreasing=T)[1]		
J31	<-	order(summary(	ANRS31	)$adjr2,decreasing=T)[1]		


NALR1	<-	lm.regsubsets(	ANRS1	,	J1	)
NALR2	<-	lm.regsubsets(	ANRS2	,	J2	)
NALR3	<-	lm.regsubsets(	ANRS3	,	J3	)
NALR4	<-	lm.regsubsets(	ANRS4	,	J4	)
NALR5	<-	lm.regsubsets(	ANRS5	,	J5	)
NALR6	<-	lm.regsubsets(	ANRS6	,	J6	)
NALR7	<-	lm.regsubsets(	ANRS7	,	J7	)
NALR8	<-	lm.regsubsets(	ANRS8	,	J8	)
NALR9	<-	lm.regsubsets(	ANRS9	,	J9	)
NALR10	<-	lm.regsubsets(	ANRS10	,	J10	)
NALR11	<-	lm.regsubsets(	ANRS11	,	J11	)
NALR12	<-	lm.regsubsets(	ANRS12	,	J12	)
NALR13	<-	lm.regsubsets(	ANRS13	,	J13	)
NALR14	<-	lm.regsubsets(	ANRS14	,	J14	)
NALR15	<-	lm.regsubsets(	ANRS15	,	J15	)
NALR16	<-	lm.regsubsets(	ANRS16	,	J16	)
NALR17	<-	lm.regsubsets(	ANRS17	,	J17	)
NALR18	<-	lm.regsubsets(	ANRS18	,	J18	)
NALR19	<-	lm.regsubsets(	ANRS19	,	J19	)
NALR20	<-	lm.regsubsets(	ANRS20	,	J20	)
NALR21	<-	lm.regsubsets(	ANRS21	,	J21	)
NALR22	<-	lm.regsubsets(	ANRS22	,	J22	)
NALR23	<-	lm.regsubsets(	ANRS23	,	J23	)
NALR24	<-	lm.regsubsets(	ANRS24	,	J24	)
NALR25	<-	lm.regsubsets(	ANRS25	,	J25	)
NALR26	<-	lm.regsubsets(	ANRS26	,	J26	)
NALR27	<-	lm.regsubsets(	ANRS27	,	J27	)
NALR28	<-	lm.regsubsets(	ANRS28	,	J28	)
NALR29	<-	lm.regsubsets(	ANRS29	,	J29	)
NALR30	<-	lm.regsubsets(	ANRS30	,	J30	)
NALR31	<-	lm.regsubsets(	ANRS31	,	J31	)


ANLR1	<-	lm.regsubsets(	ANRS1	,	6	)
ANLR2	<-	lm.regsubsets(	ANRS2	,	6	)
ANLR3	<-	lm.regsubsets(	ANRS3	,	6	)
ANLR4	<-	lm.regsubsets(	ANRS4	,	6	)
ANLR5	<-	lm.regsubsets(	ANRS5	,	6	)
ANLR6	<-	lm.regsubsets(	ANRS6	,	6	)
ANLR7	<-	lm.regsubsets(	ANRS7	,	6	)
ANLR8	<-	lm.regsubsets(	ANRS8	,	6	)
ANLR9	<-	lm.regsubsets(	ANRS9	,	6	)
ANLR10	<-	lm.regsubsets(	ANRS10	,	6	)
ANLR11	<-	lm.regsubsets(	ANRS11	,	6	)
ANLR12	<-	lm.regsubsets(	ANRS12	,	6	)
ANLR13	<-	lm.regsubsets(	ANRS13	,	6	)
ANLR14	<-	lm.regsubsets(	ANRS14	,	6	)
ANLR15	<-	lm.regsubsets(	ANRS15	,	6	)
ANLR16	<-	lm.regsubsets(	ANRS16	,	6	)
ANLR17	<-	lm.regsubsets(	ANRS17	,	6	)
ANLR18	<-	lm.regsubsets(	ANRS18	,	6	)
ANLR19	<-	lm.regsubsets(	ANRS19	,	6	)
ANLR20	<-	lm.regsubsets(	ANRS20	,	6	)
ANLR21	<-	lm.regsubsets(	ANRS21	,	6	)
ANLR22	<-	lm.regsubsets(	ANRS22	,	6	)
ANLR23	<-	lm.regsubsets(	ANRS23	,	6	)
ANLR24	<-	lm.regsubsets(	ANRS24	,	6	)
ANLR25	<-	lm.regsubsets(	ANRS25	,	6	)
ANLR26	<-	lm.regsubsets(	ANRS26	,	6	)
ANLR27	<-	lm.regsubsets(	ANRS27	,	6	)
ANLR28	<-	lm.regsubsets(	ANRS28	,	6	)
ANLR29	<-	lm.regsubsets(	ANRS29	,	6	)
ANLR30	<-	lm.regsubsets(	ANRS30	,	6	)
ANLR31	<-	lm.regsubsets(	ANRS31	,	6	)



#calls

FFLR1<-NALR1$call
FFLR2<-NALR2$call
FFLR3<-NALR3$call
FFLR4<-NALR4$call
FFLR5<-NALR5$call
FFLR6<-NALR6$call
FFLR7<-NALR7$call
FFLR8<-NALR8$call
FFLR9<-NALR9$call
FFLR10<-NALR10$call
FFLR11<-NALR11$call
FFLR12<-NALR12$call
FFLR13<-NALR13$call
FFLR14<-NALR14$call
FFLR15<-NALR15$call
FFLR16<-NALR16$call
FFLR17<-NALR17$call
FFLR18<-NALR18$call
FFLR19<-NALR19$call
FFLR20<-NALR20$call
FFLR21<-NALR21$call
FFLR22<-NALR22$call
FFLR23<-NALR23$call
FFLR24<-NALR24$call
FFLR25<-NALR25$call
FFLR26<-NALR26$call
FFLR27<-NALR27$call
FFLR28<-NALR28$call
FFLR29<-NALR29$call
FFLR30<-NALR30$call
FFLR31<-NALR31$call

FTLR1<-ANLR1$call
FTLR2<-ANLR2$call
FTLR3<-ANLR3$call
FTLR4<-ANLR4$call
FTLR5<-ANLR5$call
FTLR6<-ANLR6$call
FTLR7<-ANLR7$call
FTLR8<-ANLR8$call
FTLR9<-ANLR9$call
FTLR10<-ANLR10$call
FTLR11<-ANLR11$call
FTLR12<-ANLR12$call
FTLR13<-ANLR13$call
FTLR14<-ANLR14$call
FTLR15<-ANLR15$call
FTLR16<-ANLR16$call
FTLR17<-ANLR17$call
FTLR18<-ANLR18$call
FTLR19<-ANLR19$call
FTLR20<-ANLR20$call
FTLR21<-ANLR21$call
FTLR22<-ANLR22$call
FTLR23<-ANLR23$call
FTLR24<-ANLR24$call
FTLR25<-ANLR25$call
FTLR26<-ANLR26$call
FTLR27<-ANLR27$call
FTLR28<-ANLR28$call
FTLR29<-ANLR29$call
FTLR30<-ANLR30$call
FTLR31<-ANLR31$call






# NEW MODELS


NFM1	<-	lm(formula=outcome~AGG+AYTS+COMP+EFF+EM+CUSH+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
NFM2	<-	lm(formula=TEAMS~TT+CAY+AYTS+COMP+AVG+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
NFM3	<-	lm(formula=OPPS~AGG+Week+EFF+EM+AVG+CUSH,data=WEEKLY_TEAM_PERFORMANCE)
NFM4	<-	lm(formula=FD~TT+AYTS+COMP+Week+AVG+CUSH+TAY+CTCH,data=WEEKLY_TEAM_PERFORMANCE)
NFM5	<-	lm(formula=PY~TT+CAY+AYTS+COMP+AVG+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
NFM6	<-	lm(formula=RY~TT+AGG+AYTS+COMP+AVG+CUSH+TAY+YACR,data=WEEKLY_TEAM_PERFORMANCE)
NFM7	<-	lm(formula=TO~CAY+AYTS+EFF+EM+AVG+CUSH+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
NFM8	<-	lm(formula=DFD~CAY+AGG+COMP+AVG,data=WEEKLY_TEAM_PERFORMANCE)
NFM9	<-	lm(formula=DPY~CAY+AGG+TLOS+CTCH,data=WEEKLY_TEAM_PERFORMANCE)
NFM10	<-	lm(formula=DRY~Week+TLOS+AVG+CUSH+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
NFM11	<-	lm(formula=DTO~Week+EFF+EM,data=WEEKLY_TEAM_PERFORMANCE)
NFM12	<-	lm(formula=TT~CAY+AGG+COMP+Week+EM+TLOS+SEP+TAY,data=AWTP)
NFM13	<-	lm(formula=CAY~TT+AYTS+COMP+TLOS+SEP+TAY+CTCH,data=AWTP)
NFM14	<-	lm(formula=AGG~TT+AYTS+COMP+EFF+CUSH+SEP+TAY+YACR,data=AWTP)
NFM15	<-	lm(formula=LCAD~TT+CAY+AYTS+AVG+CUSH+SEP+TAY+YACR,data=WEEKLY_TEAM_PERFORMANCE)
NFM16	<-	lm(formula=AYTS~CAY+AGG+COMP+Week+TLOS+SEP+TAY+YACR,data=AWTP)
NFM17	<-	lm(formula=ATT~TT+AYTS+COMP+Week+AVG+CUSH+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
NFM18	<-	lm(formula=TD~CAY+AYTS+COMP+Week+EFF+AVG+TAY+YACR,data=WEEKLY_TEAM_PERFORMANCE)
NFM19	<-	lm(formula=INT~TT+AYTS+COMP+Week+AVG+TAY,data=WEEKLY_TEAM_PERFORMANCE)
NFM20	<-	lm(formula=COMP~TT+CAY+AGG+AYTS+Week+TLOS+TAY+CTCH,data=AWTP)
NFM21	<-	lm(formula=RUSHATT~AGG+AYTS+Week+EFF+AVG+SEP+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
NFM22	<-	lm(formula=RUSHTD~AGG+COMP+EM+TLOS+AVG+SEP+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE)
NFM23	<-	lm(formula=EFF~AGG+TLOS+AVG+SEP+YACR,data=AWTP)
NFM24	<-	lm(formula=EM~TT+COMP+CTCH+YACR,data=AWTP)
NFM25	<-	lm(formula=TLOS~TT+CAY+AYTS+COMP+EFF+AVG+CUSH+CTCH,data=AWTP)
NFM26	<-	lm(formula=AVG~Week+EFF+TLOS+YACR,data=AWTP)
NFM27	<-	lm(formula=CUSH~AGG+Week+EFF+TLOS+SEP+TAY+YACR,data=AWTP)
NFM28	<-	lm(formula=SEP~CAY+AGG+AYTS+EFF+CUSH+TAY+CTCH+YACR,data=AWTP)
NFM29	<-	lm(formula=TAY~TT+AGG+AYTS+COMP+Week+CUSH+SEP+CTCH,data=AWTP)
NFM30	<-	lm(formula=CTCH~CAY+COMP+EM+TLOS+AVG+SEP+TAY+YACR,data=AWTP)
NFM31	<-	lm(formula=YACR~AGG+COMP+EFF+EM+AVG+CUSH+SEP+CTCH,data=AWTP)


#GLM MODELS
NALM1	<-	lm(formula = outcome ~ AGG + EFF + EM + CUSH + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE)
NALM2	<-	lm(formula = TEAMS ~ TT + CAY + COMP + Week + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE)
NALM3	<-	lm(formula = OPPS ~ AGG + Week + EFF + EM + AVG + CUSH, data = WEEKLY_TEAM_PERFORMANCE)
NALM4	<-	lm(formula = FD ~ TT + AYTS + COMP + AVG + TAY + CTCH, data = WEEKLY_TEAM_PERFORMANCE)
NALM5	<-	lm(formula = PY ~ TT + CAY + COMP + AVG + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE)
NALM6	<-	lm(formula = RY ~ AGG + AYTS + COMP + AVG + TAY + YACR, data = WEEKLY_TEAM_PERFORMANCE)
NALM7	<-	lm(formula = TO ~ CAY + AYTS + EM + CUSH + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE)
NALM8	<-	lm(formula = DFD ~ CAY + AGG + COMP + AVG + SEP + TAY, data = WEEKLY_TEAM_PERFORMANCE)
NALM9	<-	lm(formula = DPY ~ CAY + AGG + COMP + EM + TLOS + CTCH, data = WEEKLY_TEAM_PERFORMANCE)
NALM10	<-	lm(formula = DRY ~ Week + TLOS + AVG + CUSH + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE)
NALM11	<-	lm(formula = DTO ~ CAY + AGG + Week + EFF + EM + TLOS, data = WEEKLY_TEAM_PERFORMANCE)
NALM12	<-	lm(formula = TT ~ CAY + AGG + COMP + Week + EM + TLOS, data = AWTP)
NALM13	<-	lm(formula = CAY ~ TT + AYTS + COMP + TLOS + SEP + CTCH, data = AWTP)
NALM14	<-	lm(formula = AGG ~ TT + AYTS + COMP + EFF + SEP + TAY, data = AWTP)
NALM15	<-	lm(formula = LCAD ~ TT + CAY + CUSH + SEP + TAY + YACR, data = WEEKLY_TEAM_PERFORMANCE)
NALM16	<-	lm(formula = AYTS ~ CAY + AGG + COMP + TLOS + SEP + TAY, data = AWTP)
NALM17	<-	lm(formula = ATT ~ TT + AYTS + Week + AVG + CUSH + YACR, data = WEEKLY_TEAM_PERFORMANCE)
NALM18	<-	lm(formula = TD ~ CAY + AYTS + COMP + AVG + TAY + YACR, data = WEEKLY_TEAM_PERFORMANCE)
NALM19	<-	lm(formula = INT ~ TT + AYTS + COMP + Week + AVG + TAY, data = WEEKLY_TEAM_PERFORMANCE)
NALM20	<-	lm(formula = COMP ~ TT + CAY + AGG + AYTS + TLOS + CTCH, data = AWTP)
NALM21	<-	lm(formula = RUSHATT ~ AGG + EFF + AVG + SEP + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE)
NALM22	<-	lm(formula = RUSHTD ~ AGG + EM + AVG + SEP + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE)
NALM23	<-	lm(formula = EFF ~ AGG + TLOS + AVG + CUSH + SEP + YACR, data = AWTP)
NALM24	<-	lm(formula = EM ~ TT + AGG + COMP + Week + CTCH + YACR, data = AWTP)
NALM25	<-	lm(formula = TLOS ~ TT + CAY + AYTS + COMP + EFF + CUSH, data = AWTP)
NALM26	<-	lm(formula = AVG ~ TT + Week + EFF + EM + TLOS + YACR, data = AWTP)
NALM27	<-	lm(formula = CUSH ~ Week + EFF + TLOS + SEP + TAY + YACR, data = AWTP)
NALM28	<-	lm(formula = SEP ~ AGG + AYTS + CUSH + TAY + CTCH + YACR, data = AWTP)
NALM29	<-	lm(formula = TAY ~ AGG + AYTS + Week + CUSH + SEP + CTCH, data = AWTP)
NALM30	<-	lm(formula = CTCH ~ CAY + COMP + EM + SEP + TAY + YACR, data = AWTP)
NALM31	<-	lm(formula = YACR ~ AGG + EFF + EM + AVG + CUSH + SEP, data = AWTP)





# NEW MODELS


AKD1	<-	lm(formula=outcome~AGG*AYTS*COMP*EFF*EM*CUSH*CTCH*YACR,data=WEEKLY_TEAM_PERFORMANCE)
AKD2	<-	lm(formula=TEAMS~TT*CAY*AYTS*COMP*AVG*TAY*CTCH*YACR,data=WEEKLY_TEAM_PERFORMANCE)
AKD3	<-	lm(formula=OPPS~AGG*Week*EFF*EM*AVG*CUSH,data=WEEKLY_TEAM_PERFORMANCE)
AKD4	<-	lm(formula=FD~TT*AYTS*COMP*Week*AVG*CUSH*TAY*CTCH,data=WEEKLY_TEAM_PERFORMANCE)
AKD5	<-	lm(formula=PY~TT*CAY*AYTS*COMP*AVG*TAY*CTCH*YACR,data=WEEKLY_TEAM_PERFORMANCE)
AKD6	<-	lm(formula=RY~TT*AGG*AYTS*COMP*AVG*CUSH*TAY*YACR,data=WEEKLY_TEAM_PERFORMANCE)
AKD7	<-	lm(formula=TO~CAY*AYTS*EFF*EM*AVG*CUSH*CTCH*YACR,data=WEEKLY_TEAM_PERFORMANCE)
AKD8	<-	lm(formula=DFD~CAY*AGG*COMP*AVG,data=WEEKLY_TEAM_PERFORMANCE)
AKD9	<-	lm(formula=DPY~CAY*AGG*TLOS*CTCH,data=WEEKLY_TEAM_PERFORMANCE)
AKD10	<-	lm(formula=DRY~Week*TLOS*AVG*CUSH*CTCH*YACR,data=WEEKLY_TEAM_PERFORMANCE)
AKD11	<-	lm(formula=DTO~Week*EFF*EM,data=WEEKLY_TEAM_PERFORMANCE)
AKD12	<-	lm(formula=TT~CAY*AGG*COMP*Week*EM*TLOS*SEP*TAY,data=AWTP)
AKD13	<-	lm(formula=CAY~TT*AYTS*COMP*TLOS*SEP*TAY*CTCH,data=AWTP)
AKD14	<-	lm(formula=AGG~TT*AYTS*COMP*EFF*CUSH*SEP*TAY*YACR,data=AWTP)
AKD15	<-	lm(formula=LCAD~TT*CAY*AYTS*AVG*CUSH*SEP*TAY*YACR,data=WEEKLY_TEAM_PERFORMANCE)
AKD16	<-	lm(formula=AYTS~CAY*AGG*COMP*Week*TLOS*SEP*TAY*YACR,data=AWTP)
AKD17	<-	lm(formula=ATT~TT*AYTS*COMP*Week*AVG*CUSH*CTCH*YACR,data=WEEKLY_TEAM_PERFORMANCE)
AKD18	<-	lm(formula=TD~CAY*AYTS*COMP*Week*EFF*AVG*TAY*YACR,data=WEEKLY_TEAM_PERFORMANCE)
AKD19	<-	lm(formula=INT~TT*AYTS*COMP*Week*AVG*TAY,data=WEEKLY_TEAM_PERFORMANCE)
AKD20	<-	lm(formula=COMP~TT*CAY*AGG*AYTS*Week*TLOS*TAY*CTCH,data=AWTP)
AKD21	<-	lm(formula=RUSHATT~AGG*AYTS*Week*EFF*AVG*SEP*CTCH*YACR,data=WEEKLY_TEAM_PERFORMANCE)
AKD22	<-	lm(formula=RUSHTD~AGG*COMP*EM*TLOS*AVG*SEP*CTCH*YACR,data=WEEKLY_TEAM_PERFORMANCE)
AKD23	<-	lm(formula=EFF~AGG*TLOS*AVG*SEP*YACR,data=AWTP)
AKD24	<-	lm(formula=EM~TT*COMP*CTCH*YACR,data=AWTP)
AKD25	<-	lm(formula=TLOS~TT*CAY*AYTS*COMP*EFF*AVG*CUSH*CTCH,data=AWTP)
AKD26	<-	lm(formula=AVG~Week*EFF*TLOS*YACR,data=AWTP)
AKD27	<-	lm(formula=CUSH~AGG*Week*EFF*TLOS*SEP*TAY*YACR,data=AWTP)
AKD28	<-	lm(formula=SEP~CAY*AGG*AYTS*EFF*CUSH*TAY*CTCH*YACR,data=AWTP)
AKD29	<-	lm(formula=TAY~TT*AGG*AYTS*COMP*Week*CUSH*SEP*CTCH,data=AWTP)
AKD30	<-	lm(formula=CTCH~CAY*COMP*EM*TLOS*AVG*SEP*TAY*YACR,data=AWTP)
AKD31	<-	lm(formula=YACR~AGG*COMP*EFF*EM*AVG*CUSH*SEP*CTCH,data=AWTP)






RAF1	<-	lm(formula=outcome~(AGG+AYTS+COMP+EFF+EM+CUSH+CTCH+YACR)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF2	<-	lm(formula=TEAMS~(TT+CAY+AYTS+COMP+AVG+TAY+CTCH+YACR)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF3	<-	lm(formula=OPPS~(AGG+Week+EFF+EM+AVG+CUSH)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF4	<-	lm(formula=FD~(TT+AYTS+COMP+Week+AVG+CUSH+TAY+CTCH)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF5	<-	lm(formula=PY~(TT+CAY+AYTS+COMP+AVG+TAY+CTCH+YACR)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF6	<-	lm(formula=RY~(TT+AGG+AYTS+COMP+AVG+CUSH+TAY+YACR)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF7	<-	lm(formula=TO~(CAY+AYTS+EFF+EM+AVG+CUSH+CTCH+YACR)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF8	<-	lm(formula=DFD~(CAY+AGG+COMP+AVG)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF9	<-	lm(formula=DPY~(CAY+AGG+TLOS+CTCH)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF10	<-	lm(formula=DRY~(Week+TLOS+AVG+CUSH+CTCH+YACR)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF11	<-	lm(formula=DTO~(Week+EFF+EM)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF12	<-	lm(formula=TT~(CAY+AGG+COMP+Week+EM+TLOS+SEP+TAY)^2,data=AWTP)
RAF13	<-	lm(formula=CAY~(TT+AYTS+COMP+TLOS+SEP+TAY+CTCH)^2,data=AWTP)
RAF14	<-	lm(formula=AGG~(TT+AYTS+COMP+EFF+CUSH+SEP+TAY+YACR)^2,data=AWTP)
RAF15	<-	lm(formula=LCAD~(TT+CAY+AYTS+AVG+CUSH+SEP+TAY+YACR)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF16	<-	lm(formula=AYTS~(CAY+AGG+COMP+Week+TLOS+SEP+TAY+YACR)^2,data=AWTP)
RAF17	<-	lm(formula=ATT~(TT+AYTS+COMP+Week+AVG+CUSH+CTCH+YACR)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF18	<-	lm(formula=TD~(CAY+AYTS+COMP+Week+EFF+AVG+TAY+YACR)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF19	<-	lm(formula=INT~(TT+AYTS+COMP+Week+AVG+TAY)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF20	<-	lm(formula=COMP~(TT+CAY+AGG+AYTS+Week+TLOS+TAY+CTCH)^2,data=AWTP)
RAF21	<-	lm(formula=RUSHATT~(AGG+AYTS+Week+EFF+AVG+SEP+CTCH+YACR)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF22	<-	lm(formula=RUSHTD~(AGG+COMP+EM+TLOS+AVG+SEP+CTCH+YACR)^2,data=WEEKLY_TEAM_PERFORMANCE)
RAF23	<-	lm(formula=EFF~(AGG+TLOS+AVG+SEP+YACR)^2,data=AWTP)
RAF24	<-	lm(formula=EM~(TT+COMP+CTCH+YACR)^2,data=AWTP)
RAF25	<-	lm(formula=TLOS~(TT+CAY+AYTS+COMP+EFF+AVG+CUSH+CTCH)^2,data=AWTP)
RAF26	<-	lm(formula=AVG~(Week+EFF+TLOS+YACR)^2,data=AWTP)
RAF27	<-	lm(formula=CUSH~(AGG+Week+EFF+TLOS+SEP+TAY+YACR)^2,data=AWTP)
RAF28	<-	lm(formula=SEP~(CAY+AGG+AYTS+EFF+CUSH+TAY+CTCH+YACR)^2,data=AWTP)
RAF29	<-	lm(formula=TAY~(TT+AGG+AYTS+COMP+Week+CUSH+SEP+CTCH)^2,data=AWTP)
RAF30	<-	lm(formula=CTCH~(CAY+COMP+EM+TLOS+AVG+SEP+TAY+YACR)^2,data=AWTP)
RAF31	<-	lm(formula=YACR~(AGG+COMP+EFF+EM+AVG+CUSH+SEP+CTCH)^2,data=AWTP)







ST_AKD1	<-	step(	AKD1	)
ST_AKD2	<-	step(	AKD2	)
ST_AKD3	<-	step(	AKD3	)
ST_AKD4	<-	step(	AKD4	)
ST_AKD5	<-	step(	AKD5	)
ST_AKD6	<-	step(	AKD6	)
ST_AKD7	<-	step(	AKD7	)
ST_AKD8	<-	step(	AKD8	)
ST_AKD9	<-	step(	AKD9	)
ST_AKD10	<-	step(	AKD10	)
ST_AKD11	<-	step(	AKD11	)
ST_AKD12	<-	step(	AKD12	)
ST_AKD13	<-	step(	AKD13	)
ST_AKD14	<-	step(	AKD14	)
ST_AKD15	<-	step(	AKD15	)
ST_AKD16	<-	step(	AKD16	)
ST_AKD17	<-	step(	AKD17	)
ST_AKD18	<-	step(	AKD18	)
ST_AKD19	<-	step(	AKD19	)
ST_AKD20	<-	step(	AKD20	)
ST_AKD21	<-	step(	AKD21	)
ST_AKD22	<-	step(	AKD22	)
ST_AKD23	<-	step(	AKD23	)
ST_AKD24	<-	step(	AKD24	)
ST_AKD25	<-	step(	AKD25	)
ST_AKD26	<-	step(	AKD26	)
ST_AKD27	<-	step(	AKD27	)
ST_AKD28	<-	step(	AKD28	)
ST_AKD29	<-	step(	AKD29	)
ST_AKD30	<-	step(	AKD30	)
ST_AKD31	<-	step(	AKD31	)


ST_RAF1	<-	step(	RAF1	)
ST_RAF2	<-	step(	RAF2	)
ST_RAF3	<-	step(	RAF3	)
ST_RAF4	<-	step(	RAF4	)
ST_RAF5	<-	step(	RAF5	)
ST_RAF6	<-	step(	RAF6	)
ST_RAF7	<-	step(	RAF7	)
ST_RAF8	<-	step(	RAF8	)
ST_RAF9	<-	step(	RAF9	)
ST_RAF10	<-	step(	RAF10	)
ST_RAF11	<-	step(	RAF11	)
ST_RAF12	<-	step(	RAF12	)
ST_RAF13	<-	step(	RAF13	)
ST_RAF14	<-	step(	RAF14	)
ST_RAF15	<-	step(	RAF15	)
ST_RAF16	<-	step(	RAF16	)
ST_RAF17	<-	step(	RAF17	)
ST_RAF18	<-	step(	RAF18	)
ST_RAF19	<-	step(	RAF19	)
ST_RAF20	<-	step(	RAF20	)
ST_RAF21	<-	step(	RAF21	)
ST_RAF22	<-	step(	RAF22	)
ST_RAF23	<-	step(	RAF23	)
ST_RAF24	<-	step(	RAF24	)
ST_RAF25	<-	step(	RAF25	)
ST_RAF26	<-	step(	RAF26	)
ST_RAF27	<-	step(	RAF27	)
ST_RAF28	<-	step(	RAF28	)
ST_RAF29	<-	step(	RAF29	)
ST_RAF30	<-	step(	RAF30	)
ST_RAF31	<-	step(	RAF31	)





library(rJava)
library(glmulti)

#genetic full models
FGM1	<-	glmulti(	outcome~AGG+AYTS+COMP+EFF+EM+CUSH+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM2	<-	glmulti(	TEAMS~TT+CAY+AYTS+COMP+AVG+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM3	<-	glmulti(	OPPS~AGG+Week+EFF+EM+AVG+CUSH,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM4	<-	glmulti(	FD~TT+AYTS+COMP+Week+AVG+CUSH+TAY+CTCH,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM5	<-	glmulti(	PY~TT+CAY+AYTS+COMP+AVG+TAY+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM6	<-	glmulti(	RY~TT+AGG+AYTS+COMP+AVG+CUSH+TAY+YACR,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM7	<-	glmulti(	TO~CAY+AYTS+EFF+EM+AVG+CUSH+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM8	<-	glmulti(	DFD~CAY+AGG+COMP+AVG,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM9	<-	glmulti(	DPY~CAY+AGG+TLOS+CTCH,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM10	<-	glmulti(	DRY~Week+TLOS+AVG+CUSH+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM11	<-	glmulti(	DTO~Week+EFF+EM,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM12	<-	glmulti(	TT~CAY+AGG+COMP+Week+EM+TLOS+SEP+TAY,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM13	<-	glmulti(	CAY~TT+AYTS+COMP+TLOS+SEP+TAY+CTCH,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM14	<-	glmulti(	AGG~TT+AYTS+COMP+EFF+CUSH+SEP+TAY+YACR,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM15	<-	glmulti(	LCAD~TT+CAY+AYTS+AVG+CUSH+SEP+TAY+YACR,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM16	<-	glmulti(	AYTS~CAY+AGG+COMP+Week+TLOS+SEP+TAY+YACR,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM17	<-	glmulti(	ATT~TT+AYTS+COMP+Week+AVG+CUSH+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM18	<-	glmulti(	TD~CAY+AYTS+COMP+Week+EFF+AVG+TAY+YACR,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM19	<-	glmulti(	INT~TT+AYTS+COMP+Week+AVG+TAY,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM20	<-	glmulti(	COMP~TT+CAY+AGG+AYTS+Week+TLOS+TAY+CTCH,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM21	<-	glmulti(	RUSHATT~AGG+AYTS+Week+EFF+AVG+SEP+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM22	<-	glmulti(	RUSHTD~AGG+COMP+EM+TLOS+AVG+SEP+CTCH+YACR,data=WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM23	<-	glmulti(	EFF~AGG+TLOS+AVG+SEP+YACR,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM24	<-	glmulti(	EM~TT+COMP+CTCH+YACR,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM25	<-	glmulti(	TLOS~TT+CAY+AYTS+COMP+EFF+AVG+CUSH+CTCH,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM26	<-	glmulti(	AVG~Week+EFF+TLOS+YACR,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM27	<-	glmulti(	CUSH~AGG+Week+EFF+TLOS+SEP+TAY+YACR,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM28	<-	glmulti(	SEP~CAY+AGG+AYTS+EFF+CUSH+TAY+CTCH+YACR,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM29	<-	glmulti(	TAY~TT+AGG+AYTS+COMP+Week+CUSH+SEP+CTCH,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM30	<-	glmulti(	CTCH~CAY+COMP+EM+TLOS+AVG+SEP+TAY+YACR,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
FGM31	<-	glmulti(	YACR~AGG+COMP+EFF+EM+AVG+CUSH+SEP+CTCH,data=AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)


# SECOND ONE 

SBM1	<-	glmulti(	 outcome ~ AGG + EFF + EM + CUSH + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM2	<-	glmulti(	 TEAMS ~ TT + CAY + COMP + Week + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM3	<-	glmulti(	 OPPS ~ AGG + Week + EFF + EM + AVG + CUSH, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM4	<-	glmulti(	 FD ~ TT + AYTS + COMP + AVG + TAY + CTCH, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM5	<-	glmulti(	 PY ~ TT + CAY + COMP + AVG + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM6	<-	glmulti(	 RY ~ AGG + AYTS + COMP + AVG + TAY + YACR, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM7	<-	glmulti(	 TO ~ CAY + AYTS + EM + CUSH + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM8	<-	glmulti(	 DFD ~ CAY + AGG + COMP + AVG + SEP + TAY, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM9	<-	glmulti(	 DPY ~ CAY + AGG + COMP + EM + TLOS + CTCH, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM10	<-	glmulti(	 DRY ~ Week + TLOS + AVG + CUSH + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM11	<-	glmulti(	 DTO ~ CAY + AGG + Week + EFF + EM + TLOS, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM12	<-	glmulti(	 TT ~ CAY + AGG + COMP + Week + EM + TLOS, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM13	<-	glmulti(	 CAY ~ TT + AYTS + COMP + TLOS + SEP + CTCH, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM14	<-	glmulti(	 AGG ~ TT + AYTS + COMP + EFF + SEP + TAY, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM15	<-	glmulti(	 LCAD ~ TT + CAY + CUSH + SEP + TAY + YACR, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM16	<-	glmulti(	 AYTS ~ CAY + AGG + COMP + TLOS + SEP + TAY, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM17	<-	glmulti(	 ATT ~ TT + AYTS + Week + AVG + CUSH + YACR, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM18	<-	glmulti(	 TD ~ CAY + AYTS + COMP + AVG + TAY + YACR, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM19	<-	glmulti(	 INT ~ TT + AYTS + COMP + Week + AVG + TAY, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM20	<-	glmulti(	 COMP ~ TT + CAY + AGG + AYTS + TLOS + CTCH, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM21	<-	glmulti(	 RUSHATT ~ AGG + EFF + AVG + SEP + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM22	<-	glmulti(	 RUSHTD ~ AGG + EM + AVG + SEP + CTCH + YACR, data = WEEKLY_TEAM_PERFORMANCE	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM23	<-	glmulti(	 EFF ~ AGG + TLOS + AVG + CUSH + SEP + YACR, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM24	<-	glmulti(	 EM ~ TT + AGG + COMP + Week + CTCH + YACR, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM25	<-	glmulti(	 TLOS ~ TT + CAY + AYTS + COMP + EFF + CUSH, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM26	<-	glmulti(	 AVG ~ TT + Week + EFF + EM + TLOS + YACR, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM27	<-	glmulti(	 CUSH ~ Week + EFF + TLOS + SEP + TAY + YACR, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM28	<-	glmulti(	 SEP ~ AGG + AYTS + CUSH + TAY + CTCH + YACR, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM29	<-	glmulti(	 TAY ~ AGG + AYTS + Week + CUSH + SEP + CTCH, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM30	<-	glmulti(	 CTCH ~ CAY + COMP + EM + SEP + TAY + YACR, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
SBM31	<-	glmulti(	 YACR ~ AGG + EFF + EM + AVG + CUSH + SEP, data = AWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)






BWTP <- subset(WTP,select=c(TT,	CAY,AGG,AYTS,COMP,Week,EFF,EM,TLOS,AVG,CUSH,SEP,	TAY,CTCH,YACR
)) 

# first models

DDS12	<- 	lm(	TT	~.	, data = 	BWTP	)
DDS13	<- 	lm(	CAY	~.	, data = 	BWTP	)
DDS14	<- 	lm(	AGG	~.	, data = 	BWTP	)
DDS16	<- 	lm(	AYTS	~.	, data = 	BWTP	)
DDS20	<- 	lm(	COMP	~.	, data = 	BWTP	)
DDS23	<- 	lm(	EFF	~.	, data = 	BWTP	)
DDS24	<- 	lm(	EM	~.	, data = 	BWTP	)
DDS25	<- 	lm(	TLOS	~.	, data = 	BWTP	)
DDS26	<- 	lm(	AVG	~.	, data = 	BWTP	)
DDS27	<- 	lm(	CUSH	~.	, data = 	BWTP	)
DDS28	<- 	lm(	SEP	~.	, data = 	BWTP	)
DDS29	<- 	lm(	TAY	~.	, data = 	BWTP	)
DDS30	<- 	lm(	CTCH	~.	, data = 	BWTP	)
DDS31	<- 	lm(	YACR	~.	, data = 	BWTP	)

DDS1	<- 	lm(	outcome	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS2	<- 	lm(	TEAMS	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS3	<- 	lm(	OPPS	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS4	<- 	lm(	FD	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS5	<- 	lm(	PY	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS6	<- 	lm(	RY	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS7	<- 	lm(	TO	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS8	<- 	lm(	DFD	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS9	<- 	lm(	DPY	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS10	<- 	lm(	DRY	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS11	<- 	lm(	DTO	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS15	<- 	lm(	LCAD	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS17	<- 	lm(	ATT	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS18	<- 	lm(	TD	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS19	<- 	lm(	INT	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS21	<- 	lm(	RUSHATT	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)
DDS22	<- 	lm(	RUSHTD	~TT+	CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+	TAY+CTCH+YACR	,data = 	WTP	)

# stepvif
AWS1	<-	stepVIF(	DDS1	)
AWS2	<-	stepVIF(	DDS2	)
AWS3	<-	stepVIF(	DDS3	)
AWS4	<-	stepVIF(	DDS4	)
AWS5	<-	stepVIF(	DDS5	)
AWS6	<-	stepVIF(	DDS6	)
AWS7	<-	stepVIF(	DDS7	)
AWS8	<-	stepVIF(	DDS8	)
AWS9	<-	stepVIF(	DDS9	)
AWS10	<-	stepVIF(	DDS10	)
AWS11	<-	stepVIF(	DDS11	)
AWS12	<-	stepVIF(	DDS12	)
AWS13	<-	stepVIF(	DDS13	)
AWS14	<-	stepVIF(	DDS14	)
AWS15	<-	stepVIF(	DDS15	)
AWS16	<-	stepVIF(	DDS16	)
AWS17	<-	stepVIF(	DDS17	)
AWS18	<-	stepVIF(	DDS18	)
AWS19	<-	stepVIF(	DDS19	)
AWS20	<-	stepVIF(	DDS20	)
AWS21	<-	stepVIF(	DDS21	)
AWS22	<-	stepVIF(	DDS22	)
AWS23	<-	stepVIF(	DDS23	)
AWS24	<-	stepVIF(	DDS24	)
AWS25	<-	stepVIF(	DDS25	)
AWS26	<-	stepVIF(	DDS26	)
AWS27	<-	stepVIF(	DDS27	)
AWS28	<-	stepVIF(	DDS28	)
AWS29	<-	stepVIF(	DDS29	)
AWS30	<-	stepVIF(	DDS30	)
AWS31	<-	stepVIF(	DDS31	)




# REGSUBSETS

BNRS1	<-	regsubsets(	outcome	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS2	<-	regsubsets(	TEAMS	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS3	<-	regsubsets(	OPPS	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS4	<-	regsubsets(	FD	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS5	<-	regsubsets(	PY	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS6	<-	regsubsets(	RY	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS7	<-	regsubsets(	TO	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS8	<-	regsubsets(	DFD	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS9	<-	regsubsets(	DPY	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS10	<-	regsubsets(	DRY	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS11	<-	regsubsets(	DTO	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS12	<-	regsubsets(	TT	~	.	 ,data=	BWTP	)
BNRS13	<-	regsubsets(	CAY	~	.	 ,data=	BWTP	)
BNRS14	<-	regsubsets(	AGG	~	.	 ,data=	BWTP	)
BNRS15	<-	regsubsets(	LCAD	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS16	<-	regsubsets(	AYTS	~	.	 ,data=	BWTP	)
BNRS17	<-	regsubsets(	ATT	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS18	<-	regsubsets(	TD	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS19	<-	regsubsets(	INT	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS20	<-	regsubsets(	COMP	~	.	 ,data=	BWTP	)
BNRS21	<-	regsubsets(	RUSHATT	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS22	<-	regsubsets(	RUSHTD	~	TT+CAY+AGG+AYTS+COMP+Week+EFF+EM+TLOS+AVG+CUSH+SEP+TAY+CTCH+YACR	 ,data=	WTP	)
BNRS23	<-	regsubsets(	EFF	~	.	 ,data=	BWTP	)
BNRS24	<-	regsubsets(	EM	~	.	 ,data=	BWTP	)
BNRS25	<-	regsubsets(	TLOS	~	.	 ,data=	BWTP	)
BNRS26	<-	regsubsets(	AVG	~	.	 ,data=	BWTP	)
BNRS27	<-	regsubsets(	CUSH	~	.	 ,data=	BWTP	)
BNRS28	<-	regsubsets(	SEP	~	.	 ,data=	BWTP	)
BNRS29	<-	regsubsets(	TAY	~	.	 ,data=	BWTP	)
BNRS30	<-	regsubsets(	CTCH	~	.	 ,data=	BWTP	)
BNRS31	<-	regsubsets(	YACR	~	.	 ,data=	BWTP	)


J1	<-	order(summary(	BNRS1	)$adjr2,decreasing=T)[1]		
J2	<-	order(summary(	BNRS2	)$adjr2,decreasing=T)[1]		
J3	<-	order(summary(	BNRS3	)$adjr2,decreasing=T)[1]		
J4	<-	order(summary(	BNRS4	)$adjr2,decreasing=T)[1]		
J5	<-	order(summary(	BNRS5	)$adjr2,decreasing=T)[1]		
J6	<-	order(summary(	BNRS6	)$adjr2,decreasing=T)[1]		
J7	<-	order(summary(	BNRS7	)$adjr2,decreasing=T)[1]		
J8	<-	order(summary(	BNRS8	)$adjr2,decreasing=T)[1]		
J9	<-	order(summary(	BNRS9	)$adjr2,decreasing=T)[1]		
J10	<-	order(summary(	BNRS10	)$adjr2,decreasing=T)[1]		
J11	<-	order(summary(	BNRS11	)$adjr2,decreasing=T)[1]		
J12	<-	order(summary(	BNRS12	)$adjr2,decreasing=T)[1]		
J13	<-	order(summary(	BNRS13	)$adjr2,decreasing=T)[1]		
J14	<-	order(summary(	BNRS14	)$adjr2,decreasing=T)[1]		
J15	<-	order(summary(	BNRS15	)$adjr2,decreasing=T)[1]		
J16	<-	order(summary(	BNRS16	)$adjr2,decreasing=T)[1]		
J17	<-	order(summary(	BNRS17	)$adjr2,decreasing=T)[1]		
J18	<-	order(summary(	BNRS18	)$adjr2,decreasing=T)[1]		
J19	<-	order(summary(	BNRS19	)$adjr2,decreasing=T)[1]		
J20	<-	order(summary(	BNRS20	)$adjr2,decreasing=T)[1]		
J21	<-	order(summary(	BNRS21	)$adjr2,decreasing=T)[1]		
J22	<-	order(summary(	BNRS22	)$adjr2,decreasing=T)[1]		
J23	<-	order(summary(	BNRS23	)$adjr2,decreasing=T)[1]		
J24	<-	order(summary(	BNRS24	)$adjr2,decreasing=T)[1]		
J25	<-	order(summary(	BNRS25	)$adjr2,decreasing=T)[1]		
J26	<-	order(summary(	BNRS26	)$adjr2,decreasing=T)[1]		
J27	<-	order(summary(	BNRS27	)$adjr2,decreasing=T)[1]		
J28	<-	order(summary(	BNRS28	)$adjr2,decreasing=T)[1]		
J29	<-	order(summary(	BNRS29	)$adjr2,decreasing=T)[1]		
J30	<-	order(summary(	BNRS30	)$adjr2,decreasing=T)[1]		
J31	<-	order(summary(	BNRS31	)$adjr2,decreasing=T)[1]		


BALR1	<-	lm.regsubsets(	BNRS1	,	J1	)
BALR2	<-	lm.regsubsets(	BNRS2	,	J2	)
BALR3	<-	lm.regsubsets(	BNRS3	,	J3	)
BALR4	<-	lm.regsubsets(	BNRS4	,	J4	)
BALR5	<-	lm.regsubsets(	BNRS5	,	J5	)
BALR6	<-	lm.regsubsets(	BNRS6	,	J6	)
BALR7	<-	lm.regsubsets(	BNRS7	,	J7	)
BALR8	<-	lm.regsubsets(	BNRS8	,	J8	)
BALR9	<-	lm.regsubsets(	BNRS9	,	J9	)
BALR10	<-	lm.regsubsets(	BNRS10	,	J10	)
BALR11	<-	lm.regsubsets(	BNRS11	,	J11	)
BALR12	<-	lm.regsubsets(	BNRS12	,	J12	)
BALR13	<-	lm.regsubsets(	BNRS13	,	J13	)
BALR14	<-	lm.regsubsets(	BNRS14	,	J14	)
BALR15	<-	lm.regsubsets(	BNRS15	,	J15	)
BALR16	<-	lm.regsubsets(	BNRS16	,	J16	)
BALR17	<-	lm.regsubsets(	BNRS17	,	J17	)
BALR18	<-	lm.regsubsets(	BNRS18	,	J18	)
BALR19	<-	lm.regsubsets(	BNRS19	,	J19	)
BALR20	<-	lm.regsubsets(	BNRS20	,	J20	)
BALR21	<-	lm.regsubsets(	BNRS21	,	J21	)
BALR22	<-	lm.regsubsets(	BNRS22	,	J22	)
BALR23	<-	lm.regsubsets(	BNRS23	,	J23	)
BALR24	<-	lm.regsubsets(	BNRS24	,	J24	)
BALR25	<-	lm.regsubsets(	BNRS25	,	J25	)
BALR26	<-	lm.regsubsets(	BNRS26	,	J26	)
BALR27	<-	lm.regsubsets(	BNRS27	,	J27	)
BALR28	<-	lm.regsubsets(	BNRS28	,	J28	)
BALR29	<-	lm.regsubsets(	BNRS29	,	J29	)
BALR30	<-	lm.regsubsets(	BNRS30	,	J30	)
BALR31	<-	lm.regsubsets(	BNRS31	,	J31	)


CNLR1	<-	lm.regsubsets(	BNRS1	,	6	)
CNLR2	<-	lm.regsubsets(	BNRS2	,	6	)
CNLR3	<-	lm.regsubsets(	BNRS3	,	6	)
CNLR4	<-	lm.regsubsets(	BNRS4	,	6	)
CNLR5	<-	lm.regsubsets(	BNRS5	,	6	)
CNLR6	<-	lm.regsubsets(	BNRS6	,	6	)
CNLR7	<-	lm.regsubsets(	BNRS7	,	6	)
CNLR8	<-	lm.regsubsets(	BNRS8	,	6	)
CNLR9	<-	lm.regsubsets(	BNRS9	,	6	)
CNLR10	<-	lm.regsubsets(	BNRS10	,	6	)
CNLR11	<-	lm.regsubsets(	BNRS11	,	6	)
CNLR12	<-	lm.regsubsets(	BNRS12	,	6	)
CNLR13	<-	lm.regsubsets(	BNRS13	,	6	)
CNLR14	<-	lm.regsubsets(	BNRS14	,	6	)
CNLR15	<-	lm.regsubsets(	BNRS15	,	6	)
CNLR16	<-	lm.regsubsets(	BNRS16	,	6	)
CNLR17	<-	lm.regsubsets(	BNRS17	,	6	)
CNLR18	<-	lm.regsubsets(	BNRS18	,	6	)
CNLR19	<-	lm.regsubsets(	BNRS19	,	6	)
CNLR20	<-	lm.regsubsets(	BNRS20	,	6	)
CNLR21	<-	lm.regsubsets(	BNRS21	,	6	)
CNLR22	<-	lm.regsubsets(	BNRS22	,	6	)
CNLR23	<-	lm.regsubsets(	BNRS23	,	6	)
CNLR24	<-	lm.regsubsets(	BNRS24	,	6	)
CNLR25	<-	lm.regsubsets(	BNRS25	,	6	)
CNLR26	<-	lm.regsubsets(	BNRS26	,	6	)
CNLR27	<-	lm.regsubsets(	BNRS27	,	6	)
CNLR28	<-	lm.regsubsets(	BNRS28	,	6	)
CNLR29	<-	lm.regsubsets(	BNRS29	,	6	)
CNLR30	<-	lm.regsubsets(	BNRS30	,	6	)
CNLR31	<-	lm.regsubsets(	BNRS31	,	6	)



#calls

FSD1<-BALR1$call
FSD2<-BALR2$call
FSD3<-BALR3$call
FSD4<-BALR4$call
FSD5<-BALR5$call
FSD6<-BALR6$call
FSD7<-BALR7$call
FSD8<-BALR8$call
FSD9<-BALR9$call
FSD10<-BALR10$call
FSD11<-BALR11$call
FSD12<-BALR12$call
FSD13<-BALR13$call
FSD14<-BALR14$call
FSD15<-BALR15$call
FSD16<-BALR16$call
FSD17<-BALR17$call
FSD18<-BALR18$call
FSD19<-BALR19$call
FSD20<-BALR20$call
FSD21<-BALR21$call
FSD22<-BALR22$call
FSD23<-BALR23$call
FSD24<-BALR24$call
FSD25<-BALR25$call
FSD26<-BALR26$call
FSD27<-BALR27$call
FSD28<-BALR28$call
FSD29<-BALR29$call
FSD30<-BALR30$call
FSD31<-BALR31$call

VKA1<-CNLR1$call
VKA2<-CNLR2$call
VKA3<-CNLR3$call
VKA4<-CNLR4$call
VKA5<-CNLR5$call
VKA6<-CNLR6$call
VKA7<-CNLR7$call
VKA8<-CNLR8$call
VKA9<-CNLR9$call
VKA10<-CNLR10$call
VKA11<-CNLR11$call
VKA12<-CNLR12$call
VKA13<-CNLR13$call
VKA14<-CNLR14$call
VKA15<-CNLR15$call
VKA16<-CNLR16$call
VKA17<-CNLR17$call
VKA18<-CNLR18$call
VKA19<-CNLR19$call
VKA20<-CNLR20$call
VKA21<-CNLR21$call
VKA22<-CNLR22$call
VKA23<-CNLR23$call
VKA24<-CNLR24$call
VKA25<-CNLR25$call
VKA26<-CNLR26$call
VKA27<-CNLR27$call
VKA28<-CNLR28$call
VKA29<-CNLR29$call
VKA30<-CNLR30$call
VKA31<-CNLR31$call







# NEW MODELS


BNFM1	<-	lm(formula=outcome~AGG+AYTS+COMP+EFF+EM+CUSH+CTCH+YACR,data=WTP)
BNFM2	<-	lm(formula=TEAMS~TT+CAY+AYTS+COMP+AVG+TAY+CTCH+YACR,data=WTP)
BNFM3	<-	lm(formula=OPPS~AGG+Week+EFF+EM+AVG+CUSH,data=WTP)
BNFM4	<-	lm(formula=FD~TT+AYTS+COMP+Week+AVG+CUSH+TAY+CTCH,data=WTP)
BNFM5	<-	lm(formula=PY~TT+CAY+AYTS+COMP+AVG+TAY+CTCH+YACR,data=WTP)
BNFM6	<-	lm(formula=RY~TT+AGG+AYTS+COMP+AVG+CUSH+TAY+YACR,data=WTP)
BNFM7	<-	lm(formula=TO~CAY+AYTS+EFF+EM+AVG+CUSH+CTCH+YACR,data=WTP)
BNFM8	<-	lm(formula=DFD~CAY+AGG+COMP+AVG,data=WTP)
BNFM9	<-	lm(formula=DPY~CAY+AGG+TLOS+CTCH,data=WTP)
BNFM10	<-	lm(formula=DRY~Week+TLOS+AVG+CUSH+CTCH+YACR,data=WTP)
BNFM11	<-	lm(formula=DTO~Week+EFF+EM,data=WTP)
BNFM12	<-	lm(formula=TT~CAY+AGG+COMP+Week+EM+TLOS+SEP+TAY,data=BWTP)
BNFM13	<-	lm(formula=CAY~TT+AYTS+COMP+TLOS+SEP+TAY+CTCH,data=BWTP)
BNFM14	<-	lm(formula=AGG~TT+AYTS+COMP+EFF+CUSH+SEP+TAY+YACR,data=BWTP)
BNFM15	<-	lm(formula=LCAD~TT+CAY+AYTS+AVG+CUSH+SEP+TAY+YACR,data=WTP)
BNFM16	<-	lm(formula=AYTS~CAY+AGG+COMP+Week+TLOS+SEP+TAY+YACR,data=BWTP)
BNFM17	<-	lm(formula=ATT~TT+AYTS+COMP+Week+AVG+CUSH+CTCH+YACR,data=WTP)
BNFM18	<-	lm(formula=TD~CAY+AYTS+COMP+Week+EFF+AVG+TAY+YACR,data=WTP)
BNFM19	<-	lm(formula=INT~TT+AYTS+COMP+Week+AVG+TAY,data=WTP)
BNFM20	<-	lm(formula=COMP~TT+CAY+AGG+AYTS+Week+TLOS+TAY+CTCH,data=BWTP)
BNFM21	<-	lm(formula=RUSHATT~AGG+AYTS+Week+EFF+AVG+SEP+CTCH+YACR,data=WTP)
BNFM22	<-	lm(formula=RUSHTD~AGG+COMP+EM+TLOS+AVG+SEP+CTCH+YACR,data=WTP)
BNFM23	<-	lm(formula=EFF~AGG+TLOS+AVG+SEP+YACR,data=BWTP)
BNFM24	<-	lm(formula=EM~TT+COMP+CTCH+YACR,data=BWTP)
BNFM25	<-	lm(formula=TLOS~TT+CAY+AYTS+COMP+EFF+AVG+CUSH+CTCH,data=BWTP)
BNFM26	<-	lm(formula=AVG~Week+EFF+TLOS+YACR,data=BWTP)
BNFM27	<-	lm(formula=CUSH~AGG+Week+EFF+TLOS+SEP+TAY+YACR,data=BWTP)
BNFM28	<-	lm(formula=SEP~CAY+AGG+AYTS+EFF+CUSH+TAY+CTCH+YACR,data=BWTP)
BNFM29	<-	lm(formula=TAY~TT+AGG+AYTS+COMP+Week+CUSH+SEP+CTCH,data=BWTP)
BNFM30	<-	lm(formula=CTCH~CAY+COMP+EM+TLOS+AVG+SEP+TAY+YACR,data=BWTP)
BNFM31	<-	lm(formula=YACR~AGG+COMP+EFF+EM+AVG+CUSH+SEP+CTCH,data=BWTP)


#GLM MODELS
BALM1	<-	lm(formula = outcome ~ AGG + EFF + EM + CUSH + CTCH + YACR, data = WTP)
BALM2	<-	lm(formula = TEAMS ~ TT + CAY + COMP + Week + CTCH + YACR, data = WTP)
BALM3	<-	lm(formula = OPPS ~ AGG + Week + EFF + EM + AVG + CUSH, data = WTP)
BALM4	<-	lm(formula = FD ~ TT + AYTS + COMP + AVG + TAY + CTCH, data = WTP)
BALM5	<-	lm(formula = PY ~ TT + CAY + COMP + AVG + CTCH + YACR, data = WTP)
BALM6	<-	lm(formula = RY ~ AGG + AYTS + COMP + AVG + TAY + YACR, data = WTP)
BALM7	<-	lm(formula = TO ~ CAY + AYTS + EM + CUSH + CTCH + YACR, data = WTP)
BALM8	<-	lm(formula = DFD ~ CAY + AGG + COMP + AVG + SEP + TAY, data = WTP)
BALM9	<-	lm(formula = DPY ~ CAY + AGG + COMP + EM + TLOS + CTCH, data = WTP)
BALM10	<-	lm(formula = DRY ~ Week + TLOS + AVG + CUSH + CTCH + YACR, data = WTP)
BALM11	<-	lm(formula = DTO ~ CAY + AGG + Week + EFF + EM + TLOS, data = WTP)
BALM12	<-	lm(formula = TT ~ CAY + AGG + COMP + Week + EM + TLOS, data = BWTP)
BALM13	<-	lm(formula = CAY ~ TT + AYTS + COMP + TLOS + SEP + CTCH, data = BWTP)
BALM14	<-	lm(formula = AGG ~ TT + AYTS + COMP + EFF + SEP + TAY, data = BWTP)
BALM15	<-	lm(formula = LCAD ~ TT + CAY + CUSH + SEP + TAY + YACR, data = WTP)
BALM16	<-	lm(formula = AYTS ~ CAY + AGG + COMP + TLOS + SEP + TAY, data = BWTP)
BALM17	<-	lm(formula = ATT ~ TT + AYTS + Week + AVG + CUSH + YACR, data = WTP)
BALM18	<-	lm(formula = TD ~ CAY + AYTS + COMP + AVG + TAY + YACR, data = WTP)
BALM19	<-	lm(formula = INT ~ TT + AYTS + COMP + Week + AVG + TAY, data = WTP)
BALM20	<-	lm(formula = COMP ~ TT + CAY + AGG + AYTS + TLOS + CTCH, data = BWTP)
BALM21	<-	lm(formula = RUSHATT ~ AGG + EFF + AVG + SEP + CTCH + YACR, data = WTP)
BALM22	<-	lm(formula = RUSHTD ~ AGG + EM + AVG + SEP + CTCH + YACR, data = WTP)
BALM23	<-	lm(formula = EFF ~ AGG + TLOS + AVG + CUSH + SEP + YACR, data = BWTP)
BALM24	<-	lm(formula = EM ~ TT + AGG + COMP + Week + CTCH + YACR, data = BWTP)
BALM25	<-	lm(formula = TLOS ~ TT + CAY + AYTS + COMP + EFF + CUSH, data = BWTP)
BALM26	<-	lm(formula = AVG ~ TT + Week + EFF + EM + TLOS + YACR, data = BWTP)
BALM27	<-	lm(formula = CUSH ~ Week + EFF + TLOS + SEP + TAY + YACR, data = BWTP)
BALM28	<-	lm(formula = SEP ~ AGG + AYTS + CUSH + TAY + CTCH + YACR, data = BWTP)
BALM29	<-	lm(formula = TAY ~ AGG + AYTS + Week + CUSH + SEP + CTCH, data = BWTP)
BALM30	<-	lm(formula = CTCH ~ CAY + COMP + EM + SEP + TAY + YACR, data = BWTP)
BALM31	<-	lm(formula = YACR ~ AGG + EFF + EM + AVG + CUSH + SEP, data = BWTP)





# NEW MODELS


BKD1	<-	lm(formula=outcome~AGG*AYTS*COMP*EFF*EM*CUSH*CTCH*YACR,data=WTP)
BKD2	<-	lm(formula=TEAMS~TT*CAY*AYTS*COMP*AVG*TAY*CTCH*YACR,data=WTP)
BKD3	<-	lm(formula=OPPS~AGG*Week*EFF*EM*AVG*CUSH,data=WTP)
BKD4	<-	lm(formula=FD~TT*AYTS*COMP*Week*AVG*CUSH*TAY*CTCH,data=WTP)
BKD5	<-	lm(formula=PY~TT*CAY*AYTS*COMP*AVG*TAY*CTCH*YACR,data=WTP)
BKD6	<-	lm(formula=RY~TT*AGG*AYTS*COMP*AVG*CUSH*TAY*YACR,data=WTP)
BKD7	<-	lm(formula=TO~CAY*AYTS*EFF*EM*AVG*CUSH*CTCH*YACR,data=WTP)
BKD8	<-	lm(formula=DFD~CAY*AGG*COMP*AVG,data=WTP)
BKD9	<-	lm(formula=DPY~CAY*AGG*TLOS*CTCH,data=WTP)
BKD10	<-	lm(formula=DRY~Week*TLOS*AVG*CUSH*CTCH*YACR,data=WTP)
BKD11	<-	lm(formula=DTO~Week*EFF*EM,data=WTP)
BKD12	<-	lm(formula=TT~CAY*AGG*COMP*Week*EM*TLOS*SEP*TAY,data=BWTP)
BKD13	<-	lm(formula=CAY~TT*AYTS*COMP*TLOS*SEP*TAY*CTCH,data=BWTP)
BKD14	<-	lm(formula=AGG~TT*AYTS*COMP*EFF*CUSH*SEP*TAY*YACR,data=BWTP)
BKD15	<-	lm(formula=LCAD~TT*CAY*AYTS*AVG*CUSH*SEP*TAY*YACR,data=WTP)
BKD16	<-	lm(formula=AYTS~CAY*AGG*COMP*Week*TLOS*SEP*TAY*YACR,data=BWTP)
BKD17	<-	lm(formula=ATT~TT*AYTS*COMP*Week*AVG*CUSH*CTCH*YACR,data=WTP)
BKD18	<-	lm(formula=TD~CAY*AYTS*COMP*Week*EFF*AVG*TAY*YACR,data=WTP)
BKD19	<-	lm(formula=INT~TT*AYTS*COMP*Week*AVG*TAY,data=WTP)
BKD20	<-	lm(formula=COMP~TT*CAY*AGG*AYTS*Week*TLOS*TAY*CTCH,data=BWTP)
BKD21	<-	lm(formula=RUSHATT~AGG*AYTS*Week*EFF*AVG*SEP*CTCH*YACR,data=WTP)
BKD22	<-	lm(formula=RUSHTD~AGG*COMP*EM*TLOS*AVG*SEP*CTCH*YACR,data=WTP)
BKD23	<-	lm(formula=EFF~AGG*TLOS*AVG*SEP*YACR,data=BWTP)
BKD24	<-	lm(formula=EM~TT*COMP*CTCH*YACR,data=BWTP)
BKD25	<-	lm(formula=TLOS~TT*CAY*AYTS*COMP*EFF*AVG*CUSH*CTCH,data=BWTP)
BKD26	<-	lm(formula=AVG~Week*EFF*TLOS*YACR,data=BWTP)
BKD27	<-	lm(formula=CUSH~AGG*Week*EFF*TLOS*SEP*TAY*YACR,data=BWTP)
BKD28	<-	lm(formula=SEP~CAY*AGG*AYTS*EFF*CUSH*TAY*CTCH*YACR,data=BWTP)
BKD29	<-	lm(formula=TAY~TT*AGG*AYTS*COMP*Week*CUSH*SEP*CTCH,data=BWTP)
BKD30	<-	lm(formula=CTCH~CAY*COMP*EM*TLOS*AVG*SEP*TAY*YACR,data=BWTP)
BKD31	<-	lm(formula=YACR~AGG*COMP*EFF*EM*AVG*CUSH*SEP*CTCH,data=BWTP)






BAF1	<-	lm(formula=outcome~(AGG+AYTS+COMP+EFF+EM+CUSH+CTCH+YACR)^2,data=WTP)
BAF2	<-	lm(formula=TEAMS~(TT+CAY+AYTS+COMP+AVG+TAY+CTCH+YACR)^2,data=WTP)
BAF3	<-	lm(formula=OPPS~(AGG+Week+EFF+EM+AVG+CUSH)^2,data=WTP)
BAF4	<-	lm(formula=FD~(TT+AYTS+COMP+Week+AVG+CUSH+TAY+CTCH)^2,data=WTP)
BAF5	<-	lm(formula=PY~(TT+CAY+AYTS+COMP+AVG+TAY+CTCH+YACR)^2,data=WTP)
BAF6	<-	lm(formula=RY~(TT+AGG+AYTS+COMP+AVG+CUSH+TAY+YACR)^2,data=WTP)
BAF7	<-	lm(formula=TO~(CAY+AYTS+EFF+EM+AVG+CUSH+CTCH+YACR)^2,data=WTP)
BAF8	<-	lm(formula=DFD~(CAY+AGG+COMP+AVG)^2,data=WTP)
BAF9	<-	lm(formula=DPY~(CAY+AGG+TLOS+CTCH)^2,data=WTP)
BAF10	<-	lm(formula=DRY~(Week+TLOS+AVG+CUSH+CTCH+YACR)^2,data=WTP)
BAF11	<-	lm(formula=DTO~(Week+EFF+EM)^2,data=WTP)
BAF12	<-	lm(formula=TT~(CAY+AGG+COMP+Week+EM+TLOS+SEP+TAY)^2,data=BWTP)
BAF13	<-	lm(formula=CAY~(TT+AYTS+COMP+TLOS+SEP+TAY+CTCH)^2,data=BWTP)
BAF14	<-	lm(formula=AGG~(TT+AYTS+COMP+EFF+CUSH+SEP+TAY+YACR)^2,data=BWTP)
BAF15	<-	lm(formula=LCAD~(TT+CAY+AYTS+AVG+CUSH+SEP+TAY+YACR)^2,data=WTP)
BAF16	<-	lm(formula=AYTS~(CAY+AGG+COMP+Week+TLOS+SEP+TAY+YACR)^2,data=BWTP)
BAF17	<-	lm(formula=ATT~(TT+AYTS+COMP+Week+AVG+CUSH+CTCH+YACR)^2,data=WTP)
BAF18	<-	lm(formula=TD~(CAY+AYTS+COMP+Week+EFF+AVG+TAY+YACR)^2,data=WTP)
BAF19	<-	lm(formula=INT~(TT+AYTS+COMP+Week+AVG+TAY)^2,data=WTP)
BAF20	<-	lm(formula=COMP~(TT+CAY+AGG+AYTS+Week+TLOS+TAY+CTCH)^2,data=BWTP)
BAF21	<-	lm(formula=RUSHATT~(AGG+AYTS+Week+EFF+AVG+SEP+CTCH+YACR)^2,data=WTP)
BAF22	<-	lm(formula=RUSHTD~(AGG+COMP+EM+TLOS+AVG+SEP+CTCH+YACR)^2,data=WTP)
BAF23	<-	lm(formula=EFF~(AGG+TLOS+AVG+SEP+YACR)^2,data=BWTP)
BAF24	<-	lm(formula=EM~(TT+COMP+CTCH+YACR)^2,data=BWTP)
BAF25	<-	lm(formula=TLOS~(TT+CAY+AYTS+COMP+EFF+AVG+CUSH+CTCH)^2,data=BWTP)
BAF26	<-	lm(formula=AVG~(Week+EFF+TLOS+YACR)^2,data=BWTP)
BAF27	<-	lm(formula=CUSH~(AGG+Week+EFF+TLOS+SEP+TAY+YACR)^2,data=BWTP)
BAF28	<-	lm(formula=SEP~(CAY+AGG+AYTS+EFF+CUSH+TAY+CTCH+YACR)^2,data=BWTP)
BAF29	<-	lm(formula=TAY~(TT+AGG+AYTS+COMP+Week+CUSH+SEP+CTCH)^2,data=BWTP)
BAF30	<-	lm(formula=CTCH~(CAY+COMP+EM+TLOS+AVG+SEP+TAY+YACR)^2,data=BWTP)
BAF31	<-	lm(formula=YACR~(AGG+COMP+EFF+EM+AVG+CUSH+SEP+CTCH)^2,data=BWTP)







ST_BKD1	<-	step(	BKD1	)
ST_BKD2	<-	step(	BKD2	)
ST_BKD3	<-	step(	BKD3	)
ST_BKD4	<-	step(	BKD4	)
ST_BKD5	<-	step(	BKD5	)
ST_BKD6	<-	step(	BKD6	)
ST_BKD7	<-	step(	BKD7	)
ST_BKD8	<-	step(	BKD8	)
ST_BKD9	<-	step(	BKD9	)
ST_BKD10	<-	step(	BKD10	)
ST_BKD11	<-	step(	BKD11	)
ST_BKD12	<-	step(	BKD12	)
ST_BKD13	<-	step(	BKD13	)
ST_BKD14	<-	step(	BKD14	)
ST_BKD15	<-	step(	BKD15	)
ST_BKD16	<-	step(	BKD16	)
ST_BKD17	<-	step(	BKD17	)
ST_BKD18	<-	step(	BKD18	)
ST_BKD19	<-	step(	BKD19	)
ST_BKD20	<-	step(	BKD20	)
ST_BKD21	<-	step(	BKD21	)
ST_BKD22	<-	step(	BKD22	)
ST_BKD23	<-	step(	BKD23	)
ST_BKD24	<-	step(	BKD24	)
ST_BKD25	<-	step(	BKD25	)
ST_BKD26	<-	step(	BKD26	)
ST_BKD27	<-	step(	BKD27	)
ST_BKD28	<-	step(	BKD28	)
ST_BKD29	<-	step(	BKD29	)
ST_BKD30	<-	step(	BKD30	)
ST_BKD31	<-	step(	BKD31	)


ST_BAF1	<-	step(	BAF1	)
ST_BAF2	<-	step(	BAF2	)
ST_BAF3	<-	step(	BAF3	)
ST_BAF4	<-	step(	BAF4	)
ST_BAF5	<-	step(	BAF5	)
ST_BAF6	<-	step(	BAF6	)
ST_BAF7	<-	step(	BAF7	)
ST_BAF8	<-	step(	BAF8	)
ST_BAF9	<-	step(	BAF9	)
ST_BAF10	<-	step(	BAF10	)
ST_BAF11	<-	step(	BAF11	)
ST_BAF12	<-	step(	BAF12	)
ST_BAF13	<-	step(	BAF13	)
ST_BAF14	<-	step(	BAF14	)
ST_BAF15	<-	step(	BAF15	)
ST_BAF16	<-	step(	BAF16	)
ST_BAF17	<-	step(	BAF17	)
ST_BAF18	<-	step(	BAF18	)
ST_BAF19	<-	step(	BAF19	)
ST_BAF20	<-	step(	BAF20	)
ST_BAF21	<-	step(	BAF21	)
ST_BAF22	<-	step(	BAF22	)
ST_BAF23	<-	step(	BAF23	)
ST_BAF24	<-	step(	BAF24	)
ST_BAF25	<-	step(	BAF25	)
ST_BAF26	<-	step(	BAF26	)
ST_BAF27	<-	step(	BAF27	)
ST_BAF28	<-	step(	BAF28	)
ST_BAF29	<-	step(	BAF29	)
ST_BAF30	<-	step(	BAF30	)
ST_BAF31	<-	step(	BAF31	)





library(rJava)
library(glmulti)
#GENETIC MODELS

BGM1	<-	glmulti(	outcome~AGG+AYTS+COMP+EFF+EM+CUSH+CTCH+YACR,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM2	<-	glmulti(	TEAMS~TT+CAY+AYTS+COMP+AVG+TAY+CTCH+YACR,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM3	<-	glmulti(	OPPS~AGG+Week+EFF+EM+AVG+CUSH,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM4	<-	glmulti(	FD~TT+AYTS+COMP+Week+AVG+CUSH+TAY+CTCH,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM5	<-	glmulti(	PY~TT+CAY+AYTS+COMP+AVG+TAY+CTCH+YACR,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM6	<-	glmulti(	RY~TT+AGG+AYTS+COMP+AVG+CUSH+TAY+YACR,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM7	<-	glmulti(	TO~CAY+AYTS+EFF+EM+AVG+CUSH+CTCH+YACR,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM8	<-	glmulti(	DFD~CAY+AGG+COMP+AVG,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM9	<-	glmulti(	DPY~CAY+AGG+TLOS+CTCH,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM10	<-	glmulti(	DRY~Week+TLOS+AVG+CUSH+CTCH+YACR,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM11	<-	glmulti(	DTO~Week+EFF+EM,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM12	<-	glmulti(	TT~CAY+AGG+COMP+Week+EM+TLOS+SEP+TAY,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM13	<-	glmulti(	CAY~TT+AYTS+COMP+TLOS+SEP+TAY+CTCH,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM14	<-	glmulti(	AGG~TT+AYTS+COMP+EFF+CUSH+SEP+TAY+YACR,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM15	<-	glmulti(	LCAD~TT+CAY+AYTS+AVG+CUSH+SEP+TAY+YACR,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM16	<-	glmulti(	AYTS~CAY+AGG+COMP+Week+TLOS+SEP+TAY+YACR,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM17	<-	glmulti(	ATT~TT+AYTS+COMP+Week+AVG+CUSH+CTCH+YACR,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM18	<-	glmulti(	TD~CAY+AYTS+COMP+Week+EFF+AVG+TAY+YACR,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM19	<-	glmulti(	INT~TT+AYTS+COMP+Week+AVG+TAY,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM20	<-	glmulti(	COMP~TT+CAY+AGG+AYTS+Week+TLOS+TAY+CTCH,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM21	<-	glmulti(	RUSHATT~AGG+AYTS+Week+EFF+AVG+SEP+CTCH+YACR,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM22	<-	glmulti(	RUSHTD~AGG+COMP+EM+TLOS+AVG+SEP+CTCH+YACR,data=WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM23	<-	glmulti(	EFF~AGG+TLOS+AVG+SEP+YACR,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM24	<-	glmulti(	EM~TT+COMP+CTCH+YACR,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM25	<-	glmulti(	TLOS~TT+CAY+AYTS+COMP+EFF+AVG+CUSH+CTCH,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM26	<-	glmulti(	AVG~Week+EFF+TLOS+YACR,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM27	<-	glmulti(	CUSH~AGG+Week+EFF+TLOS+SEP+TAY+YACR,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM28	<-	glmulti(	SEP~CAY+AGG+AYTS+EFF+CUSH+TAY+CTCH+YACR,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM29	<-	glmulti(	TAY~TT+AGG+AYTS+COMP+Week+CUSH+SEP+CTCH,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM30	<-	glmulti(	CTCH~CAY+COMP+EM+TLOS+AVG+SEP+TAY+YACR,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BGM31	<-	glmulti(	YACR~AGG+COMP+EFF+EM+AVG+CUSH+SEP+CTCH,data=BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)


# SECOND ONE 

BBM1	<-	glmulti(	 outcome ~ AGG + EFF + EM + CUSH + CTCH + YACR, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM2	<-	glmulti(	 TEAMS ~ TT + CAY + COMP + Week + CTCH + YACR, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM3	<-	glmulti(	 OPPS ~ AGG + Week + EFF + EM + AVG + CUSH, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM4	<-	glmulti(	 FD ~ TT + AYTS + COMP + AVG + TAY + CTCH, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM5	<-	glmulti(	 PY ~ TT + CAY + COMP + AVG + CTCH + YACR, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM6	<-	glmulti(	 RY ~ AGG + AYTS + COMP + AVG + TAY + YACR, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM7	<-	glmulti(	 TO ~ CAY + AYTS + EM + CUSH + CTCH + YACR, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM8	<-	glmulti(	 DFD ~ CAY + AGG + COMP + AVG + SEP + TAY, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM9	<-	glmulti(	 DPY ~ CAY + AGG + COMP + EM + TLOS + CTCH, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM10	<-	glmulti(	 DRY ~ Week + TLOS + AVG + CUSH + CTCH + YACR, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM11	<-	glmulti(	 DTO ~ CAY + AGG + Week + EFF + EM + TLOS, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM12	<-	glmulti(	 TT ~ CAY + AGG + COMP + Week + EM + TLOS, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM13	<-	glmulti(	 CAY ~ TT + AYTS + COMP + TLOS + SEP + CTCH, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM14	<-	glmulti(	 AGG ~ TT + AYTS + COMP + EFF + SEP + TAY, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM15	<-	glmulti(	 LCAD ~ TT + CAY + CUSH + SEP + TAY + YACR, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM16	<-	glmulti(	 AYTS ~ CAY + AGG + COMP + TLOS + SEP + TAY, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM17	<-	glmulti(	 ATT ~ TT + AYTS + Week + AVG + CUSH + YACR, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM18	<-	glmulti(	 TD ~ CAY + AYTS + COMP + AVG + TAY + YACR, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM19	<-	glmulti(	 INT ~ TT + AYTS + COMP + Week + AVG + TAY, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM20	<-	glmulti(	 COMP ~ TT + CAY + AGG + AYTS + TLOS + CTCH, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM21	<-	glmulti(	 RUSHATT ~ AGG + EFF + AVG + SEP + CTCH + YACR, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM22	<-	glmulti(	 RUSHTD ~ AGG + EM + AVG + SEP + CTCH + YACR, data = WTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM23	<-	glmulti(	 EFF ~ AGG + TLOS + AVG + CUSH + SEP + YACR, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM24	<-	glmulti(	 EM ~ TT + AGG + COMP + Week + CTCH + YACR, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM25	<-	glmulti(	 TLOS ~ TT + CAY + AYTS + COMP + EFF + CUSH, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM26	<-	glmulti(	 AVG ~ TT + Week + EFF + EM + TLOS + YACR, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM27	<-	glmulti(	 CUSH ~ Week + EFF + TLOS + SEP + TAY + YACR, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM28	<-	glmulti(	 SEP ~ AGG + AYTS + CUSH + TAY + CTCH + YACR, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM29	<-	glmulti(	 TAY ~ AGG + AYTS + Week + CUSH + SEP + CTCH, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM30	<-	glmulti(	 CTCH ~ CAY + COMP + EM + SEP + TAY + YACR, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)
BBM31	<-	glmulti(	 YACR ~ AGG + EFF + EM + AVG + CUSH + SEP, data = BWTP	,	level=2,	crit="aic",	method = "g",	report=TRUE,	)


