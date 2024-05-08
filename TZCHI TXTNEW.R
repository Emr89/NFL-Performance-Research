library(readxl)
library(tidyverse)


Defense_Season <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Defense Season.xlsx", 
                             col_types = c("text", "text", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "numeric", "numeric"))

Defense_Weekly <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Defense Weekly.xlsx", 
                             col_types = c("text", "text", "text", 
                                           "text", "numeric", "numeric", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric"))

ESPN_PASSING_WEEKLY <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/ESPN_PASSING_WEEKLY.xlsx", 
                                  col_types = c("text", "text", "text", 
                                                "text", "numeric", "numeric", 
                                                "numeric", "numeric", "numeric", 
                                                "numeric", "numeric","numeric"))

Full_team_Points_Game_season <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Full team Points Game season.xlsx", 
                                           col_types = c("text", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric"))



Kick_Return_Season <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Kick Return Season.xlsx", 
                                 col_types = c("text", "text", "numeric", 
                                               "numeric", "numeric", "numeric", 
                                               "numeric", "numeric"))


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


Passing_Weekly <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Passing Weekly.xlsx", 
                             col_types = c("text", "text", "text", 
                                           "text", "numeric", "numeric", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "numeric"))



Punt_Return_season <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Punt Return season.xlsx", 
                                 col_types = c("text", "text", "numeric", 
                                               "numeric", "numeric", "numeric", 
                                               "numeric", "numeric"))


QB_SEASON_PASSING <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/QB SEASON PASSING.xlsx", 
                                col_types = c("numeric", "text", "text", 
                                              "text", "numeric", "numeric", "numeric", 
                                              "numeric", "numeric", "numeric", 
                                              "numeric", "numeric", "numeric", 
                                              "numeric", "numeric", "numeric", 
                                              "numeric", "numeric", "numeric", 
                                              "numeric"))


REC_WEEKLY <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/REC WEEKLY.xlsx",col_types = c("text", "text", "text","text", "numeric", "numeric", "numeric", "numeric", "numeric"))



Receiving_SEASON <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Receiving SEASON.xlsx", 
                               col_types = c("text", "text", "numeric", 
                                             "numeric", "numeric", "numeric", 
                                             "numeric", "numeric", "numeric", 
                                             "numeric", "numeric", "numeric"))


Rushing_Season <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Rushing Season.xlsx", 
                             col_types = c("text", "text", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric"))

Scoring_Season <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Scoring Season.xlsx", 
                             col_types = c("text", "text", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "numeric", "numeric", 
                                           "numeric", "skip", "skip", "numeric", 
                                           "numeric"))

teams_downs_seasons <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/teams downs seasons.xlsx", 
                                  col_types = c("text", "numeric", "numeric", 
                                                "numeric", "numeric", "numeric", 
                                                "numeric", "numeric", "numeric", 
                                                "numeric", "numeric", "numeric", "numeric"))
TEAMS_PASSING_SEASON <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/TEAMS PASSING SEASON.xlsx", 
                                   col_types = c("text", "numeric", "numeric", 
                                                 "numeric", "numeric", "numeric", 
                                                 "numeric", "numeric", "numeric", 
                                                 "numeric", "numeric", "numeric", 
                                                 "numeric", "numeric"))

teams_percentage_plays_season <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/teams percentage plays season.xlsx", 
                                            col_types = c("text", "numeric", "numeric", 
                                                          "numeric", "numeric", "numeric", 
                                                          "numeric"))

teams_rushing_season <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/teams rushing season.xlsx", 
                                   col_types = c("text", "numeric", "numeric", 
                                                 "numeric", "numeric", "numeric", 
                                                 "numeric", "numeric"))

teams_scoring_seasons <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/teams scoring seasons.xlsx", 
                                    col_types = c("text", "numeric", "numeric", 
                                                  "numeric", "numeric", "numeric", 
                                                  "numeric", "numeric", "numeric", 
                                                  "numeric", "numeric", "skip", "skip", 
                                                  "numeric", "numeric", "numeric"))

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


WEEKLY_ADV_RUSH_STATS <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/WEEKLY_ADV_RUSH_STATS.xlsx")

WEEKLY_REC_WEEK <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Weekly_REC_WEEK.xlsx")





WEEKLY_ADV_RUSH_STATS[3:10] <- lapply(WEEKLY_ADV_RUSH_STATS[3:10], as.numeric)

WEEKLY_REC_WEEK[4:13] <- lapply(WEEKLY_REC_WEEK[4:13], as.numeric)

#Creating Subsets 

ARI_Defense_season <- subset(Defense_Season, Defense_Season$Team == "ARI")

rams_Defense_season <- subset(Defense_Season, Defense_Season$Team == "LA")

ARI_Defense_weekly <- subset(Defense_Weekly, Defense_Weekly$Team == "ARI")

rams_Defense_weekly <- subset(Defense_Weekly, Defense_Weekly$Team == "LA")

ARI_espn_weekly_passing <- subset(ESPN_PASSING_WEEKLY, ESPN_PASSING_WEEKLY$TEAM == "ARI")

rams_espn_weekly_passing <- subset(ESPN_PASSING_WEEKLY, ESPN_PASSING_WEEKLY$TEAM == "LAR")


ARI_fullteam_points_game <- subset(Full_team_Points_Game_season, Full_team_Points_Game_season$Team == "Arizona CardinalsArizona")

rams_fullteam_points_game <- subset(Full_team_Points_Game_season, Full_team_Points_Game_season$Team == "Los Angeles RamsLA Rams")

ARI_kickreturn_szn<- subset(Kick_Return_Season, Kick_Return_Season$Team == "ARI")

rams_kickreturn_szn<- subset(Kick_Return_Season, Kick_Return_Season$Team == "LA")

ARI_nextgenstats_passing<- subset(NEXT_GEN_STATS_PASSING, NEXT_GEN_STATS_PASSING$TEAM == "ARI")

rams_nextgenstats_passing<- subset(NEXT_GEN_STATS_PASSING, NEXT_GEN_STATS_PASSING$TEAM == "LAR")

ARI_nextgenstats_receving<- subset(Next_gen_stats_receving, Next_gen_stats_receving$TEAM == "ARI")

rams_nextgenstats_receving<- subset(Next_gen_stats_receving, Next_gen_stats_receving$TEAM == "LAR")

ARI_passing_weekkly<- subset(Passing_Weekly, Passing_Weekly$Team == "ARI")

rams_passing_weekkly<- subset(Passing_Weekly, Passing_Weekly$Team == "LA")

ARI_punt_return<- subset(Punt_Return_season, Punt_Return_season$Team == "ARI")

Rams_punt_return<- subset(Punt_Return_season, Punt_Return_season$Team == "LA")

ARI_qb_passing<- subset(QB_SEASON_PASSING, QB_SEASON_PASSING$Team == "ARI")

rams_qb_passing<- subset(QB_SEASON_PASSING, QB_SEASON_PASSING$Team == "LA")

ARI_rec_weekly<- subset(REC_WEEKLY, REC_WEEKLY$Team == "ARI")

rams_rec_weekly<- subset(REC_WEEKLY, REC_WEEKLY$Team == "LA")

ARI_rec_season<- subset(Receiving_SEASON, Receiving_SEASON$Team == "ARI")

rams_rec_season<- subset(Receiving_SEASON, Receiving_SEASON$Team == "LA")

ARI_rushing_season<- subset(Rushing_Season, Rushing_Season$Team == "ARI")

rams_rushing_season<- subset(Rushing_Season, Rushing_Season$Team == "LA")

ARI_scoring_season<- subset(Scoring_Season, Scoring_Season$Team == "ARI")

rams_scoring_season<- subset(Scoring_Season, Scoring_Season$Team == "LA")

ARI_downs_season<- subset(teams_downs_seasons, teams_downs_seasons$Team == "Arizona CardinalsArizona")

rams_downs_season<- subset(teams_downs_seasons, teams_downs_seasons$Team == "Los Angeles RamsLA Rams")

ARI_team_passingseason<- subset(TEAMS_PASSING_SEASON, TEAMS_PASSING_SEASON$Team == "Arizona CardinalsArizona")

rams_team_passingseason<- subset(TEAMS_PASSING_SEASON, TEAMS_PASSING_SEASON$Team == "Los Angeles RamsLA Rams")

ARI_team_percentageplays<- subset(teams_percentage_plays_season, teams_percentage_plays_season$Team == "Arizona CardinalsArizona")

rams_team_percentageplays<- subset(teams_percentage_plays_season, teams_percentage_plays_season$Team == "Los Angeles RamsLA Rams")

ARI_team_rushing_season<- subset(teams_rushing_season, teams_rushing_season$Team == "Arizona CardinalsArizona")

rams_team_rushing_season<- subset(teams_rushing_season, teams_rushing_season$Team == "Los Angeles RamsLA Rams")

ARI_team_scoring_season<- subset(teams_scoring_seasons, teams_scoring_seasons$Team == "Arizona CardinalsArizona")

rams_team_scoring_season<- subset(teams_scoring_seasons, teams_scoring_seasons$Team == "Los Angeles RamsLA Rams")


ARI_weekly_rushing_stats <- subset(Weekly_Rushing_Stats, Weekly_Rushing_Stats$Team == "ARI")

rams_weekly_rushing_stats <- subset(Weekly_Rushing_Stats, Weekly_Rushing_Stats$Team == "LA")

ARI_weekly_passing_12_stats <- subset(Weekly_Passing, Weekly_Passing$TEAM == "ARI")

rams_weekly_passing_12_stats <- subset(Weekly_Passing, Weekly_Passing$TEAM == "LAR")

# new section

rams_weekly_adv_rec <- subset(WEEKLY_REC_WEEK, WEEKLY_REC_WEEK$TEAM == "LAR")

rams_adv_weekly_rushing_stats <- subset(WEEKLY_ADV_RUSH_STATS, WEEKLY_ADV_RUSH_STATS$TEAM == "LAR")

ARI_weekly_adv_rec <-  subset(WEEKLY_REC_WEEK, WEEKLY_REC_WEEK$TEAM == "ARI")

ARI_adv_weekly_rushing_stats <- subset(WEEKLY_ADV_RUSH_STATS, WEEKLY_ADV_RUSH_STATS$TEAM == "ARI")



# TESTING SECTION FOR FINAL MODELS AT END OF PROJECT:

CIN_WP <-subset(Weekly_Passing, Weekly_Passing$TEAM =="CIN")

CIN_WR <-subset(WEEKLY_REC_WEEK, WEEKLY_REC_WEEK$TEAM =="CIN")

CIN_WRUSH <-subset(WEEKLY_ADV_RUSH_STATS, WEEKLY_ADV_RUSH_STATS$TEAM =="CIN")



KC_WP <-subset(Weekly_Passing, Weekly_Passing$TEAM =="KC")

KC_WR <-subset(WEEKLY_REC_WEEK, WEEKLY_REC_WEEK$TEAM =="KC")

KC_WRUSH <-subset(WEEKLY_ADV_RUSH_STATS, WEEKLY_ADV_RUSH_STATS$TEAM =="KC")

# Statistical tests 
library("ggpubr")

#Full Team points 

Full_team_Points_Game_season$ttp <- Full_team_Points_Game_season$`Tot?Pts`
rams_fullteam_points_game$ttp  <-rams_fullteam_points_game$`Tot?Pts`
#Total points
Mu_ftp <- mean(Full_team_Points_Game_season$ttp)
sigma_ftp <- sd(Full_team_Points_Game_season$ttp)
TBA_ftp <- mean(rams_fullteam_points_game$ttp)
SE_TBD_ftp <-sigma_ftp/sqrt(length(rams_fullteam_points_game$ttp)) 
s_z1_ftp <- (TBA_ftp - Mu_ftp)/SE_TBD_ftp

s_z1_ftp
#Total points
Mu_ftp <- mean(Full_team_Points_Game_season$`Tot Pts`)
sigma_ftp <- sd(Full_team_Points_Game_season$`Tot Pts`)
TBA_ftp <- mean(rams_fullteam_points_game$`Tot Pts`)
SE_TBD_ftp <- sigma_ftp/sqrt(length(rams_fullteam_points_game$`Tot Pts`)) 
z1_ftp <- (TBA_ftp - Mu_ftp)/SE_TBD_ftp

#point per game 
Mu_ftp_1 <- mean(Full_team_Points_Game_season$`Pts/G`)
sigma_ftp_1 <- sd(Full_team_Points_Game_season$`Pts/G`)
TBA_ftp_1 <- mean(rams_fullteam_points_game$`Pts/G`)
SE_TBD_ftp_1 <- sigma_ftp_1/sqrt(length(rams_fullteam_points_game$`Pts/G`)) 
z1_ftp_1 <- (TBA_ftp_1 - Mu_ftp_1)/SE_TBD_ftp_1
z1_ftp_1

#Rush yards
Mu_ftp_2 <- mean(Full_team_Points_Game_season$RushYds)
sigma_ftp_2 <- sd(Full_team_Points_Game_season$RushYds)
TBA_ftp_2 <- mean(rams_fullteam_points_game$RushYds)
SE_TBD_ftp_2 <- sigma_ftp_2/sqrt(length(rams_fullteam_points_game$RushYds)) 
z1_ftp_2 <- (TBA_ftp_2 - Mu_ftp_2)/SE_TBD_ftp_2
z1_ftp_2

#rush yards per game 
Mu_ftp_3 <- mean(Full_team_Points_Game_season$`RYds/G`)
sigma_ftp_3 <- sd(Full_team_Points_Game_season$`RYds/G`)
TBA_ftp_3 <- mean(rams_fullteam_points_game$`RYds/G`)
SE_TBD_ftp_3<- sigma_ftp_3/sqrt(length(rams_fullteam_points_game$`RYds/G`)) 
z1_ftp_3 <- (TBA_ftp_3 - Mu_ftp_3)/SE_TBD_ftp_3
z1_ftp_3

#passing yards
Mu_ftp_4 <- mean(Full_team_Points_Game_season$PassYds)
sigma_ftp_4 <- sd(Full_team_Points_Game_season$PassYds)
TBA_ftp_4 <- mean(rams_fullteam_points_game$PassYds)
SE_TBD_ftp_4<- sigma_ftp_4/sqrt(length(rams_fullteam_points_game$PassYds)) 
z1_ftp_4 <- (TBA_ftp_4 - Mu_ftp_4)/SE_TBD_ftp_4
z1_ftp_4



#passing yards per game 
Mu_ftp_5 <- mean(Full_team_Points_Game_season$`PYds/G`)
sigma_ftp_5 <-sd(Full_team_Points_Game_season$`PYds/G`)
TBA_ftp_5 <- mean(rams_fullteam_points_game$`PYds/G`)
SE_TBD_ftp_5<- sigma_ftp_5/sqrt(length(rams_fullteam_points_game$`PYds/G`)) 
z1_ftp_5<- (TBA_ftp_5 - Mu_ftp_5)/SE_TBD_ftp_5
z1_ftp_5

#total yards
Mu_ftp_6 <- mean(Full_team_Points_Game_season$TotYds)
sigma_ftp_6 <-sd(Full_team_Points_Game_season$TotYds)
TBA_ftp_6 <- mean(rams_fullteam_points_game$TotYds)
SE_TBD_ftp_6<- sigma_ftp_6/sqrt(length(rams_fullteam_points_game$TotYds)) 
z1_ftp_6<- (TBA_ftp_6 - Mu_ftp_6)/SE_TBD_ftp_6
z1_ftp_6


#total yards per game 
Mu_ftp_7 <- mean(Full_team_Points_Game_season$`Yds/G`)
sigma_ftp_7 <-sd(Full_team_Points_Game_season$`Yds/G`)
TBA_ftp_7 <- mean(rams_fullteam_points_game$`Yds/G`)
SE_TBD_ftp_7<- sigma_ftp_7/sqrt(length(rams_fullteam_points_game$`Yds/G`)) 
z1_ftp_7<- (TBA_ftp_7 - Mu_ftp_7)/SE_TBD_ftp_7
z1_ftp_7


#Next gen stats passing

#TT
Mu_ngp <- mean(NEXT_GEN_STATS_PASSING$TT)
sigma_ngp <-sd(NEXT_GEN_STATS_PASSING$TT)
TBA_ngp <- mean(rams_nextgenstats_passing$TT)
SE_TBD_ngp<- sigma_ngp/sqrt(length(rams_nextgenstats_passing$TT)) 
z1_ngp<- (TBA_ngp - Mu_ngp)/SE_TBD_ngp
z1_ngp


#Next gen stats passing
#CAY
Mu_ngp_1 <- mean(NEXT_GEN_STATS_PASSING$CAY)
sigma_ngp_1 <-sd(NEXT_GEN_STATS_PASSING$CAY)
TBA_ngp_1 <- mean(rams_nextgenstats_passing$CAY)
SE_TBD_ngp_1<- sigma_ngp_1/sqrt(length(rams_nextgenstats_passing$CAY)) 
z1_ngp_1<- (TBA_ngp_1 - Mu_ngp_1)/SE_TBD_ngp_1
z1_ngp_1

#Next gen stats passing
#total yards per game 
Mu_ngp_2 <- mean(NEXT_GEN_STATS_PASSING$IAY)
sigma_ngp_2 <-sd(NEXT_GEN_STATS_PASSING$IAY)
TBA_ngp_2 <- mean(rams_nextgenstats_passing$IAY)
SE_TBD_ngp_2<- sigma_ngp_2/sqrt(length(rams_nextgenstats_passing$IAY)) 
z1_ngp_2<- (TBA_ngp_2 - Mu_ngp_2)/SE_TBD_ngp_2
z1_ngp_2

#Next gen stats passing
#ayd
Mu_ngp_3 <- mean(NEXT_GEN_STATS_PASSING$AYD)
sigma_ngp_3 <-sd(NEXT_GEN_STATS_PASSING$AYD)
TBA_ngp_3<- mean(rams_nextgenstats_passing$AYD)
SE_TBD_ngp_3<- sigma_ngp_3/sqrt(length(rams_nextgenstats_passing$AYD)) 
z1_ngp_3<- (TBA_ngp_3 - Mu_ngp_3)/SE_TBD_ngp_3
z1_ngp_3


#agg
Mu_ngp_4 <- mean(NEXT_GEN_STATS_PASSING$`AGG%`)
sigma_ngp_4 <-sd(NEXT_GEN_STATS_PASSING$`AGG%`)
TBA_ngp_4<- mean(rams_nextgenstats_passing$`AGG%`)
SE_TBD_ngp_4<- sigma_ngp_4/sqrt(length(rams_nextgenstats_passing$`AGG%`)) 
z1_ngp_4<- (TBA_ngp_4 - Mu_ngp_4)/SE_TBD_ngp_4
z1_ngp_4

#LCAD
Mu_ngp_5 <- mean(NEXT_GEN_STATS_PASSING$LCAD)
sigma_ngp_5 <-sd(NEXT_GEN_STATS_PASSING$LCAD)
TBA_ngp_5<- mean(rams_nextgenstats_passing$LCAD)
SE_TBD_ngp_5<- sigma_ngp_5/sqrt(length(rams_nextgenstats_passing$LCAD)) 
z1_ngp_5<- (TBA_ngp_5 - Mu_ngp_5)/SE_TBD_ngp_5
z1_ngp_5

#AYTS
Mu_ngp_6 <- mean(NEXT_GEN_STATS_PASSING$AYTS)
sigma_ngp_6 <-sd(NEXT_GEN_STATS_PASSING$AYTS)
TBA_ngp_6<- mean(rams_nextgenstats_passing$AYTS)
SE_TBD_ngp_6<- sigma_ngp_6/sqrt(length(rams_nextgenstats_passing$AYTS)) 
z1_ngp_6<- (TBA_ngp_6 - Mu_ngp_6)/SE_TBD_ngp_6
z1_ngp_6

#ATT
Mu_ngp_7 <- mean(NEXT_GEN_STATS_PASSING$ATT)
sigma_ngp_7 <-sd(NEXT_GEN_STATS_PASSING$ATT)
TBA_ngp_7<- mean(rams_nextgenstats_passing$ATT)
SE_TBD_ngp_7<- sigma_ngp_7/sqrt(length(rams_nextgenstats_passing$ATT)) 
z1_ngp_7<- (TBA_ngp_7 - Mu_ngp_7)/SE_TBD_ngp_7
z1_ngp_7

#
Mu_ngp_8 <- mean(NEXT_GEN_STATS_PASSING$YDS)
sigma_ngp_8 <-sd(NEXT_GEN_STATS_PASSING$YDS)
TBA_ngp_8<- mean(rams_nextgenstats_passing$YDS)
SE_TBD_ngp_8<- sigma_ngp_8/sqrt(length(rams_nextgenstats_passing$YDS)) 
z1_ngp_8<- (TBA_ngp_8 - Mu_ngp_8)/SE_TBD_ngp_8
z1_ngp_8

z_score_function <- function(x,y){
  Mu_ngp_8 <- mean(x)
  sigma_ngp_8 <-sd(x)
  TBA_ngp_8<- mean(y)
  SE_TBD_ngp_8<- sigma_ngp_8/sqrt(length(y)) 
  z1_ngp_8<- (TBA_ngp_8 - Mu_ngp_8)/SE_TBD_ngp_8
  z1_ngp_8
  
}

#touchdowns
z1_ngp_9 <- z_score_function(NEXT_GEN_STATS_PASSING$TD,rams_nextgenstats_passing$TD)

z1_ngp_9

#Int
z1_ngp_10 <- z_score_function(NEXT_GEN_STATS_PASSING$INT,rams_nextgenstats_passing$INT)

z1_ngp_10

#rate
z1_ngp_11 <- z_score_function(NEXT_GEN_STATS_PASSING$RATE,rams_nextgenstats_passing$RATE)

z1_ngp_11

#comp
z1_ngp_12 <- z_score_function(NEXT_GEN_STATS_PASSING$`COMP%`,rams_nextgenstats_passing$`COMP%`)

z1_ngp_12

#comp exp
z1_ngp_13 <- z_score_function(NEXT_GEN_STATS_PASSING$`xCOMP%`,rams_nextgenstats_passing$`xCOMP%`)

z1_ngp_13


#QB passing cont data set


#attempts per game
z1_ngp_14 <- z_score_function(QB_SEASON_PASSING$`Att/G`,rams_qb_passing$`Att/G`)

z1_ngp_14

#1st
z1_ngp_15 <- z_score_function(QB_SEASON_PASSING$`1st`,rams_qb_passing$`1st`)

z1_ngp_15

#1st percentage
z1_ngp_16 <- z_score_function(QB_SEASON_PASSING$`1st%`,rams_qb_passing$`1st%`)

z1_ngp_16

#lng
z1_ngp_17 <- z_score_function(QB_SEASON_PASSING$Lng,rams_qb_passing$Lng)

z1_ngp_17

#20+
z1_ngp_18 <- z_score_function(QB_SEASON_PASSING$`20+`,rams_qb_passing$`20+`)

z1_ngp_18

#40+
z1_ngp_19 <- z_score_function(QB_SEASON_PASSING$`40+`,rams_qb_passing$`40+`)

z1_ngp_19

#sack
z1_ngp_20 <- z_score_function(QB_SEASON_PASSING$Sck,rams_qb_passing$Sck)

z1_ngp_20

#sack rate
z1_ngp_21 <- z_score_function(QB_SEASON_PASSING$Rate,rams_qb_passing$Rate)

z1_ngp_21

#teams Downs season 

#first down rush
z1_teams_ds <- z_score_function(teams_downs_seasons$`First Downs Rush`,rams_downs_season$`First Downs Rush`)

z1_teams_ds

#first down pass
z1_teams_ds_1 <- z_score_function(teams_downs_seasons$`First Downs Pass`,rams_downs_season$`First Downs Pass`)

z1_teams_ds_1

#first down pen
z1_teams_ds_2 <- z_score_function(teams_downs_seasons$`First Downs Pen`,rams_downs_season$`First Downs Pen`)

z1_teams_ds_2

#first down tot
z1_teams_ds_2 <- z_score_function(teams_downs_seasons$`First Downs Tot`,rams_downs_season$`First Downs Tot`)

z1_teams_ds_2

#third down eff att
z1_teams_ds_3 <- z_score_function(teams_downs_seasons$`Third Down Efficiency Att`,rams_downs_season$`Third Down Efficiency Att`)

z1_teams_ds_3

#third down eff made
z1_teams_ds_4 <- z_score_function(teams_downs_seasons$`Third Down Efficiency Made`,rams_downs_season$`Third Down Efficiency Made`)

z1_teams_ds_4

#third down eff pct
z1_teams_ds_5 <- z_score_function(teams_downs_seasons$`Third Down Efficiency Pct`,rams_downs_season$`Third Down Efficiency Pct`)

z1_teams_ds_5

#fourth down att
z1_teams_ds_6 <- z_score_function(teams_downs_seasons$`Fourth Down Efficiency Att`,rams_downs_season$`Fourth Down Efficiency Att`)

z1_teams_ds_6

#fourth down made
z1_teams_ds_7 <- z_score_function(teams_downs_seasons$`Fourth Down Efficiency Made`,rams_downs_season$`Fourth Down Efficiency Made`)

z1_teams_ds_7

#fourth down pct
z1_teams_ds_8 <- z_score_function(teams_downs_seasons$`Fourth Down Efficiency Pct`,rams_downs_season$`Fourth Down Efficiency Pct`)

z1_teams_ds_8

#Teams passing season

#yards per attempt passing 
z1_teams_ps_1<- z_score_function(TEAMS_PASSING_SEASON$YPA,rams_team_passingseason$YPA)

z1_teams_ps_1


#sack yards loss
z1_teams_ps_2<- z_score_function(TEAMS_PASSING_SEASON$Loss,rams_team_passingseason$Loss)

z1_teams_ps_2

#net yards season 
z1_teams_ps_3<- z_score_function(TEAMS_PASSING_SEASON$NetYds,rams_team_passingseason$NetYds)

z1_teams_ps_3

#passing yards/game
z1_teams_ps_4<- z_score_function(TEAMS_PASSING_SEASON$`Yds/G`,rams_team_passingseason$`Yds/G`)

z1_teams_ps_4


# Percentage plays 

#plays done
z1_percentage_1<- z_score_function(teams_percentage_plays_season$Plays,rams_team_percentageplays$Plays)

z1_percentage_1


#rush percentage
z1_percentage_2<- z_score_function(teams_percentage_plays_season$`Rush%`,rams_team_percentageplays$`Rush%`)

z1_percentage_2

#rush plays
z1_percentage_3<- z_score_function(teams_percentage_plays_season$Rush,rams_team_percentageplays$Rush)

z1_percentage_3

#pass plays
z1_percentage_4<- z_score_function(teams_percentage_plays_season$Pass,rams_team_percentageplays$Pass)

z1_percentage_4

#pass percentage
z1_percentage_5<- z_score_function(teams_percentage_plays_season$`Pass%`,rams_team_percentageplays$`Pass%`)

z1_percentage_5

#Teams rushing season 
#rushing attempts
z1_team_rushing_1<- z_score_function(teams_rushing_season$Att,rams_team_rushing_season$Att)

z1_team_rushing_1

#rushing yards
z1_team_rushing_2<- z_score_function(teams_rushing_season$Yds,rams_team_rushing_season$Yds)

z1_team_rushing_2

#rushing avg
z1_team_rushing_3<- z_score_function(teams_rushing_season$Avg,rams_team_rushing_season$Avg)

z1_team_rushing_3

#rushing td
z1_team_rushing_4<- z_score_function(teams_rushing_season$TD,rams_team_rushing_season$TD)

z1_team_rushing_4

#rushing FD
z1_team_rushing_5<- z_score_function(teams_rushing_season$FD,rams_team_rushing_season$FD)

z1_team_rushing_5

#rushing 
z1_team_rushing_6<- z_score_function(teams_rushing_season$`Yds/G`,rams_team_rushing_season$`Yds/G`)

z1_team_rushing_6

#Team Scoring season 

#scoring td total
z1_team_scoring_1<- z_score_function(teams_scoring_seasons$`Touchdowns Tot`,rams_team_scoring_season$`Touchdowns Tot`)

z1_team_scoring_1

#scoring td r 
z1_team_scoring_2<- z_score_function(teams_scoring_seasons$`Touchdowns R`,rams_team_scoring_season$`Touchdowns R`)

z1_team_scoring_2

#scoring td p 
z1_team_scoring_3 <- z_score_function(teams_scoring_seasons$`Touchdowns P`,rams_team_scoring_season$`Touchdowns P`)

z1_team_scoring_3

#scoring td kr
z1_team_scoring_4<- z_score_function(teams_scoring_seasons$`Touchdowns KR`,rams_team_scoring_season$`Touchdowns KR`)

z1_team_scoring_4

#scoring td  pr
z1_team_scoring_5<- z_score_function(teams_scoring_seasons$`Touchdowns PR`,rams_team_scoring_season$`Touchdowns PR`)

z1_team_scoring_5

#scoring td ir 
z1_team_scoring_6<- z_score_function(teams_scoring_seasons$`Touchdowns IR`,rams_team_scoring_season$`Touchdowns IR`)

z1_team_scoring_6

#scoring td fr
z1_team_scoring_7<- z_score_function(teams_scoring_seasons$`Touchdowns FR`,rams_team_scoring_season$`Touchdowns FR`)

z1_team_scoring_7

#scoring td bk
z1_team_scoring_8<- z_score_function(teams_scoring_seasons$`Touchdowns BK`,rams_team_scoring_season$`Touchdowns BK`)

z1_team_scoring_8

#scoring td bp
z1_team_scoring_9<- z_score_function(teams_scoring_seasons$`Touchdowns BP`,rams_team_scoring_season$`Touchdowns BP`)

z1_team_scoring_9


#scoring misc conv
z1_team_scoring_13<- z_score_function(teams_scoring_seasons$`Misc Conv`,rams_team_scoring_season$`Misc Conv`)

z1_team_scoring_13

#scoring misc saf
z1_team_scoring_14<- z_score_function(teams_scoring_seasons$`Misc Saf`,rams_team_scoring_season$`Misc Saf`)

z1_team_scoring_14

#scoring misc pts
z1_team_scoring_15<- z_score_function(teams_scoring_seasons$`Misc Pts`,rams_team_scoring_season$`Misc Pts`)

z1_team_scoring_15


#t tests for several points 

t_function_test <- function(x,y){
  z <-mean(y)
  t.test(x,mean = z)
}

# interceptions 
rams_def_season_result_1<- t_function_test(rams_Defense_season$`Interceptions Int`,Defense_Season$`Interceptions Int`)

rams_def_season_result_1

# interception yards
rams_def_season_result_2<- t_function_test(rams_Defense_season$`Interceptions Yds`,Defense_Season$`Interceptions Yds`)

rams_def_season_result_2


# interception avg
rams_def_season_result_3<- t_function_test(rams_Defense_season$`Interceptions Avg`,Defense_Season$`Interceptions Avg`)

rams_def_season_result_3

# interception long
rams_def_season_result_4<- t_function_test(rams_Defense_season$`Interceptions Lg`,Defense_Season$`Interceptions Lg`)

rams_def_season_result_4

# interception TD
rams_def_season_result_5<- t_function_test(rams_Defense_season$`Interceptions TD`,Defense_Season$`Interceptions TD`)

rams_def_season_result_5

# solo tackles
rams_def_season_result_6<- t_function_test(rams_Defense_season$`Tackles Solo`,Defense_Season$`Tackles Solo`)

rams_def_season_result_6

# ast tackles
rams_def_season_result_7<- t_function_test(rams_Defense_season$`Tackles Ast`,Defense_Season$`Tackles Ast`)

rams_def_season_result_7

# tot tackles
rams_def_season_result_8<- t_function_test(rams_Defense_season$`Tackles Tot`,Defense_Season$`Tackles Tot`)

rams_def_season_result_8

# sacks
rams_def_season_result_9<- t_function_test(rams_Defense_season$`Sacks Sack`,Defense_Season$`Sacks Sack`)

rams_def_season_result_9

# sack yards lost
rams_def_season_result_10<- t_function_test(rams_Defense_season$`Sacks YdsL`,Defense_Season$`Sacks YdsL`)

rams_def_season_result_10

#Defense Weekly 

# sacks
rams_def_weekly_result_1<- t_function_test(rams_Defense_weekly$Sacks,Defense_Weekly$Sacks)

rams_def_weekly_result_1


# sacks yards 
rams_def_weekly_result_2<- t_function_test(rams_Defense_weekly$`Sack Yds`,Defense_Weekly$`Sack Yds`)

rams_def_weekly_result_2

# qb hits
rams_def_weekly_result_3<- t_function_test(rams_Defense_weekly$`QB Hits`,Defense_Weekly$`QB Hits`)

rams_def_weekly_result_3

# tackles
rams_def_weekly_result_4<- t_function_test(rams_Defense_weekly$Tackles,Defense_Weekly$Tackles)

rams_def_weekly_result_4

# assists 
rams_def_weekly_result_5<- t_function_test(rams_Defense_weekly$Assists,Defense_Weekly$Assists)

rams_def_weekly_result_5

# fumbles forced
rams_def_weekly_result_6<- t_function_test(rams_Defense_weekly$`Fumbles Forced`,Defense_Weekly$`Fumbles Forced`)

rams_def_weekly_result_6

# fumbleds recovered 
rams_def_weekly_result_7<- t_function_test(rams_Defense_weekly$`Fumbles Recovered`,Defense_Weekly$`Fumbles Recovered`)

rams_def_weekly_result_7

#ESPN passing 

# comp
rams_ESPN_Passing_weekly_result_1<- t_function_test(rams_espn_weekly_passing$COMP,ESPN_PASSING_WEEKLY$COMP)

rams_ESPN_Passing_weekly_result_1

# attempts
rams_ESPN_Passing_weekly_result_2<- t_function_test(rams_espn_weekly_passing$ATT,ESPN_PASSING_WEEKLY$ATT)

rams_ESPN_Passing_weekly_result_2

# yards
rams_ESPN_Passing_weekly_result_3<- t_function_test(rams_espn_weekly_passing$YDS,ESPN_PASSING_WEEKLY$YDS)

rams_ESPN_Passing_weekly_result_3

# td
rams_ESPN_Passing_weekly_result_4<- t_function_test(rams_espn_weekly_passing$TD,ESPN_PASSING_WEEKLY$TD)

rams_ESPN_Passing_weekly_result_4

# interception
rams_ESPN_Passing_weekly_result_5<- t_function_test(rams_espn_weekly_passing$INT,ESPN_PASSING_WEEKLY$INT)

rams_ESPN_Passing_weekly_result_5

# sack
rams_ESPN_Passing_weekly_result_6<- t_function_test(rams_espn_weekly_passing$SACK,ESPN_PASSING_WEEKLY$SACK)

rams_ESPN_Passing_weekly_result_6

# fumbles
rams_ESPN_Passing_weekly_result_7<- t_function_test(rams_espn_weekly_passing$FUM,ESPN_PASSING_WEEKLY$FUM)

rams_ESPN_Passing_weekly_result_7

# qb rating 
rams_ESPN_Passing_weekly_result_8<- t_function_test(rams_espn_weekly_passing$RAT,ESPN_PASSING_WEEKLY$RAT)

rams_ESPN_Passing_weekly_result_8

#Kick Return seasom

# yards
rams_kick_return_1<- t_function_test(rams_kickreturn_szn$Yds,Kick_Return_Season$Yds)

rams_kick_return_1

#Kick Return seasom

# avg
rams_kick_return_2<- t_function_test(rams_kickreturn_szn$Avg,Kick_Return_Season$Avg)

rams_kick_return_2

#Kick Return seasom

# FC
rams_kick_return_3<- t_function_test(rams_kickreturn_szn$FC,Kick_Return_Season$FC)

rams_kick_return_3

#Kick Return seasom

# lg
rams_kick_return_4<- t_function_test(rams_kickreturn_szn$Lg,Kick_Return_Season$Lg)

rams_kick_return_4

#Kick Return seasom

# td
rams_kick_return_5<- t_function_test(rams_kickreturn_szn$TD,Kick_Return_Season$TD)

rams_kick_return_5

#Next gen stats receving:

#Kick Return seasom

# cushion
rams_nextgenstats_rec_1<- t_function_test(rams_nextgenstats_receving$CUSH,Next_gen_stats_receving$CUSH)

rams_nextgenstats_rec_1

# Sep
rams_nextgenstats_rec_2<- t_function_test(rams_nextgenstats_receving$SEP,Next_gen_stats_receving$SEP)

rams_nextgenstats_rec_2

# tay
rams_nextgenstats_rec_3<- t_function_test(rams_nextgenstats_receving$TAY,Next_gen_stats_receving$TAY)

rams_nextgenstats_rec_3

# Tay percen
rams_nextgenstats_rec_4<- t_function_test(rams_nextgenstats_receving$`TAY%`,Next_gen_stats_receving$`TAY%`)

rams_nextgenstats_rec_4

# Rec
rams_nextgenstats_rec_5<- t_function_test(rams_nextgenstats_receving$REC,Next_gen_stats_receving$REC)

rams_nextgenstats_rec_5

# Tar
rams_nextgenstats_rec_6<- t_function_test(rams_nextgenstats_receving$TAR,Next_gen_stats_receving$TAR)

rams_nextgenstats_rec_6


# catch percentage
rams_nextgenstats_rec_7<- t_function_test(rams_nextgenstats_receving$`CTCH%`,Next_gen_stats_receving$`CTCH%`)

rams_nextgenstats_rec_7


# yards
rams_nextgenstats_rec_8<- t_function_test(rams_nextgenstats_receving$YDS,Next_gen_stats_receving$YDS)

rams_nextgenstats_rec_8

# td
rams_nextgenstats_rec_9<- t_function_test(rams_nextgenstats_receving$TD,Next_gen_stats_receving$TD)

rams_nextgenstats_rec_9


# yards after catch per recpetion
rams_nextgenstats_rec_10<- t_function_test(rams_nextgenstats_receving$`YAC/R`,Next_gen_stats_receving$`YAC/R`)

rams_nextgenstats_rec_10


# expected yac/r
rams_nextgenstats_rec_11<- t_function_test(rams_nextgenstats_receving$`xYAC/R`,Next_gen_stats_receving$`xYAC/R`)

rams_nextgenstats_rec_11

# differential of yards after catch per reception 
rams_nextgenstats_rec_12<- t_function_test(rams_nextgenstats_receving$`+/-`,Next_gen_stats_receving$`+/-`)

rams_nextgenstats_rec_12


#Passing Weekly 

#Comp
rams_passing_weekly_results_1<- t_function_test(rams_passing_weekkly$Comp,Passing_Weekly$Comp)

rams_passing_weekly_results_1

#att
rams_passing_weekly_results_2<- t_function_test(rams_passing_weekkly$Att,Passing_Weekly$Att)

rams_passing_weekly_results_2

#yards
rams_passing_weekly_results_3<- t_function_test(rams_passing_weekkly$Yds,Passing_Weekly$Yds)

rams_passing_weekly_results_3

#td
rams_passing_weekly_results_4<- t_function_test(rams_passing_weekkly$TD,Passing_Weekly$TD)

rams_passing_weekly_results_4

#int
rams_passing_weekly_results_5<- t_function_test(rams_passing_weekkly$Int,Passing_Weekly$Int)

rams_passing_weekly_results_5

#sack
rams_passing_weekly_results_6<- t_function_test(rams_passing_weekkly$Sck,Passing_Weekly$Sck)

rams_passing_weekly_results_6

#fumbles
rams_passing_weekly_results_7<- t_function_test(rams_passing_weekkly$FUM,Passing_Weekly$FUM)

rams_passing_weekly_results_7

#rate
rams_passing_weekly_results_8<- t_function_test(rams_passing_weekkly$Rate,Passing_Weekly$Rate)

rams_passing_weekly_results_8


#Punt Return 

#yards
rams_puntreturn_1<- t_function_test(Rams_punt_return$Yds,Punt_Return_season$Yds)

rams_puntreturn_1

#avg
rams_puntreturn_2<- t_function_test(Rams_punt_return$Avg,Punt_Return_season$Avg)

rams_puntreturn_2

#FC
rams_puntreturn_3<- t_function_test(Rams_punt_return$FC,Punt_Return_season$FC)

rams_puntreturn_3

#lg
rams_puntreturn_4<- t_function_test(Rams_punt_return$Lg,Punt_Return_season$Lg)

rams_puntreturn_4

#td
rams_puntreturn_5<- t_function_test(Rams_punt_return$TD,Punt_Return_season$TD)

rams_puntreturn_5

#Receving Weekly 

#rec
rams_recweekly_1<- t_function_test(rams_rec_weekly$Rec,REC_WEEKLY$Rec)

rams_recweekly_1

#yards
rams_recweekly_2<- t_function_test(rams_rec_weekly$Yds,REC_WEEKLY$Yds)

rams_recweekly_2

#avg
rams_recweekly_3<- t_function_test(rams_rec_weekly$Avg,REC_WEEKLY$Avg)

rams_recweekly_3

#td
rams_recweekly_4<- t_function_test(rams_rec_weekly$TD,REC_WEEKLY$TD)

rams_recweekly_4

#fumbles
rams_recweekly_5<- t_function_test(rams_rec_weekly$FUM,REC_WEEKLY$FUM)

rams_recweekly_5

#Rushing Season 

#rushing td
rams_rushingseason_1<- t_function_test(rams_rushing_season$TD,Rushing_Season$TD)

rams_rushingseason_1


#rushing att
rams_rushingseason_2<- t_function_test(rams_rushing_season$Att,Rushing_Season$Att)

rams_rushingseason_2

#rushing yards
rams_rushingseason_3<- t_function_test(rams_rushing_season$Yds,Rushing_Season$Yds)

rams_rushingseason_3

#rushing avg
rams_rushingseason_4<- t_function_test(rams_rushing_season$Avg,Rushing_Season$Avg)

rams_rushingseason_4

#rushing ypg
rams_rushingseason_5<- t_function_test(rams_rushing_season$YPG,Rushing_Season$YPG)

rams_rushingseason_5

#rushing lg
rams_rushingseason_6<- t_function_test(rams_rushing_season$Lg,Rushing_Season$Lg)

rams_rushingseason_6

#rushing fd
rams_rushingseason_7<- t_function_test(rams_rushing_season$FD,Rushing_Season$FD)

rams_rushingseason_7

#Scoring season stats

#scoring points
rams_Scoring_scoring_1<- t_function_test(rams_scoring_season$Pts,Scoring_Season$Pts)

rams_Scoring_scoring_1

#stouchdown total
rams_Scoring_scoring_2<- t_function_test(rams_scoring_season$`Touchdowns Tot`,Scoring_Season$`Touchdowns Tot`)

rams_Scoring_scoring_2

#touchdown r
rams_Scoring_scoring_3<- t_function_test(rams_scoring_season$`Touchdowns R`,Scoring_Season$`Touchdowns R`)

rams_Scoring_scoring_3

#touchdown p
rams_Scoring_scoring_4<- t_function_test(rams_scoring_season$`Touchdowns P`,Scoring_Season$`Touchdowns P`)

rams_Scoring_scoring_4

#touchdown kr
rams_Scoring_scoring_5<- t_function_test(rams_scoring_season$`Touchdowns KR`, Scoring_Season$`Touchdowns KR`)

rams_Scoring_scoring_5

#touchdown pr
rams_Scoring_scoring_6<- t_function_test(rams_scoring_season$`Touchdowns PR`,Scoring_Season$`Touchdowns PR`)

rams_Scoring_scoring_6

#touchdown IR
rams_Scoring_scoring_7<- t_function_test(rams_scoring_season$`Touchdowns IR`,Scoring_Season$`Touchdowns IR`)
rams_Scoring_scoring_7

#touchdown fr
rams_Scoring_scoring_8<- t_function_test(rams_scoring_season$`Touchdowns FR`,Scoring_Season$`Touchdowns FR`)

rams_Scoring_scoring_8

#touchdown bk
rams_Scoring_scoring_9<- t_function_test(rams_scoring_season$`Touchdowns BK`,Scoring_Season$`Touchdowns BK`)

rams_Scoring_scoring_9

#touchdown bp
rams_Scoring_scoring_10<- t_function_test(rams_scoring_season$`Touchdowns BP`,Scoring_Season$`Touchdowns BP`)

rams_Scoring_scoring_10

#touchdown fgr
rams_Scoring_scoring_11<- t_function_test(rams_scoring_season$`Touchdowns FGR`,Scoring_Season$`Touchdowns FGR`)

rams_Scoring_scoring_11

#misc conv
rams_Scoring_scoring_14<- t_function_test(rams_scoring_season$`Misc Conv`,Scoring_Season$`Misc Conv`)

rams_Scoring_scoring_14

#misc saf
rams_Scoring_scoring_15<- t_function_test(rams_scoring_season$`Misc Saf`,Scoring_Season$`Misc Saf`)

rams_Scoring_scoring_15

#Weekly Rushing stats 

#attempts
rams_weekly_rushing_stats_1<- t_function_test(rams_weekly_rushing_stats$Att,Weekly_Rushing_Stats$Att)

rams_weekly_rushing_stats_1

#yards
rams_weekly_rushing_stats_2<- t_function_test(rams_weekly_rushing_stats$Yds,Weekly_Rushing_Stats$Yds)

rams_weekly_rushing_stats_2

#avg
rams_weekly_rushing_stats_3<- t_function_test(rams_weekly_rushing_stats$Avg,Weekly_Rushing_Stats$Avg)

rams_weekly_rushing_stats_3

#td
rams_weekly_rushing_stats_4<- t_function_test(rams_weekly_rushing_stats$TD,Weekly_Rushing_Stats$TD)

rams_weekly_rushing_stats_4

#fum
rams_weekly_rushing_stats_5<- t_function_test(rams_weekly_rushing_stats$FUM,Weekly_Rushing_Stats$FUM)

rams_weekly_rushing_stats_5


#Weekly Passing 

#TT
rams_weeklypassing_12_1<- t_function_test(rams_weekly_passing_12_stats$TT,Weekly_Passing$TT)

rams_weeklypassing_12_1

#CAY
rams_weeklypassing_12_2<- t_function_test(rams_weekly_passing_12_stats$CAY,Weekly_Passing$CAY)

rams_weeklypassing_12_2

#IAY
rams_weeklypassing_12_3<- t_function_test(rams_weekly_passing_12_stats$IAY,Weekly_Passing$IAY)

rams_weeklypassing_12_3

#ayd
rams_weeklypassing_12_4<- t_function_test(rams_weekly_passing_12_stats$AYD,Weekly_Passing$AYD)

rams_weeklypassing_12_4

#agg
rams_weeklypassing_12_5<- t_function_test(rams_weekly_passing_12_stats$`AGG%`,Weekly_Passing$`AGG%`)

rams_weeklypassing_12_5

#lcad
rams_weeklypassing_12_6<- t_function_test(rams_weekly_passing_12_stats$LCAD,Weekly_Passing$LCAD)

rams_weeklypassing_12_6

#ayts
rams_weeklypassing_12_7<- t_function_test(rams_weekly_passing_12_stats$AYTS,Weekly_Passing$AYTS)

rams_weeklypassing_12_7

#att
rams_weeklypassing_12_8<- t_function_test(rams_weekly_passing_12_stats$ATT,Weekly_Passing$ATT)

rams_weeklypassing_12_8

#yds
rams_weeklypassing_12_9<- t_function_test(rams_weekly_passing_12_stats$YDS,Weekly_Passing$YDS)

rams_weeklypassing_12_9

#TD
rams_weeklypassing_12_10<- t_function_test(rams_weekly_passing_12_stats$TD,Weekly_Passing$TD)

rams_weeklypassing_12_10

#int
rams_weeklypassing_12_11<- t_function_test(rams_weekly_passing_12_stats$INT,Weekly_Passing$INT)

rams_weeklypassing_12_11

#comp
rams_weeklypassing_12_13<- t_function_test(rams_weekly_passing_12_stats$`COMP%`,Weekly_Passing$`COMP%`)

rams_weeklypassing_12_13


#expected comp
rams_weeklypassing_12_14<- t_function_test(rams_weekly_passing_12_stats$`xCOMP%`,Weekly_Passing$`xCOMP%`)

rams_weeklypassing_12_14

# Statistical tests 
library("ggpubr")

#Full Team points 
Full_team_Points_Game_season$ttp <- Full_team_Points_Game_season$`Tot?Pts`
ARI_fullteam_points_game$ttp  <-ARI_fullteam_points_game$`Tot?Pts`
#Total points
Mu_ftp <- mean(Full_team_Points_Game_season$ttp)
sigma_ftp <- sd(Full_team_Points_Game_season$ttp)
TBA_ftp <- mean(ARI_fullteam_points_game$ttp)
SE_TBD_ftp <-sigma_ftp/sqrt(length(ARI_fullteam_points_game$ttp)) 
s_z1_ftp <- (TBA_ftp - Mu_ftp)/SE_TBD_ftp

s_z1_ftp

#point per game 
Mu_ftp_1 <- mean(Full_team_Points_Game_season$`Pts/G`)
sigma_ftp_1 <- sd(Full_team_Points_Game_season$`Pts/G`)
TBA_ftp_1 <- mean(ARI_fullteam_points_game$`Pts/G`)
SE_TBD_ftp_1 <- sigma_ftp_1/sqrt(length(ARI_fullteam_points_game$`Pts/G`)) 
s_z1_ftp_1 <- (TBA_ftp_1 - Mu_ftp_1)/SE_TBD_ftp_1
s_z1_ftp_1

#Rush yards
Mu_ftp_2 <- mean(Full_team_Points_Game_season$RushYds)
sigma_ftp_2 <- sd(Full_team_Points_Game_season$RushYds)
TBA_ftp_2 <- mean(ARI_fullteam_points_game$RushYds)
SE_TBD_ftp_2 <- sigma_ftp_2/sqrt(length(ARI_fullteam_points_game$RushYds)) 
s_z1_ftp_2 <- (TBA_ftp_2 - Mu_ftp_2)/SE_TBD_ftp_2
s_z1_ftp_2

#rush yards per game 
Mu_ftp_3 <- mean(Full_team_Points_Game_season$`RYds/G`)
sigma_ftp_3 <- sd(Full_team_Points_Game_season$`RYds/G`)
TBA_ftp_3 <- mean(ARI_fullteam_points_game$`RYds/G`)
SE_TBD_ftp_3<- sigma_ftp_3/sqrt(length(ARI_fullteam_points_game$`RYds/G`)) 
s_z1_ftp_3 <- (TBA_ftp_3 - Mu_ftp_3)/SE_TBD_ftp_3
s_z1_ftp_3

#passing yards
Mu_ftp_4 <- mean(Full_team_Points_Game_season$PassYds)
sigma_ftp_4 <- sd(Full_team_Points_Game_season$PassYds)
TBA_ftp_4 <- mean(ARI_fullteam_points_game$PassYds)
SE_TBD_ftp_4<- sigma_ftp_4/sqrt(length(ARI_fullteam_points_game$PassYds)) 
s_z1_ftp_4 <- (TBA_ftp_4 - Mu_ftp_4)/SE_TBD_ftp_4
s_z1_ftp_4



#passing yards per game 
Mu_ftp_5 <- mean(Full_team_Points_Game_season$`PYds/G`)
sigma_ftp_5 <-sd(Full_team_Points_Game_season$`PYds/G`)
TBA_ftp_5 <- mean(ARI_fullteam_points_game$`PYds/G`)
SE_TBD_ftp_5<- sigma_ftp_5/sqrt(length(ARI_fullteam_points_game$`PYds/G`)) 
s_z1_ftp_5<- (TBA_ftp_5 - Mu_ftp_5)/SE_TBD_ftp_5
s_z1_ftp_5

#total yards
Mu_ftp_6 <- mean(Full_team_Points_Game_season$TotYds)
sigma_ftp_6 <-sd(Full_team_Points_Game_season$TotYds)
TBA_ftp_6 <- mean(ARI_fullteam_points_game$TotYds)
SE_TBD_ftp_6<- sigma_ftp_6/sqrt(length(ARI_fullteam_points_game$TotYds)) 
s_z1_ftp_6<- (TBA_ftp_6 - Mu_ftp_6)/SE_TBD_ftp_6
s_z1_ftp_6


#total yards per game 
Mu_ftp_7 <- mean(Full_team_Points_Game_season$`Yds/G`)
sigma_ftp_7 <-sd(Full_team_Points_Game_season$`Yds/G`)
TBA_ftp_7 <- mean(ARI_fullteam_points_game$`Yds/G`)
SE_TBD_ftp_7<- sigma_ftp_7/sqrt(length(ARI_fullteam_points_game$`Yds/G`)) 
s_z1_ftp_7<- (TBA_ftp_7 - Mu_ftp_7)/SE_TBD_ftp_7
s_z1_ftp_7


#Next gen stats passing

#TT
Mu_ngp <- mean(NEXT_GEN_STATS_PASSING$TT)
sigma_ngp <-sd(NEXT_GEN_STATS_PASSING$TT)
TBA_ngp <- mean(ARI_nextgenstats_passing$TT)
SE_TBD_ngp<- sigma_ngp/sqrt(length(ARI_nextgenstats_passing$TT)) 
s_z1_ngp<- (TBA_ngp - Mu_ngp)/SE_TBD_ngp
s_z1_ngp


#Next gen stats passing
#CAY
Mu_ngp_1 <- mean(NEXT_GEN_STATS_PASSING$CAY)
sigma_ngp_1 <-sd(NEXT_GEN_STATS_PASSING$CAY)
TBA_ngp_1 <- mean(ARI_nextgenstats_passing$CAY)
SE_TBD_ngp_1<- sigma_ngp_1/sqrt(length(ARI_nextgenstats_passing$CAY)) 
s_z1_ngp_1<- (TBA_ngp_1 - Mu_ngp_1)/SE_TBD_ngp_1
s_z1_ngp_1

#Next gen stats passing
#total yards per game 
Mu_ngp_2 <- mean(NEXT_GEN_STATS_PASSING$IAY)
sigma_ngp_2 <-sd(NEXT_GEN_STATS_PASSING$IAY)
TBA_ngp_2 <- mean(ARI_nextgenstats_passing$IAY)
SE_TBD_ngp_2<- sigma_ngp_2/sqrt(length(ARI_nextgenstats_passing$IAY)) 
s_z1_ngp_2<- (TBA_ngp_2 - Mu_ngp_2)/SE_TBD_ngp_2
s_z1_ngp_2

#Next gen stats passing
#ayd
Mu_ngp_3 <- mean(NEXT_GEN_STATS_PASSING$AYD)
sigma_ngp_3 <-sd(NEXT_GEN_STATS_PASSING$AYD)
TBA_ngp_3<- mean(ARI_nextgenstats_passing$AYD)
SE_TBD_ngp_3<- sigma_ngp_3/sqrt(length(ARI_nextgenstats_passing$AYD)) 
s_z1_ngp_3<- (TBA_ngp_3 - Mu_ngp_3)/SE_TBD_ngp_3
s_z1_ngp_3


#agg
Mu_ngp_4 <- mean(NEXT_GEN_STATS_PASSING$`AGG%`)
sigma_ngp_4 <-sd(NEXT_GEN_STATS_PASSING$`AGG%`)
TBA_ngp_4<- mean(ARI_nextgenstats_passing$`AGG%`)
SE_TBD_ngp_4<- sigma_ngp_4/sqrt(length(ARI_nextgenstats_passing$`AGG%`)) 
s_z1_ngp_4<- (TBA_ngp_4 - Mu_ngp_4)/SE_TBD_ngp_4
s_z1_ngp_4

#LCAD
Mu_ngp_5 <- mean(NEXT_GEN_STATS_PASSING$LCAD)
sigma_ngp_5 <-sd(NEXT_GEN_STATS_PASSING$LCAD)
TBA_ngp_5<- mean(ARI_nextgenstats_passing$LCAD)
SE_TBD_ngp_5<- sigma_ngp_5/sqrt(length(ARI_nextgenstats_passing$LCAD)) 
s_z1_ngp_5<- (TBA_ngp_5 - Mu_ngp_5)/SE_TBD_ngp_5
s_z1_ngp_5

#AYTS
Mu_ngp_6 <- mean(NEXT_GEN_STATS_PASSING$AYTS)
sigma_ngp_6 <-sd(NEXT_GEN_STATS_PASSING$AYTS)
TBA_ngp_6<- mean(ARI_nextgenstats_passing$AYTS)
SE_TBD_ngp_6<- sigma_ngp_6/sqrt(length(ARI_nextgenstats_passing$AYTS)) 
s_z1_ngp_6<- (TBA_ngp_6 - Mu_ngp_6)/SE_TBD_ngp_6
s_z1_ngp_6

#ATT
Mu_ngp_7 <- mean(NEXT_GEN_STATS_PASSING$ATT)
sigma_ngp_7 <-sd(NEXT_GEN_STATS_PASSING$ATT)
TBA_ngp_7<- mean(ARI_nextgenstats_passing$ATT)
SE_TBD_ngp_7<- sigma_ngp_7/sqrt(length(ARI_nextgenstats_passing$ATT)) 
s_z1_ngp_7<- (TBA_ngp_7 - Mu_ngp_7)/SE_TBD_ngp_7
s_z1_ngp_7

#
Mu_ngp_8 <- mean(NEXT_GEN_STATS_PASSING$YDS)
sigma_ngp_8 <-sd(NEXT_GEN_STATS_PASSING$YDS)
TBA_ngp_8<- mean(ARI_nextgenstats_passing$YDS)
SE_TBD_ngp_8<- sigma_ngp_8/sqrt(length(ARI_nextgenstats_passing$YDS)) 
s_z1_ngp_8<- (TBA_ngp_8 - Mu_ngp_8)/SE_TBD_ngp_8
s_z1_ngp_8

z_score_function <- function(x,y){
  Mu_ngp_8 <- mean(x)
  sigma_ngp_8 <-sd(x)
  TBA_ngp_8<- mean(y)
  SE_TBD_ngp_8<- sigma_ngp_8/sqrt(length(y)) 
  s_z1_ngp_8<- (TBA_ngp_8 - Mu_ngp_8)/SE_TBD_ngp_8
  s_z1_ngp_8
  
}

#touchdowns
s_z1_ngp_9 <- z_score_function(NEXT_GEN_STATS_PASSING$TD,ARI_nextgenstats_passing$TD)

s_z1_ngp_9

#Int
s_z1_ngp_10 <- z_score_function(NEXT_GEN_STATS_PASSING$INT,ARI_nextgenstats_passing$INT)

s_z1_ngp_10

#rate
s_z1_ngp_11 <- z_score_function(NEXT_GEN_STATS_PASSING$RATE,ARI_nextgenstats_passing$RATE)

s_z1_ngp_11

#comp
s_z1_ngp_12 <- z_score_function(NEXT_GEN_STATS_PASSING$`COMP%`,ARI_nextgenstats_passing$`COMP%`)

s_z1_ngp_12

#comp exp
s_z1_ngp_13 <- z_score_function(NEXT_GEN_STATS_PASSING$`xCOMP%`,ARI_nextgenstats_passing$`xCOMP%`)

s_z1_ngp_13


#QB passing cont data set


#attempts per game
s_z1_ngp_14 <- z_score_function(QB_SEASON_PASSING$`Att/G`,ARI_qb_passing$`Att/G`)

s_z1_ngp_14

#1st
s_z1_ngp_15 <- z_score_function(QB_SEASON_PASSING$`1st`,ARI_qb_passing$`1st`)

s_z1_ngp_15

#1st percentage
s_z1_ngp_16 <- z_score_function(QB_SEASON_PASSING$`1st%`,ARI_qb_passing$`1st%`)

s_z1_ngp_16

#lng
s_z1_ngp_17 <- z_score_function(QB_SEASON_PASSING$Lng,ARI_qb_passing$Lng)

s_z1_ngp_17

#20+
s_z1_ngp_18 <- z_score_function(QB_SEASON_PASSING$`20+`,ARI_qb_passing$`20+`)

s_z1_ngp_18

#40+
s_z1_ngp_19 <- z_score_function(QB_SEASON_PASSING$`40+`,ARI_qb_passing$`40+`)

s_z1_ngp_19

#sack
s_z1_ngp_20 <- z_score_function(QB_SEASON_PASSING$Sck,ARI_qb_passing$Sck)

s_z1_ngp_20

#sack rate
s_z1_ngp_21 <- z_score_function(QB_SEASON_PASSING$Rate,ARI_qb_passing$Rate)

s_z1_ngp_21

#teams Downs season 

#first down rush
s_z1_teams_ds <- z_score_function(teams_downs_seasons$`First Downs Rush`,ARI_downs_season$`First Downs Rush`)

s_z1_teams_ds

#first down pass
s_z1_teams_ds_1 <- z_score_function(teams_downs_seasons$`First Downs Pass`,ARI_downs_season$`First Downs Pass`)

s_z1_teams_ds_1

#first down pen
s_z1_teams_ds_9 <- z_score_function(teams_downs_seasons$`First Downs Pen`,ARI_downs_season$`First Downs Pen`)

s_z1_teams_ds_9

#first down tot
s_z1_teams_ds_2 <- z_score_function(teams_downs_seasons$`First Downs Tot`,ARI_downs_season$`First Downs Tot`)

s_z1_teams_ds_2

#third down eff att
s_z1_teams_ds_3 <- z_score_function(teams_downs_seasons$`Third Down Efficiency Att`,ARI_downs_season$`Third Down Efficiency Att`)

s_z1_teams_ds_3

#third down eff made
s_z1_teams_ds_4 <- z_score_function(teams_downs_seasons$`Third Down Efficiency Made`,ARI_downs_season$`Third Down Efficiency Made`)

s_z1_teams_ds_4

#third down eff pct
s_z1_teams_ds_5 <- z_score_function(teams_downs_seasons$`Third Down Efficiency Pct`,ARI_downs_season$`Third Down Efficiency Pct`)

s_z1_teams_ds_5

#fourth down att
s_z1_teams_ds_6 <- z_score_function(teams_downs_seasons$`Fourth Down Efficiency Att`,ARI_downs_season$`Fourth Down Efficiency Att`)

s_z1_teams_ds_6

#fourth down made
s_z1_teams_ds_7 <- z_score_function(teams_downs_seasons$`Fourth Down Efficiency Made`,ARI_downs_season$`Fourth Down Efficiency Made`)

s_z1_teams_ds_7

#fourth down pct
s_z1_teams_ds_8 <- z_score_function(teams_downs_seasons$`Fourth Down Efficiency Pct`,ARI_downs_season$`Fourth Down Efficiency Pct`)

s_z1_teams_ds_8

#Teams passing season

#yards per attempt passing 
s_z1_teams_ps_1<- z_score_function(TEAMS_PASSING_SEASON$YPA,ARI_team_passingseason$YPA)

s_z1_teams_ps_1


#sack yards loss
s_z1_teams_ps_2<- z_score_function(TEAMS_PASSING_SEASON$Loss,ARI_team_passingseason$Loss)

s_z1_teams_ps_2

#net yards season 
s_z1_teams_ps_3<- z_score_function(TEAMS_PASSING_SEASON$NetYds,ARI_team_passingseason$NetYds)

s_z1_teams_ps_3

#passing yards/game
s_z1_teams_ps_4<- z_score_function(TEAMS_PASSING_SEASON$`Yds/G`,ARI_team_passingseason$`Yds/G`)

s_z1_teams_ps_4


# Percentage plays 

#plays done
s_z1_percentage_1<- z_score_function(teams_percentage_plays_season$Plays,ARI_team_percentageplays$Plays)

s_z1_percentage_1


#rush percentage
s_z1_percentage_2<- z_score_function(teams_percentage_plays_season$`Rush%`,ARI_team_percentageplays$`Rush%`)

s_z1_percentage_2

#rush plays
s_z1_percentage_3<- z_score_function(teams_percentage_plays_season$Rush,ARI_team_percentageplays$Rush)

s_z1_percentage_3

#pass plays
s_z1_percentage_4<- z_score_function(teams_percentage_plays_season$Pass,ARI_team_percentageplays$Pass)

s_z1_percentage_4

#pass percentage
s_z1_percentage_5<- z_score_function(teams_percentage_plays_season$`Pass%`,ARI_team_percentageplays$`Pass%`)

s_z1_percentage_5

#Teams rushing season 
#rushing attempts
s_z1_team_rushing_1<- z_score_function(teams_rushing_season$Att,ARI_team_rushing_season$Att)

s_z1_team_rushing_1

#rushing yards
s_z1_team_rushing_2<- z_score_function(teams_rushing_season$Yds,ARI_team_rushing_season$Yds)

s_z1_team_rushing_2

#rushing avg
s_z1_team_rushing_3<- z_score_function(teams_rushing_season$Avg,ARI_team_rushing_season$Avg)

s_z1_team_rushing_3

#rushing td
s_z1_team_rushing_4<- z_score_function(teams_rushing_season$TD,ARI_team_rushing_season$TD)

s_z1_team_rushing_4

#rushing FD
s_z1_team_rushing_5<- z_score_function(teams_rushing_season$FD,ARI_team_rushing_season$FD)

s_z1_team_rushing_5

#rushing 
s_z1_team_rushing_6<- z_score_function(teams_rushing_season$`Yds/G`,ARI_team_rushing_season$`Yds/G`)

s_z1_team_rushing_6

#Team Scoring season 

#scoring td total
s_z1_team_scoring_1<- z_score_function(teams_scoring_seasons$`Touchdowns Tot`,ARI_team_scoring_season$`Touchdowns Tot`)

s_z1_team_scoring_1

#scoring td r 
s_z1_team_scoring_2<- z_score_function(teams_scoring_seasons$`Touchdowns R`,ARI_team_scoring_season$`Touchdowns R`)

s_z1_team_scoring_2

#scoring td p 
s_z1_team_scoring_3 <- z_score_function(teams_scoring_seasons$`Touchdowns P`,ARI_team_scoring_season$`Touchdowns P`)

s_z1_team_scoring_3

#scoring td kr
s_z1_team_scoring_4<- z_score_function(teams_scoring_seasons$`Touchdowns KR`,ARI_team_scoring_season$`Touchdowns KR`)

s_z1_team_scoring_4

#scoring td  pr
s_z1_team_scoring_5<- z_score_function(teams_scoring_seasons$`Touchdowns PR`,ARI_team_scoring_season$`Touchdowns PR`)

s_z1_team_scoring_5

#scoring td ir 
s_z1_team_scoring_6<- z_score_function(teams_scoring_seasons$`Touchdowns IR`,ARI_team_scoring_season$`Touchdowns IR`)

s_z1_team_scoring_6

#scoring td fr
s_z1_team_scoring_7<- z_score_function(teams_scoring_seasons$`Touchdowns FR`,ARI_team_scoring_season$`Touchdowns FR`)

s_z1_team_scoring_7

#scoring td bk
s_z1_team_scoring_8<- z_score_function(teams_scoring_seasons$`Touchdowns BK`,ARI_team_scoring_season$`Touchdowns BK`)

s_z1_team_scoring_8

#scoring td bp
s_z1_team_scoring_9<- z_score_function(teams_scoring_seasons$`Touchdowns BP`,ARI_team_scoring_season$`Touchdowns BP`)

s_z1_team_scoring_9


#scoring misc conv
s_z1_team_scoring_13<- z_score_function(teams_scoring_seasons$`Misc Conv`,ARI_team_scoring_season$`Misc Conv`)

s_z1_team_scoring_13

#scoring misc saf
s_z1_team_scoring_14<- z_score_function(teams_scoring_seasons$`Misc Saf`,ARI_team_scoring_season$`Misc Saf`)

s_z1_team_scoring_14

#scoring misc pts
s_z1_team_scoring_15<- z_score_function(teams_scoring_seasons$`Misc Pts`,ARI_team_scoring_season$`Misc Pts`)

s_z1_team_scoring_15


#t tests for several points 

t_function_test <- function(x,y){
  z <-mean(y)
  t.test(x,mean = z)
}

# interceptions 
ARI_def_season_result_1<- t_function_test(ARI_Defense_season$`Interceptions Int`,Defense_Season$`Interceptions Int`)

ARI_def_season_result_1

# interception yards
ARI_def_season_result_2<- t_function_test(ARI_Defense_season$`Interceptions Yds`,Defense_Season$`Interceptions Yds`)

ARI_def_season_result_2


# interception avg
ARI_def_season_result_3<- t_function_test(ARI_Defense_season$`Interceptions Avg`,Defense_Season$`Interceptions Avg`)

ARI_def_season_result_3

# interception long
ARI_def_season_result_4<- t_function_test(ARI_Defense_season$`Interceptions Lg`,Defense_Season$`Interceptions Lg`)

ARI_def_season_result_4

# interception TD
ARI_def_season_result_5<- t_function_test(ARI_Defense_season$`Interceptions TD`,Defense_Season$`Interceptions TD`)

ARI_def_season_result_5

# solo tackles
ARI_def_season_result_6<- t_function_test(ARI_Defense_season$`Tackles Solo`,Defense_Season$`Tackles Solo`)

ARI_def_season_result_6

# ast tackles
ARI_def_season_result_7<- t_function_test(ARI_Defense_season$`Tackles Ast`,Defense_Season$`Tackles Ast`)

ARI_def_season_result_7

# tot tackles
ARI_def_season_result_8<- t_function_test(ARI_Defense_season$`Tackles Tot`,Defense_Season$`Tackles Tot`)

ARI_def_season_result_8

# sacks
ARI_def_season_result_9<- t_function_test(ARI_Defense_season$`Sacks Sack`,Defense_Season$`Sacks Sack`)

ARI_def_season_result_9

# sack yards lost
ARI_def_season_result_10<- t_function_test(ARI_Defense_season$`Sacks YdsL`,Defense_Season$`Sacks YdsL`)

ARI_def_season_result_10


#

ARI_def_season_result_10<-  pnorm(ARI_Defense_season$`Sacks YdsL`,Defense_Season$`Sacks YdsL`)

ARI_def_season_result_10
#Defense Weekly 

# sacks
ARI_def_weekly_result_1<- t_function_test(ARI_Defense_weekly$Sacks,Defense_Weekly$Sacks)

ARI_def_weekly_result_1


# sacks yards 
ARI_def_weekly_result_2<- t_function_test(ARI_Defense_weekly$`Sack Yds`,Defense_Weekly$`Sack Yds`)

ARI_def_weekly_result_2

# qb hits
ARI_def_weekly_result_3<- t_function_test(ARI_Defense_weekly$`QB Hits`,Defense_Weekly$`QB Hits`)

ARI_def_weekly_result_3

# tackles
ARI_def_weekly_result_4<- t_function_test(ARI_Defense_weekly$Tackles,Defense_Weekly$Tackles)

ARI_def_weekly_result_4

# assists 
ARI_def_weekly_result_5<- t_function_test(ARI_Defense_weekly$Assists,Defense_Weekly$Assists)

ARI_def_weekly_result_5

# fumbles forced
ARI_def_weekly_result_6<- t_function_test(ARI_Defense_weekly$`Fumbles Forced`,Defense_Weekly$`Fumbles Forced`)

ARI_def_weekly_result_6

# fumbleds recovered 
ARI_def_weekly_result_7<- t_function_test(ARI_Defense_weekly$`Fumbles Recovered`,Defense_Weekly$`Fumbles Recovered`)

ARI_def_weekly_result_7

#ESPN passing 

# comp
ARI_ESPN_Passing_weekly_result_1<- t_function_test(ARI_espn_weekly_passing$COMP,ESPN_PASSING_WEEKLY$COMP)

ARI_ESPN_Passing_weekly_result_1

# attempts
ARI_ESPN_Passing_weekly_result_2<- t_function_test(ARI_espn_weekly_passing$ATT,ESPN_PASSING_WEEKLY$ATT)

ARI_ESPN_Passing_weekly_result_2

# yards
ARI_ESPN_Passing_weekly_result_3<- t_function_test(ARI_espn_weekly_passing$YDS,ESPN_PASSING_WEEKLY$YDS)

ARI_ESPN_Passing_weekly_result_3

# td
ARI_ESPN_Passing_weekly_result_4<- t_function_test(ARI_espn_weekly_passing$TD,ESPN_PASSING_WEEKLY$TD)

ARI_ESPN_Passing_weekly_result_4

# interception
ARI_ESPN_Passing_weekly_result_5<- t_function_test(ARI_espn_weekly_passing$INT,ESPN_PASSING_WEEKLY$INT)

ARI_ESPN_Passing_weekly_result_5

# sack
ARI_ESPN_Passing_weekly_result_6<- t_function_test(ARI_espn_weekly_passing$SACK,ESPN_PASSING_WEEKLY$SACK)

ARI_ESPN_Passing_weekly_result_6

# fumbles
ARI_ESPN_Passing_weekly_result_7<- t_function_test(ARI_espn_weekly_passing$FUM,ESPN_PASSING_WEEKLY$FUM)

ARI_ESPN_Passing_weekly_result_7

# qb rating 
ARI_ESPN_Passing_weekly_result_8<- t_function_test(ARI_espn_weekly_passing$RAT,ESPN_PASSING_WEEKLY$RAT)

ARI_ESPN_Passing_weekly_result_8

#Kick Return seasom

# yards

s_z1_kick_return_1<-z_score_function(Kick_Return_Season$Yds,ARI_kickreturn_szn$Yds)

s_z1_kick_return_1

#Kick Return seasom

# avg
s_z1_kick_return_2<-z_score_function(Kick_Return_Season$Avg,ARI_kickreturn_szn$Avg)

s_z1_kick_return_2

# FC
s_z1_kick_return_3<-z_score_function(Kick_Return_Season$FC,ARI_kickreturn_szn$FC)

s_z1_kick_return_3

#Kick Return season

# lg
s_z1_kick_return_4<-z_score_function(Kick_Return_Season$Lg,ARI_kickreturn_szn$Lg)

s_z1_kick_return_4

#TD

s_z1_kick_return_5<-z_score_function(Kick_Return_Season$TD,ARI_kickreturn_szn$TD)

s_z1_kick_return_5

#Next gen stats receving:

#Kick Return seasom

# cushion
ARI_nextgenstats_rec_1<- t_function_test(ARI_nextgenstats_receving$CUSH,Next_gen_stats_receving$CUSH)

ARI_nextgenstats_rec_1

# Sep
ARI_nextgenstats_rec_2<- t_function_test(ARI_nextgenstats_receving$SEP,Next_gen_stats_receving$SEP)

ARI_nextgenstats_rec_2

# tay
ARI_nextgenstats_rec_3<- t_function_test(ARI_nextgenstats_receving$TAY,Next_gen_stats_receving$TAY)

ARI_nextgenstats_rec_3

# Tay percen
ARI_nextgenstats_rec_4<- t_function_test(ARI_nextgenstats_receving$`TAY%`,Next_gen_stats_receving$`TAY%`)

ARI_nextgenstats_rec_4

# Rec
ARI_nextgenstats_rec_5<- t_function_test(ARI_nextgenstats_receving$REC,Next_gen_stats_receving$REC)

ARI_nextgenstats_rec_5

# Tar
ARI_nextgenstats_rec_6<- t_function_test(ARI_nextgenstats_receving$TAR,Next_gen_stats_receving$TAR)

ARI_nextgenstats_rec_6


# catch percentage
ARI_nextgenstats_rec_7<- t_function_test(ARI_nextgenstats_receving$`CTCH%`,Next_gen_stats_receving$`CTCH%`)

ARI_nextgenstats_rec_7


# yards
ARI_nextgenstats_rec_8<- t_function_test(ARI_nextgenstats_receving$YDS,Next_gen_stats_receving$YDS)

ARI_nextgenstats_rec_8

# td
ARI_nextgenstats_rec_9<- t_function_test(ARI_nextgenstats_receving$TD,Next_gen_stats_receving$TD)

ARI_nextgenstats_rec_9


# yards after catch per recpetion
ARI_nextgenstats_rec_10<- t_function_test(ARI_nextgenstats_receving$`YAC/R`,Next_gen_stats_receving$`YAC/R`)

ARI_nextgenstats_rec_10


# expected yac/r
ARI_nextgenstats_rec_11<- t_function_test(ARI_nextgenstats_receving$`xYAC/R`,Next_gen_stats_receving$`xYAC/R`)

ARI_nextgenstats_rec_11

# differential of yards after catch per reception 
ARI_nextgenstats_rec_12<- t_function_test(ARI_nextgenstats_receving$`+/-`,Next_gen_stats_receving$`+/-`)

ARI_nextgenstats_rec_12


#Passing Weekly 

#Comp
ARI_passing_weekly_results_1<- t_function_test(ARI_passing_weekkly$Comp,Passing_Weekly$Comp)

ARI_passing_weekly_results_1

#att
ARI_passing_weekly_results_2<- t_function_test(ARI_passing_weekkly$Att,Passing_Weekly$Att)

ARI_passing_weekly_results_2

#yards
ARI_passing_weekly_results_3<- t_function_test(ARI_passing_weekkly$Yds,Passing_Weekly$Yds)

ARI_passing_weekly_results_3

#td
ARI_passing_weekly_results_4<- t_function_test(ARI_passing_weekkly$TD,Passing_Weekly$TD)

ARI_passing_weekly_results_4

#int
ARI_passing_weekly_results_5<- t_function_test(ARI_passing_weekkly$Int,Passing_Weekly$Int)

ARI_passing_weekly_results_5

#sack
ARI_passing_weekly_results_6<- t_function_test(ARI_passing_weekkly$Sck,Passing_Weekly$Sck)

ARI_passing_weekly_results_6

#fumbles
ARI_passing_weekly_results_7<- t_function_test(ARI_passing_weekkly$FUM,Passing_Weekly$FUM)

ARI_passing_weekly_results_7

#rate
ARI_passing_weekly_results_8<- t_function_test(ARI_passing_weekkly$Rate,Passing_Weekly$Rate)

ARI_passing_weekly_results_8


#Punt Return 

#yards

s_z1_punt_return_1<-z_score_function(Punt_Return_season$Yds,ARI_punt_return$Yds)

s_z1_punt_return_1

#avg
s_z1_punt_return_2<-z_score_function(Punt_Return_season$Avg,ARI_punt_return$Avg)

s_z1_punt_return_2
#FC
s_z1_punt_return_3<-z_score_function(Punt_Return_season$FC,ARI_punt_return$FC)

s_z1_punt_return_3

#lg
s_z1_punt_return_4<-z_score_function(Punt_Return_season$Lg,ARI_punt_return$Lg)

s_z1_punt_return_4

#td
s_z1_punt_return_5<-z_score_function(Punt_Return_season$TD,ARI_punt_return$TD)

s_z1_punt_return_5

#Receving Weekly 

#rec
ARI_recweekly_1<- t_function_test(ARI_rec_weekly$Rec,REC_WEEKLY$Rec)

ARI_recweekly_1

#yards
ARI_recweekly_2<- t_function_test(ARI_rec_weekly$Yds,REC_WEEKLY$Yds)

ARI_recweekly_2

#avg
ARI_recweekly_3<- t_function_test(ARI_rec_weekly$Avg,REC_WEEKLY$Avg)

ARI_recweekly_3

#td
ARI_recweekly_4<- t_function_test(ARI_rec_weekly$TD,REC_WEEKLY$TD)

ARI_recweekly_4

#fumbles
ARI_recweekly_5<- t_function_test(ARI_rec_weekly$FUM,REC_WEEKLY$FUM)

ARI_recweekly_5

#Rushing Season 

#rushing td
ARI_rushingseason_1<- t_function_test(ARI_rushing_season$TD,Rushing_Season$TD)

ARI_rushingseason_1


#rushing att
ARI_rushingseason_2<- t_function_test(ARI_rushing_season$Att,Rushing_Season$Att)

ARI_rushingseason_2

#rushing yards
ARI_rushingseason_3<- t_function_test(ARI_rushing_season$Yds,Rushing_Season$Yds)

ARI_rushingseason_3

#rushing avg
ARI_rushingseason_4<- t_function_test(ARI_rushing_season$Avg,Rushing_Season$Avg)

ARI_rushingseason_4

#rushing ypg
ARI_rushingseason_5<- t_function_test(ARI_rushing_season$YPG,Rushing_Season$YPG)

ARI_rushingseason_5

#rushing lg
ARI_rushingseason_6<- t_function_test(ARI_rushing_season$Lg,Rushing_Season$Lg)

ARI_rushingseason_6

#rushing fd
ARI_rushingseason_7<- t_function_test(ARI_rushing_season$FD,Rushing_Season$FD)

ARI_rushingseason_7

#Scoring season stats

#scoring points
ARI_Scoring_scoring_1<- t_function_test(ARI_scoring_season$Pts,Scoring_Season$Pts)

ARI_Scoring_scoring_1

#stouchdown total
ARI_Scoring_scoring_2<- t_function_test(ARI_scoring_season$`Touchdowns Tot`,Scoring_Season$`Touchdowns Tot`)

ARI_Scoring_scoring_2

#touchdown r
ARI_Scoring_scoring_3<- t_function_test(ARI_scoring_season$`Touchdowns R`,Scoring_Season$`Touchdowns R`)

ARI_Scoring_scoring_3

#touchdown p
ARI_Scoring_scoring_4<- t_function_test(ARI_scoring_season$`Touchdowns P`,Scoring_Season$`Touchdowns P`)

ARI_Scoring_scoring_4

#touchdown kr
ARI_Scoring_scoring_5<- t_function_test(ARI_scoring_season$`Touchdowns KR`, Scoring_Season$`Touchdowns KR`)

ARI_Scoring_scoring_5

#touchdown pr
ARI_Scoring_scoring_6<- t_function_test(ARI_scoring_season$`Touchdowns PR`,Scoring_Season$`Touchdowns PR`)

ARI_Scoring_scoring_6

#touchdown IR
ARI_Scoring_scoring_7<- t_function_test(ARI_scoring_season$`Touchdowns IR`,Scoring_Season$`Touchdowns IR`)
ARI_Scoring_scoring_7

#touchdown fr
ARI_Scoring_scoring_8<- t_function_test(ARI_scoring_season$`Touchdowns FR`,Scoring_Season$`Touchdowns FR`)

ARI_Scoring_scoring_8

#touchdown bk
ARI_Scoring_scoring_9<- t_function_test(ARI_scoring_season$`Touchdowns BK`,Scoring_Season$`Touchdowns BK`)

ARI_Scoring_scoring_9

#touchdown bp
ARI_Scoring_scoring_10<- t_function_test(ARI_scoring_season$`Touchdowns BP`,Scoring_Season$`Touchdowns BP`)

ARI_Scoring_scoring_10

#touchdown fgr
ARI_Scoring_scoring_11<- t_function_test(ARI_scoring_season$`Touchdowns FGR`,Scoring_Season$`Touchdowns FGR`)

ARI_Scoring_scoring_11


#misc conv
ARI_Scoring_scoring_14<- t_function_test(ARI_scoring_season$`Misc Conv`,Scoring_Season$`Misc Conv`)

ARI_Scoring_scoring_14

#misc saf
ARI_Scoring_scoring_15<- t_function_test(ARI_scoring_season$`Misc Saf`,Scoring_Season$`Misc Saf`)

ARI_Scoring_scoring_15

#Weekly Rushing stats 

#attempts
ARI_weekly_rushing_stats_1<- t_function_test(ARI_weekly_rushing_stats$Att,Weekly_Rushing_Stats$Att)

ARI_weekly_rushing_stats_1

#yards
ARI_weekly_rushing_stats_2<- t_function_test(ARI_weekly_rushing_stats$Yds,Weekly_Rushing_Stats$Yds)

ARI_weekly_rushing_stats_2

#avg
ARI_weekly_rushing_stats_3<- t_function_test(ARI_weekly_rushing_stats$Avg,Weekly_Rushing_Stats$Avg)

ARI_weekly_rushing_stats_3

#td
ARI_weekly_rushing_stats_4<- t_function_test(ARI_weekly_rushing_stats$TD,Weekly_Rushing_Stats$TD)

ARI_weekly_rushing_stats_4

#fum
ARI_weekly_rushing_stats_5<- t_function_test(ARI_weekly_rushing_stats$FUM,Weekly_Rushing_Stats$FUM)

ARI_weekly_rushing_stats_5


#Weekly Passing 

#TT
ARI_weeklypassing_12_1<- t_function_test(ARI_weekly_passing_12_stats$TT,Weekly_Passing$TT)

ARI_weeklypassing_12_1

#CAY
ARI_weeklypassing_12_2<- t_function_test(ARI_weekly_passing_12_stats$CAY,Weekly_Passing$CAY)

ARI_weeklypassing_12_2

#IAY
ARI_weeklypassing_12_3<- t_function_test(ARI_weekly_passing_12_stats$IAY,Weekly_Passing$IAY)

ARI_weeklypassing_12_3

#ayd
ARI_weeklypassing_12_4<- t_function_test(ARI_weekly_passing_12_stats$AYD,Weekly_Passing$AYD)

ARI_weeklypassing_12_4

#agg
ARI_weeklypassing_12_5<- t_function_test(ARI_weekly_passing_12_stats$`AGG%`,Weekly_Passing$`AGG%`)

ARI_weeklypassing_12_5

#lcad
ARI_weeklypassing_12_6<- t_function_test(ARI_weekly_passing_12_stats$LCAD,Weekly_Passing$LCAD)

ARI_weeklypassing_12_6

#ayts
ARI_weeklypassing_12_7<- t_function_test(ARI_weekly_passing_12_stats$AYTS,Weekly_Passing$AYTS)

ARI_weeklypassing_12_7

#att
ARI_weeklypassing_12_8<- t_function_test(ARI_weekly_passing_12_stats$ATT,Weekly_Passing$ATT)

ARI_weeklypassing_12_8

#yds
ARI_weeklypassing_12_9<- t_function_test(ARI_weekly_passing_12_stats$YDS,Weekly_Passing$YDS)

ARI_weeklypassing_12_9

#TD
ARI_weeklypassing_12_10<- t_function_test(ARI_weekly_passing_12_stats$TD,Weekly_Passing$TD)

ARI_weeklypassing_12_10

#int
ARI_weeklypassing_12_11<- t_function_test(ARI_weekly_passing_12_stats$INT,Weekly_Passing$INT)

ARI_weeklypassing_12_11

#comp
ARI_weeklypassing_12_13<- t_function_test(ARI_weekly_passing_12_stats$`COMP%`,Weekly_Passing$`COMP%`)

ARI_weeklypassing_12_13


#expected comp
ARI_weeklypassing_12_14<- t_function_test(ARI_weekly_passing_12_stats$`xCOMP%`,Weekly_Passing$`xCOMP%`)

ARI_weeklypassing_12_14


# new section for t test function 


#Rams

rams_weekly_adv_rec_1 <- t_function_test(   rams_weekly_adv_rec$CUSH,WEEKLY_REC_WEEK$CUSH)

rams_weekly_adv_rec_1



rams_weekly_adv_rec_2 <- t_function_test(   rams_weekly_adv_rec$SEP,WEEKLY_REC_WEEK$SEP)

rams_weekly_adv_rec_2



rams_weekly_adv_rec_3 <- t_function_test(   rams_weekly_adv_rec$TAY,WEEKLY_REC_WEEK$TAY)

rams_weekly_adv_rec_3



rams_weekly_adv_rec_4 <- t_function_test(   rams_weekly_adv_rec$`TAY%`,WEEKLY_REC_WEEK$`TAY%`)

rams_weekly_adv_rec_4




rams_weekly_adv_rec_5<- t_function_test(   rams_weekly_adv_rec$REC,WEEKLY_REC_WEEK$REC)

rams_weekly_adv_rec_5




rams_weekly_adv_rec_6 <- t_function_test(   rams_weekly_adv_rec$TAR,WEEKLY_REC_WEEK$TAR)

rams_weekly_adv_rec_6




rams_weekly_adv_rec_7 <- t_function_test(   rams_weekly_adv_rec$`CTCH%`,WEEKLY_REC_WEEK$`CTCH%`)

rams_weekly_adv_rec_7




rams_weekly_adv_rec_8 <- t_function_test(   rams_weekly_adv_rec$YDS,WEEKLY_REC_WEEK$YDS)

rams_weekly_adv_rec_8



rams_weekly_adv_rec_9 <- t_function_test(   rams_weekly_adv_rec$TD,WEEKLY_REC_WEEK$TD)

rams_weekly_adv_rec_9






rams_weekly_adv_rec_10 <- t_function_test(   rams_weekly_adv_rec$`YAC/R`,WEEKLY_REC_WEEK$`YAC/R`)

rams_weekly_adv_rec_10


# rush

rams_weekly_adv_rush_1 <- t_function_test(  rams_adv_weekly_rushing_stats$EFF ,WEEKLY_ADV_RUSH_STATS$EFF)

rams_weekly_adv_rush_1




rams_weekly_adv_rush_2 <- t_function_test(  rams_adv_weekly_rushing_stats$`8+D%` ,WEEKLY_ADV_RUSH_STATS$`8+D%`)

rams_weekly_adv_rush_2





rams_weekly_adv_rush_3 <- t_function_test(  rams_adv_weekly_rushing_stats$EFF ,WEEKLY_ADV_RUSH_STATS$EFF)

rams_weekly_adv_rush_3





rams_weekly_adv_rush_4 <- t_function_test(  rams_adv_weekly_rushing_stats$TLOS ,WEEKLY_ADV_RUSH_STATS$TLOS)

rams_weekly_adv_rush_4





rams_weekly_adv_rush_5<- t_function_test(  rams_adv_weekly_rushing_stats$ATT ,WEEKLY_ADV_RUSH_STATS$ATT)

rams_weekly_adv_rush_5




rams_weekly_adv_rush_6 <- t_function_test(  rams_adv_weekly_rushing_stats$YDS ,WEEKLY_ADV_RUSH_STATS$YDS)

rams_weekly_adv_rush_6




rams_weekly_adv_rush_7 <- t_function_test(  rams_adv_weekly_rushing_stats$AVG ,WEEKLY_ADV_RUSH_STATS$AVG)

rams_weekly_adv_rush_7




rams_weekly_adv_rush_8 <- t_function_test(  rams_adv_weekly_rushing_stats$TD ,WEEKLY_ADV_RUSH_STATS$TD)

rams_weekly_adv_rush_8

# arizona section 

ARI_weekly_adv_rec_1 <- t_function_test(   ARI_weekly_adv_rec$CUSH,WEEKLY_REC_WEEK$CUSH)

ARI_weekly_adv_rec_1



ARI_weekly_adv_rec_2 <- t_function_test(   ARI_weekly_adv_rec$SEP,WEEKLY_REC_WEEK$SEP)

ARI_weekly_adv_rec_2



ARI_weekly_adv_rec_3 <- t_function_test(   ARI_weekly_adv_rec$TAY,WEEKLY_REC_WEEK$TAY)

ARI_weekly_adv_rec_3



ARI_weekly_adv_rec_4 <- t_function_test(   ARI_weekly_adv_rec$`TAY%`,WEEKLY_REC_WEEK$`TAY%`)

ARI_weekly_adv_rec_4




ARI_weekly_adv_rec_5<- t_function_test(   ARI_weekly_adv_rec$REC,WEEKLY_REC_WEEK$REC)

ARI_weekly_adv_rec_5




ARI_weekly_adv_rec_6 <- t_function_test(   ARI_weekly_adv_rec$TAR,WEEKLY_REC_WEEK$TAR)

ARI_weekly_adv_rec_6




ARI_weekly_adv_rec_7 <- t_function_test(   ARI_weekly_adv_rec$`CTCH%`,WEEKLY_REC_WEEK$`CTCH%`)

ARI_weekly_adv_rec_7




ARI_weekly_adv_rec_8 <- t_function_test(   ARI_weekly_adv_rec$YDS,WEEKLY_REC_WEEK$YDS)

ARI_weekly_adv_rec_8



ARI_weekly_adv_rec_9 <- t_function_test(   ARI_weekly_adv_rec$TD,WEEKLY_REC_WEEK$TD)

ARI_weekly_adv_rec_9






ARI_weekly_adv_rec_10 <- t_function_test(   ARI_weekly_adv_rec$`YAC/R`,WEEKLY_REC_WEEK$`YAC/R`)

ARI_weekly_adv_rec_10


# rush

ARI_weekly_adv_rush_1 <- t_function_test(  ARI_adv_weekly_rushing_stats$EFF ,WEEKLY_ADV_RUSH_STATS$EFF)

ARI_weekly_adv_rush_1




ARI_weekly_adv_rush_2 <- t_function_test(  ARI_adv_weekly_rushing_stats$`8+D%` ,WEEKLY_ADV_RUSH_STATS$`8+D%`)

ARI_weekly_adv_rush_2





ARI_weekly_adv_rush_3 <- t_function_test(  ARI_adv_weekly_rushing_stats$EFF ,WEEKLY_ADV_RUSH_STATS$EFF)

ARI_weekly_adv_rush_3





ARI_weekly_adv_rush_4 <- t_function_test(  ARI_adv_weekly_rushing_stats$TLOS ,WEEKLY_ADV_RUSH_STATS$TLOS)

ARI_weekly_adv_rush_4





ARI_weekly_adv_rush_5<- t_function_test(  ARI_adv_weekly_rushing_stats$ATT ,WEEKLY_ADV_RUSH_STATS$ATT)

ARI_weekly_adv_rush_5




ARI_weekly_adv_rush_6 <- t_function_test(  ARI_adv_weekly_rushing_stats$YDS ,WEEKLY_ADV_RUSH_STATS$YDS)

ARI_weekly_adv_rush_6




ARI_weekly_adv_rush_7 <- t_function_test(  ARI_adv_weekly_rushing_stats$AVG ,WEEKLY_ADV_RUSH_STATS$AVG)

ARI_weekly_adv_rush_7




ARI_weekly_adv_rush_8 <- t_function_test(  ARI_adv_weekly_rushing_stats$TD ,WEEKLY_ADV_RUSH_STATS$TD)

ARI_weekly_adv_rush_8


#Chi Squared

#Import Dataset

library(readxl)
ARI_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/ARI_ATT.xlsx")

Ari_comp <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Ari_comp.xlsx")

ARI_Comp_Perc <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/ARI_Comp_Perc.xlsx")


ARI_INT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/ARI_INT.xlsx")


ARI_INT_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/ARI_INT_RATIO.xlsx")

ARI_TD_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/ARI_TD_Ratio.xlsx")

ARI_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/ARI_TD.xlsx")

RAMS_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RAMS_ATT.xlsx")

RAMS_COMP<- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RAMS_COMP.xlsx")

RAMS_COMP_PERC<- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RAMS_COMP_PERC.xlsx")

RAMS_INT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RAMS_INT.xlsx")

RAMS_INT_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RAMS_INT_RATIO.xlsx")

RAMS_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RAMS_TD.xlsx")

RAMS_TD_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RAMS_TD_RATIO.xlsx")

Goff_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Goff_ATT.xlsx")

Goff_comp <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Goff_comp.xlsx")

Goff_comp_perc <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Goff_comp_perc.xlsx")

Goff_Int <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Goff_Int.xlsx")

Goff_INT_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Goff_INT_RATIO.xlsx")

Goff_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Goff_TD.xlsx")

Goff_TD_Ratio <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Goff_TD.xlsx")

Kyler_Att <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Kyler_Att.xlsx")

Kyler_Completions <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Kyler_Completions.xlsx")

Kyler_Comp_perc <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Kyler_Comp_perc.xlsx")

Kyler_INT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Kyler_INT.xlsx")

Kyler_INT_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Kyler_Int_incomp_ratio.xlsx")

Kyler_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Kyler_TD.xlsx")

Kyler_TD_comp_ratio <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Kyler_Att.xlsx")


#Chi Squared Tests

#Chi Squared test:

#defensive rate
ARI_def_rate <- chisq.test(ARI_Comp_Perc)

ARI_def_rate


#defensive completion
ARI_def_completion <- chisq.test(Ari_comp)

ARI_def_completion

#defensive attempt
ARI_def_attempt <- chisq.test(ARI_ATT)

ARI_def_attempt


#defensive int
ARI_def_int <- chisq.test(ARI_INT)

ARI_def_int

#defensive td
ARI_def_td <- chisq.test(ARI_TD)

ARI_def_td

#goff attempt
goff_att <- chisq.test(Goff_ATT)

goff_att

#goff completion
goff_comp <- chisq.test(Goff_comp)

goff_comp

#goff td
goff_td <- chisq.test(Goff_TD)

goff_td

#goff int
goff_int <- chisq.test(Goff_Int)

goff_int


#goff comp per
goff_per<- chisq.test(Goff_comp_perc)

goff_per

#Kyler attempt
Kyler_att<- chisq.test(Kyler_Att)

Kyler_att

#Kyler completions
Kyler_comp<- chisq.test(Kyler_Completions)

Kyler_comp

#Kyler td
Kyler_td<- chisq.test(Kyler_TD)

Kyler_td

#Kyler int
Kyler_int<- chisq.test(Kyler_INT)

Kyler_int


#Kyler perc
Kyler_perc<- chisq.test(Kyler_Comp_perc)

Kyler_perc


#rams defense attempt

rams_def_att<- chisq.test(RAMS_ATT)

rams_def_att

#rams defense comp

rams_def_comp<- chisq.test(RAMS_COMP)

rams_def_comp


#rams defense td

rams_def_td<- chisq.test(RAMS_TD)

rams_def_td

#

#rams defense int

rams_def_int<- chisq.test(RAMS_INT)
rams_def_int


#rams defense percentage

rams_def_perc<- chisq.test(RAMS_COMP_PERC)

rams_def_perc

Rams_ATT_model <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Rams_ATT_model.xlsx")


#Load in full Rams dataframe 

library(readxl)
rams_weekly_output <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/rams weekly output.xlsx", 
                                 col_types = c("text", "numeric", "numeric", 
                                               "numeric", "numeric", "numeric", 
                                               "numeric", "numeric", "numeric", 
                                               "numeric", "numeric", "numeric", 
                                               "numeric", "numeric", "numeric", 
                                               "numeric", "numeric", "numeric", 
                                               "numeric", "numeric", "numeric", 
                                               "numeric", "numeric", "numeric", 
                                               "numeric", "numeric", "numeric", 
                                               "numeric", "numeric", "numeric", 
                                               "numeric", "numeric"))


library(readxl)

Defense_Air_Comp <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Defense_Air_Comp.xlsx")


advanced_def_rush <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/advanced_def_rush.xlsx")

Advanced_Rec_stats <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Advanced_Rec_stats.xlsx")

Advanced_Rushing_data <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/T test data/Advanced_Rushing_data.xlsx")



#Changing NAs to 0s

Defense_Air_Comp$`Pass Coverage Cmp%`[is.na(Defense_Air_Comp$`Pass Coverage Cmp%`)] <- 0

Defense_Air_Comp$`Pass Coverage Yds/Cmp`[is.na(Defense_Air_Comp$`Pass Coverage Yds/Cmp`)] <- 0

Defense_Air_Comp$`Pass Coverage Yds/Tgt`[is.na(Defense_Air_Comp$`Pass Coverage Yds/Tgt`)] <- 0

Defense_Air_Comp$`Pass Coverage DADOT`[is.na(Defense_Air_Comp$`Pass Coverage DADOT`)] <- 0

Advanced_Rushing_data$`Rushing 1D`[is.na(Advanced_Rushing_data$`Rushing 1D`)] <- 0

advanced_def_rush$`Tackles MTkl%`[is.na(advanced_def_rush$`Tackles MTkl%`)] <- 0
#Rams subset of two datasets

rams_def_air_comp <- subset(Defense_Air_Comp, Defense_Air_Comp$Tm == "LAR")

rams_adv_def_rush <- subset(advanced_def_rush, advanced_def_rush$Tm == "LAR")

rams_adv_rush <- subset(Advanced_Rushing_data, Advanced_Rushing_data$Tm == "LAR")

rams_adv_rec <- subset(Advanced_Rec_stats, Advanced_Rec_stats$Tm == "LAR")

#Arizona subset 
Ari_def_air_comp <- subset(Defense_Air_Comp, Defense_Air_Comp$Tm == "ARI")

Ari_adv_def_rush <- subset(advanced_def_rush, advanced_def_rush$Tm == "ARI")

ARI_adv_rush <- subset(Advanced_Rushing_data, Advanced_Rushing_data$Tm == "ARI")

ARI_adv_rec <- subset(Advanced_Rec_stats, Advanced_Rec_stats$Tm == "ARI")


# rams t tests:

#pass coverage int
Rams_def_pass_1<- t_function_test(rams_def_air_comp$`Pass Coverage Int` ,Defense_Air_Comp$`Pass Coverage Int`)

Rams_def_pass_1

# pass coverage target
Rams_def_pass_2<- t_function_test(rams_def_air_comp$`Pass Coverage Tgt` ,Defense_Air_Comp$`Pass Coverage Tgt`)

Rams_def_pass_2

# pass coverage completion
Rams_def_pass_3<- t_function_test(rams_def_air_comp$`Pass Coverage Cmp` ,Defense_Air_Comp$`Pass Coverage Cmp`)

Rams_def_pass_3

# comp percentage pass coverage
Rams_def_pass_4<- t_function_test(rams_def_air_comp$`Pass Coverage Cmp%` ,Defense_Air_Comp$`Pass Coverage Cmp%`)

Rams_def_pass_4

#pass coverage yards
Rams_def_pass_5<- t_function_test(rams_def_air_comp$`Pass Coverage Yds` ,Defense_Air_Comp$`Pass Coverage Yds`)

Rams_def_pass_5


#pass coverage yards per attempt 
Rams_def_pass_7<- t_function_test(rams_def_air_comp$`Pass Coverage Yds/Tgt` ,Defense_Air_Comp$`Pass Coverage Yds/Tgt`)

Rams_def_pass_7

# pass coverage touchdowns 
Rams_def_pass_8<- t_function_test(rams_def_air_comp$`Pass Coverage TD`,Defense_Air_Comp$`Pass Coverage TD`)

Rams_def_pass_8

# pass coverage DADOT
Rams_def_pass_9<- t_function_test(rams_def_air_comp$`Pass Coverage DADOT` ,Defense_Air_Comp$`Pass Coverage DADOT`)

Rams_def_pass_9

#coverage air yards
Rams_def_pass_10<- t_function_test(rams_def_air_comp$`Pass Coverage Air` ,Defense_Air_Comp$`Pass Coverage Air`)

Rams_def_pass_10

# yards after catch coverage 
Rams_def_pass_11<- t_function_test(rams_def_air_comp$`Pass Coverage YAC` ,Defense_Air_Comp$`Pass Coverage YAC`)

Rams_def_pass_11


#Rushing defense Rams:

# pass rush blitzes 
Rams_def_rush_1<- t_function_test(rams_adv_def_rush$`Pass Rush Bltz` ,advanced_def_rush$`Pass Rush Bltz`)

Rams_def_rush_1

# pass rush hurry 
Rams_def_rush_2<- t_function_test(rams_adv_def_rush$`Pass Rush Hrry` ,advanced_def_rush$`Pass Rush Hrry`)

Rams_def_rush_2

# QB knockdown 
Rams_def_rush_3<- t_function_test(rams_adv_def_rush$`Pass Rush QBKD` ,advanced_def_rush$`Pass Rush QBKD`)

Rams_def_rush_3

# sacks
Rams_def_rush_4<- t_function_test(rams_adv_def_rush$`Pass Rush Sk` ,advanced_def_rush$`Pass Rush Sk`)

Rams_def_rush_4

#pressure
Rams_def_rush_5<- t_function_test(rams_adv_def_rush$`Pass Rush Prss` ,advanced_def_rush$`Pass Rush Prss`)

Rams_def_rush_5

#tackles combined
Rams_def_rush_6<- t_function_test(rams_adv_def_rush$`Tackles Comb` ,advanced_def_rush$`Tackles Comb`)

Rams_def_rush_6

# missed tackels
Rams_def_rush_7<- t_function_test(rams_adv_def_rush$`Tackles MTkl` ,advanced_def_rush$`Tackles MTkl`)

Rams_def_rush_7

#missed tackle percentage
Rams_def_rush_8<- t_function_test(rams_adv_def_rush$`Tackles MTkl%` ,advanced_def_rush$`Tackles MTkl%`)

Rams_def_rush_8

# ARI t tests:

#pass coverage int
ARI_def_pass_1<- t_function_test(Ari_def_air_comp$`Pass Coverage Int` ,Defense_Air_Comp$`Pass Coverage Int`)

ARI_def_pass_1

# pass coverage target
ARI_def_pass_2<- t_function_test(Ari_def_air_comp$`Pass Coverage Tgt` ,Defense_Air_Comp$`Pass Coverage Tgt`)

ARI_def_pass_2

# pass coverage completion
ARI_def_pass_3<- t_function_test(Ari_def_air_comp$`Pass Coverage Cmp` ,Defense_Air_Comp$`Pass Coverage Cmp`)

ARI_def_pass_3

# comp percentage pass coverage
ARI_def_pass_4<- t_function_test(Ari_def_air_comp$`Pass Coverage Cmp%` ,Defense_Air_Comp$`Pass Coverage Cmp%`)

ARI_def_pass_4

#pass coverage yards
ARI_def_pass_5<- t_function_test(Ari_def_air_comp$`Pass Coverage Yds` ,Defense_Air_Comp$`Pass Coverage Yds`)

ARI_def_pass_5


#pass coverage yards per completion 
ARI_def_pass_6<- t_function_test(Ari_def_air_comp$`Pass Coverage Yds/Cmp` ,Defense_Air_Comp$`Pass Coverage Yds/Cmp`)

ARI_def_pass_6

#pass coverage yards per attempt 
ARI_def_pass_7<- t_function_test(Ari_def_air_comp$`Pass Coverage Yds/Tgt` ,Defense_Air_Comp$`Pass Coverage Yds/Tgt`)

ARI_def_pass_7

# pass coverage touchdowns 
ARI_def_pass_8<- t_function_test(Ari_def_air_comp$`Pass Coverage TD`,Defense_Air_Comp$`Pass Coverage TD`)

ARI_def_pass_8

# pass coverage DADOT
ARI_def_pass_9<- t_function_test(Ari_def_air_comp$`Pass Coverage DADOT` ,Defense_Air_Comp$`Pass Coverage DADOT`)

ARI_def_pass_9

#coverage air yards
ARI_def_pass_10<- t_function_test(Ari_def_air_comp$`Pass Coverage Air` ,Defense_Air_Comp$`Pass Coverage Air`)

ARI_def_pass_10

# yards after catch coverage 
ARI_def_pass_11<- t_function_test(Ari_def_air_comp$`Pass Coverage YAC` ,Defense_Air_Comp$`Pass Coverage YAC`)

ARI_def_pass_11


#Rushing defense ARI:

# pass rush blitzes 
ARI_def_rush_1<- t_function_test(Ari_adv_def_rush$`Pass Rush Bltz` ,advanced_def_rush$`Pass Rush Bltz`)

ARI_def_rush_1

# pass rush hurry 
ARI_def_rush_2<- t_function_test(Ari_adv_def_rush$`Pass Rush Hrry` ,advanced_def_rush$`Pass Rush Hrry`)

ARI_def_rush_2

# QB knockdown 
ARI_def_rush_3<- t_function_test(Ari_adv_def_rush$`Pass Rush QBKD` ,advanced_def_rush$`Pass Rush QBKD`)

ARI_def_rush_3

# sacks
ARI_def_rush_4<- t_function_test(Ari_adv_def_rush$`Pass Rush Sk` ,advanced_def_rush$`Pass Rush Sk`)

ARI_def_rush_4

#pressure
ARI_def_rush_5<- t_function_test(Ari_adv_def_rush$`Pass Rush Prss` ,advanced_def_rush$`Pass Rush Prss`)

ARI_def_rush_5

#tackles combined
ARI_def_rush_6<- t_function_test(Ari_adv_def_rush$`Tackles Comb` ,advanced_def_rush$`Tackles Comb`)

ARI_def_rush_6

# missed tackels
ARI_def_rush_7<- t_function_test(Ari_adv_def_rush$`Tackles MTkl` ,advanced_def_rush$`Tackles MTkl`)

ARI_def_rush_7

#missed tackle percentage
ARI_def_rush_8<- t_function_test(Ari_adv_def_rush$`Tackles MTkl%` ,advanced_def_rush$`Tackles MTkl%`)

ARI_def_rush_8


#Receving 

#rams

# targets
Rams_adv_pass_1<- t_function_test(rams_adv_rec$Tgt,Advanced_Rec_stats$Tgt)

Rams_adv_pass_1

# Receptions
Rams_adv_pass_2<- t_function_test(rams_adv_rec$Rec,Advanced_Rec_stats$Rec)

Rams_adv_pass_2

#yards
Rams_adv_pass_3<- t_function_test(rams_adv_rec$Yds,Advanced_Rec_stats$Yds)

Rams_adv_pass_3

#1d
Rams_adv_pass_4<- t_function_test(rams_adv_rec$`1D`,Advanced_Rec_stats$`1D`)

Rams_adv_pass_4

#yards before catch
Rams_adv_pass_5<- t_function_test(rams_adv_rec$YBC,Advanced_Rec_stats$YBC)

Rams_adv_pass_5


#yards after catch
Rams_adv_pass_7<- t_function_test(rams_adv_rec$YAC,Advanced_Rec_stats$YAC)

Rams_adv_pass_7

# broken tackle
Rams_adv_pass_9<- t_function_test(rams_adv_rec$BrkTkl,Advanced_Rec_stats$BrkTkl)

Rams_adv_pass_9


# dropped passes
Rams_adv_pass_11<- t_function_test(rams_adv_rec$Drop,Advanced_Rec_stats$Drop)

Rams_adv_pass_11

# Rushing Rams 

# 1st downs
Rams_adv_rush_1<- t_function_test(rams_adv_rush$`Rushing 1D`,Advanced_Rushing_data$`Rushing 1D`)

Rams_adv_rush_1

# Rushing YBC
Rams_adv_rush_2<- t_function_test(rams_adv_rush$`Rushing YBC`,Advanced_Rushing_data$`Rushing YBC`)

Rams_adv_rush_2

# YAC
Rams_adv_rush_4<- t_function_test(rams_adv_rush$`Rushing YAC`,Advanced_Rushing_data$`Rushing YAC`)

Rams_adv_rush_4


# broken tackles 
Rams_adv_rush_6<- t_function_test(rams_adv_rush$`Rushing BrkTkl`,Advanced_Rushing_data$`Rushing BrkTkl`)

Rams_adv_rush_6


#Receving 

#ARI

# targets
ARI_adv_pass_1<- t_function_test(ARI_adv_rec$Tgt,Advanced_Rec_stats$Tgt)

ARI_adv_pass_1

# Receptions
ARI_adv_pass_2<- t_function_test(ARI_adv_rec$Rec,Advanced_Rec_stats$Rec)

ARI_adv_pass_2

#yards
ARI_adv_pass_3<- t_function_test(ARI_adv_rec$Yds,Advanced_Rec_stats$Yds)

ARI_adv_pass_3

#1d
ARI_adv_pass_4<- t_function_test(ARI_adv_rec$`1D`,Advanced_Rec_stats$`1D`)

ARI_adv_pass_4

#yards before catch
ARI_adv_pass_5<- t_function_test(ARI_adv_rec$YBC,Advanced_Rec_stats$YBC)

ARI_adv_pass_5


#yards after catch
ARI_adv_pass_7<- t_function_test(ARI_adv_rec$YAC,Advanced_Rec_stats$YAC)

ARI_adv_pass_7

# broken tackle
ARI_adv_pass_9<- t_function_test(ARI_adv_rec$BrkTkl,Advanced_Rec_stats$BrkTkl)

ARI_adv_pass_9


# dropped passes
ARI_adv_pass_11<- t_function_test(ARI_adv_rec$Drop,Advanced_Rec_stats$Drop)

ARI_adv_pass_11

# Rushing ARI 

# 1st downs
ARI_adv_rush_1<- t_function_test(ARI_adv_rush$`Rushing 1D`,Advanced_Rushing_data$`Rushing 1D`)

ARI_adv_rush_1

# Rushing YBC
ARI_adv_rush_2<- t_function_test(ARI_adv_rush$`Rushing YBC`,Advanced_Rushing_data$`Rushing YBC`)

ARI_adv_rush_2

# YAC
ARI_adv_rush_4<- t_function_test(ARI_adv_rush$`Rushing YAC`,Advanced_Rushing_data$`Rushing YAC`)

ARI_adv_rush_4

# broken tackles 
ARI_adv_rush_6<- t_function_test(ARI_adv_rush$`Rushing BrkTkl`,Advanced_Rushing_data$`Rushing BrkTkl`)

ARI_adv_rush_6


# Chi Squared Running back 

#Read in tables for Running sides

library(readxl)

#Against arizona defense
Rushing_AG_ARI_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Rushing_AG_ARI_ATT.xlsx")

Rushing_AG_ARI_TDs <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Rushing_AG_ARI_TDs.xlsx")

Rushing_AG_ARI_YARDS <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Rushing_AG_ARI_YARDS.xlsx")

#Against rams defense

Rushing_AG_Rams_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Rushing_AG_Rams_TD.xlsx")

Rushing_AG_RAMS_YARDS <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Rushing_AG_RAMS_YARDS.xlsx")

Rushing_AGAINST_RAMS_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Rushing_AGAINST_RAMS_ATT.xlsx")

#Arizona rushing 

Rushing_ARI_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Rushing_ARI_ATT.xlsx")

Rushing_ARI_Yards <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Rushing_ARI_Yards.xlsx")

Rushing_ARI_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Rushing_ARI_TD.xlsx")

# Rams rushing 
Rushing_Rams_Attempts <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Rushing_Rams_Attempts.xlsx")

Rushing_Rams_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Rushing_Rams_TD.xlsx")

Rushing_Rams_Yards <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/Rushing_Rams_Yards.xlsx")


#Chi Squared tests 

#Rams attempts 
Rush_Chi_Rams_ATT <- chisq.test(Rushing_Rams_Attempts)

Rush_Chi_Rams_ATT

#Rams yards
Rush_Chi_Rams_Yards <- chisq.test(Rushing_Rams_Yards)

Rush_Chi_Rams_Yards

# Rams Tds

Rush_Chi_Rams_TD <- chisq.test(Rushing_Rams_TD)

Rush_Chi_Rams_TD


#Arizona

#Arizona attempts
Rush_Chi_ARI_ATT <- chisq.test(Rushing_ARI_ATT)

Rush_Chi_ARI_ATT

#TD arizona
Rush_Chi_ARI_TD <- chisq.test(Rushing_ARI_TD)

Rush_Chi_ARI_TD

# arizona yards
Rush_Chi_ARI_Yards <- chisq.test(Rushing_ARI_Yards)

Rush_Chi_ARI_Yards

#Against arizona 

#Against arizona attempts
Rush_Chi_AG_ARI_ATT <- chisq.test(Rushing_AG_ARI_ATT)

Rush_Chi_AG_ARI_ATT

# Against Ari TD
Rush_Chi_AG_ARI_TD <- chisq.test(Rushing_AG_ARI_TDs)

Rush_Chi_AG_ARI_TD

#Against ARi Yards
Rush_Chi_AG_ARI_Yards <- chisq.test(Rushing_AG_ARI_YARDS)

Rush_Chi_AG_ARI_Yards

# against rams attempts
Rush_Chi_AG_Rams_ATT <- chisq.test(Rushing_AGAINST_RAMS_ATT)

Rush_Chi_AG_Rams_ATT

# against rams td
Rush_Chi_AG_Rams_TD <- chisq.test(Rushing_AG_Rams_TD)

Rush_Chi_AG_Rams_TD

#against rams yards
Rush_Chi_AG_Rams_Yards <- chisq.test(Rushing_AG_RAMS_YARDS)

Rush_Chi_AG_Rams_Yards

# T score percentile
pnorm(s_z1_ftp )*100 
pnorm(s_z1_ftp_1 )*100 
pnorm(s_z1_ftp_2 )*100 
pnorm(s_z1_ftp_3 )*100 
pnorm(s_z1_ftp_4 )*100 
pnorm(s_z1_ftp_5 )*100 
pnorm(s_z1_ftp_6 )*100 
pnorm(s_z1_ftp_7 )*100 
pnorm(s_z1_kick_return_1 )*100 
pnorm(s_z1_kick_return_2 )*100 
pnorm(s_z1_kick_return_3 )*100 
pnorm(s_z1_kick_return_4 )*100 
pnorm(s_z1_kick_return_5 )*100 
pnorm(s_z1_ngp )*100 
pnorm(s_z1_ngp_1 )*100 
pnorm(s_z1_ngp_10 )*100 
pnorm(s_z1_ngp_11 )*100 
pnorm(s_z1_ngp_12 )*100 
pnorm(s_z1_ngp_13 )*100 
pnorm(s_z1_ngp_14 )*100 
pnorm(s_z1_ngp_15 )*100 
pnorm(s_z1_ngp_16 )*100 
pnorm(s_z1_ngp_17 )*100 
pnorm(s_z1_ngp_18 )*100 
pnorm(s_z1_ngp_19 )*100 
pnorm(s_z1_ngp_2 )*100 
pnorm(s_z1_ngp_20 )*100 
pnorm(s_z1_ngp_21 )*100 
pnorm(s_z1_ngp_3 )*100 
pnorm(s_z1_ngp_4 )*100 
pnorm(s_z1_ngp_5 )*100 
pnorm(s_z1_ngp_6 )*100 
pnorm(s_z1_ngp_7 )*100 
pnorm(s_z1_ngp_8 )*100 
pnorm(s_z1_ngp_9 )*100 
pnorm(s_z1_percentage_1 )*100 
pnorm(s_z1_percentage_2 )*100 
pnorm(s_z1_percentage_3 )*100 
pnorm(s_z1_percentage_4 )*100 
pnorm(s_z1_percentage_5 )*100 
pnorm(s_z1_punt_return_1 )*100 
pnorm(s_z1_punt_return_2 )*100 
pnorm(s_z1_punt_return_3 )*100 
pnorm(s_z1_punt_return_4 )*100 
pnorm(s_z1_punt_return_5 )*100 
pnorm(s_z1_team_rushing_1 )*100 
pnorm(s_z1_team_rushing_2 )*100 
pnorm(s_z1_team_rushing_3 )*100 
pnorm(s_z1_team_rushing_4 )*100 
pnorm(s_z1_team_rushing_5 )*100 
pnorm(s_z1_team_rushing_6 )*100 
pnorm(s_z1_team_scoring_1 )*100 
pnorm(s_z1_team_scoring_13 )*100 
pnorm(s_z1_team_scoring_14 )*100 
pnorm(s_z1_team_scoring_15 )*100 
pnorm(s_z1_team_scoring_2 )*100 
pnorm(s_z1_team_scoring_3 )*100 
pnorm(s_z1_team_scoring_4 )*100 
pnorm(s_z1_team_scoring_5 )*100 
pnorm(s_z1_team_scoring_6 )*100 
pnorm(s_z1_team_scoring_7 )*100 
pnorm(s_z1_team_scoring_8 )*100 
pnorm(s_z1_team_scoring_9 )*100 
pnorm(s_z1_teams_ds )*100 
pnorm(s_z1_teams_ds_1 )*100 
pnorm(s_z1_teams_ds_2 )*100 
pnorm(s_z1_teams_ds_3 )*100 
pnorm(s_z1_teams_ds_4 )*100 
pnorm(s_z1_teams_ds_5 )*100 
pnorm(s_z1_teams_ds_6 )*100 
pnorm(s_z1_teams_ds_7 )*100 
pnorm(s_z1_teams_ds_8 )*100 
pnorm(s_z1_teams_ps_1 )*100 
pnorm(s_z1_teams_ps_2 )*100 
pnorm(s_z1_teams_ps_3 )*100 
pnorm(s_z1_teams_ps_4 )*100 
pnorm(z1_ftp )*100 
pnorm(z1_ftp_1 )*100 
pnorm(z1_ftp_2 )*100 
pnorm(z1_ftp_3 )*100 
pnorm(z1_ftp_4 )*100 
pnorm(z1_ftp_5 )*100 
pnorm(z1_ftp_6 )*100 
pnorm(z1_ftp_7 )*100 
pnorm(z1_ngp )*100 
pnorm(z1_ngp_1 )*100 
pnorm(z1_ngp_10 )*100 
pnorm(z1_ngp_11 )*100 
pnorm(z1_ngp_12 )*100 
pnorm(z1_ngp_13 )*100 
pnorm(z1_ngp_14 )*100 
pnorm(z1_ngp_15 )*100 
pnorm(z1_ngp_16 )*100 
pnorm(z1_ngp_17 )*100 
pnorm(z1_ngp_18 )*100 
pnorm(z1_ngp_19 )*100 
pnorm(z1_ngp_2 )*100 
pnorm(z1_ngp_20 )*100 
pnorm(z1_ngp_21 )*100 
pnorm(z1_ngp_3 )*100 
pnorm(z1_ngp_4 )*100 
pnorm(z1_ngp_5 )*100 
pnorm(z1_ngp_6 )*100 
pnorm(z1_ngp_7 )*100 
pnorm(z1_ngp_8 )*100 
pnorm(z1_ngp_9 )*100 
pnorm(z1_percentage_1 )*100 
pnorm(z1_percentage_2 )*100 
pnorm(z1_percentage_3 )*100 
pnorm(z1_percentage_4 )*100 
pnorm(z1_percentage_5 )*100 
pnorm(z1_team_rushing_1 )*100 
pnorm(z1_team_rushing_2 )*100 
pnorm(z1_team_rushing_3 )*100 
pnorm(z1_team_rushing_4 )*100 
pnorm(z1_team_rushing_5 )*100 
pnorm(z1_team_rushing_6 )*100 
pnorm(z1_team_scoring_1 )*100 
pnorm(z1_team_scoring_13 )*100 
pnorm(z1_team_scoring_14 )*100 
pnorm(z1_team_scoring_15 )*100 
pnorm(z1_team_scoring_2 )*100 
pnorm(z1_team_scoring_3 )*100 
pnorm(z1_team_scoring_4 )*100 
pnorm(z1_team_scoring_5 )*100 
pnorm(z1_team_scoring_6 )*100 
pnorm(z1_team_scoring_7 )*100 
pnorm(z1_team_scoring_8 )*100 
pnorm(z1_team_scoring_9 )*100 
pnorm(z1_teams_ds )*100 
pnorm(z1_teams_ds_1 )*100 
pnorm(z1_teams_ds_2 )*100 
pnorm(z1_teams_ds_3 )*100 
pnorm(z1_teams_ds_4 )*100 
pnorm(z1_teams_ds_5 )*100 
pnorm(z1_teams_ds_6 )*100 
pnorm(z1_teams_ds_7 )*100 
pnorm(z1_teams_ds_8 )*100 
pnorm(z1_teams_ps_1 )*100 
pnorm(z1_teams_ps_2 )*100 
pnorm(z1_teams_ps_3 )*100 
pnorm(z1_teams_ps_4 )*100 

kks <- list(ADV_DEF_MOD_STATS,
            advanced_def_rush,
            Advanced_Rec_stats,
            Advanced_Rushing_data,
            Ari_adv_def_rush,
            ARI_adv_rec,
            ARI_adv_rush,
            ARI_ATT,
            Ari_comp,
            ARI_Comp_Perc,
            Ari_def_air_comp,
            ARI_Defense_season,
            ARI_Defense_weekly,
            ARI_downs_season,
            ARI_espn_weekly_passing,
            ARI_fullteam_points_game,
            ARI_INT,
            ARI_INT_RATIO,
            ARI_kickreturn_szn,
            ARI_nextgenstats_passing,
            ARI_nextgenstats_receving,
            ARI_passing_weekkly,
            ARI_punt_return,
            ARI_qb_passing,
            ARI_rec_season,
            ARI_rec_weekly,
            ARI_rushing_season,
            ARI_scoring_season,
            ARI_TD,
            ARI_TD_RATIO,
            ARI_team_passingseason,
            ARI_team_percentageplays,
            ARI_team_rushing_season,
            ARI_team_scoring_season,
            ARI_weekly_passing_12_stats,
            ARI_weekly_rushing_stats,
            Defense_Air_Comp,
            Defense_Season,
            Defense_Weekly,
            ESPN_PASSING_WEEKLY,
            Full_team_Points_Game_season,
            Goff_ATT,
            Goff_comp,
            Goff_comp_perc,
            Goff_Int,
            Goff_INT_RATIO,
            Goff_TD,
            Goff_TD_Ratio,
            Kick_Return_Season,
            Kyler_Att,
            Kyler_Comp_perc,
            Kyler_Completions,
            Kyler_INT,
            Kyler_INT_RATIO,
            Kyler_TD,
            Kyler_TD_comp_ratio,
            NEXT_GEN_STATS_PASSING,
            Next_gen_stats_receving,
            Passing_Weekly,
            Punt_Return_season,
            QB_SEASON_PASSING,
            rams_adv_def_rush,
            rams_adv_rec,
            rams_adv_rush,
            RAMS_ATT,
            Rams_ATT_model,
            RAMS_COMP,
            RAMS_COMP_PERC,
            rams_def_air_comp,
            rams_Defense_season,
            rams_Defense_weekly,
            rams_downs_season,
            rams_espn_weekly_passing,
            rams_fullteam_points_game,
            RAMS_INT,
            RAMS_INT_RATIO,
            rams_kickreturn_szn,
            rams_nextgenstats_passing,
            rams_nextgenstats_receving,
            rams_passing_weekkly,
            Rams_punt_return,
            rams_qb_passing,
            rams_rec_season,
            rams_rec_weekly,
            rams_rushing_season,
            rams_scoring_season,
            RAMS_TD,
            RAMS_TD_RATIO,
            rams_team_passingseason,
            rams_team_percentageplays,
            rams_team_rushing_season,
            rams_team_scoring_season,
            rams_weekly_output,
            rams_weekly_passing_12_stats,
            rams_weekly_rushing_stats,
            REC_WEEKLY,
            Receiving_SEASON,
            Rushing_AG_ARI_ATT,
            Rushing_AG_ARI_TDs,
            Rushing_AG_ARI_YARDS,
            Rushing_AG_Rams_TD,
            Rushing_AG_RAMS_YARDS,
            Rushing_AGAINST_RAMS_ATT,
            Rushing_ARI_ATT,
            Rushing_ARI_TD,
            Rushing_ARI_Yards,
            Rushing_Rams_Attempts,
            Rushing_Rams_TD,
            Rushing_Rams_Yards,
            Rushing_Season,
            Scoring_Season,
            teams_downs_seasons,
            TEAMS_PASSING_SEASON,
            teams_percentage_plays_season,
            teams_rushing_season,
            teams_scoring_seasons,
            Weekly_Passing,
            Weekly_Rushing_Stats)
library(purrr)
library(dplyr)
options(dplyr.width = Inf)
kks %>% map(summarise_if, .predicate = is.numeric, .funs = mean)
Alk <- list(ARI_Defense_season,
            ARI_Defense_weekly,
            ARI_espn_weekly_passing,
            ARI_fullteam_points_game,
            ARI_kickreturn_szn,
            ARI_nextgenstats_passing,
            ARI_nextgenstats_receving,
            ARI_passing_weekkly,
            ARI_punt_return,
            ARI_qb_passing,
            ARI_rec_weekly,
            ARI_rec_season,
            ARI_rushing_season,
            ARI_scoring_season,
            ARI_downs_season,
            ARI_team_passingseason,
            ARI_team_percentageplays,
            ARI_team_rushing_season,
            ARI_team_scoring_season,
            ARI_weekly_rushing_stats,
            ARI_weekly_passing_12_stats,
            Ari_def_air_comp ,
            Ari_adv_def_rush ,
            ARI_adv_rush ,
            ARI_adv_rec
)
Alk %>% map(summarise_if, .predicate = is.numeric, .funs = mean)
Alk %>% map(summarise_if, .predicate = is.numeric, .funs = sd)
Rlk <- list(rams_def_air_comp,
            rams_adv_def_rush,
            rams_adv_rush,
            rams_adv_rec,
            rams_Defense_season,
            rams_Defense_weekly,
            rams_espn_weekly_passing,
            rams_fullteam_points_game,
            rams_kickreturn_szn,
            rams_nextgenstats_passing,
            rams_nextgenstats_receving,
            rams_passing_weekkly,
            Rams_punt_return,
            rams_qb_passing,
            rams_rec_weekly,
            rams_rec_season,
            rams_rushing_season,
            rams_scoring_season,
            rams_downs_season,
            rams_team_passingseason,
            rams_team_percentageplays,
            rams_team_rushing_season,
            rams_team_scoring_season,
            rams_weekly_rushing_stats,
            rams_weekly_passing_12_stats
)
Rlk %>% map(summarise_if, .predicate = is.numeric, .funs = mean)
Rlk %>% map(summarise_if, .predicate = is.numeric, .funs = sd)
#population stats
Plk <- list(
  Defense_Season,
  Defense_Weekly,
  ESPN_PASSING_WEEKLY,
  Full_team_Points_Game_season,
  Kick_Return_Season,
  NEXT_GEN_STATS_PASSING,
  Next_gen_stats_receving,
  Passing_Weekly,
  Punt_Return_season,
  QB_SEASON_PASSING,
  REC_WEEKLY,
  Receiving_SEASON,
  Rushing_Season,
  Scoring_Season,
  teams_downs_seasons,
  TEAMS_PASSING_SEASON,
  teams_percentage_plays_season,
  teams_rushing_season,
  teams_scoring_seasons,
  Weekly_Rushing_Stats,
  Weekly_Passing ,
  Defense_Air_Comp,
  advanced_def_rush,
  Advanced_Rec_stats,
  Advanced_Rushing_data
)
Plk %>% map(summarise_if, .predicate = is.numeric, .funs = mean)
Plk %>% map(summarise_if, .predicate = is.numeric, .funs = sd)


WEEKLY_REC_WEEK <- na.omit(WEEKLY_REC_WEEK)
WEEKLY_ADV_RUSH_STATS <- na.omit(WEEKLY_ADV_RUSH_STATS)
rams_weekly_adv_rec <- na.omit(rams_weekly_adv_rec)
rams_adv_weekly_rushing_stats <- na.omit(rams_adv_weekly_rushing_stats)
ARI_weekly_adv_rec <- na.omit(ARI_weekly_adv_rec)
ARI_adv_weekly_rushing_stats <- na.omit(ARI_adv_weekly_rushing_stats)

NAK <- list(
  WEEKLY_REC_WEEK,
  WEEKLY_ADV_RUSH_STATS,
  rams_weekly_adv_rec,
  rams_adv_weekly_rushing_stats,
  ARI_weekly_adv_rec,
  ARI_adv_weekly_rushing_stats
)

NAK %>% map(summarise_if, .predicate = is.numeric, .funs = mean)
NAK %>% map(summarise_if, .predicate = is.numeric, .funs = sd)


CVK <-  list(
  CIN_WP,
  CIN_WR,
  CIN_WRUSH,
  KC_WP,
  KC_WR,
  KC_WRUSH
)

CVK %>% map(summarise_if, .predicate = is.numeric, .funs = mean)
CVK %>% map(summarise_if, .predicate = is.numeric, .funs = sd)

# Chi sqaures reversed
#list of chi squared
CCHI_LIST <- list(
  ARI_ATT,
  Ari_comp,
  ARI_INT,
  ARI_TD,
  RAMS_ATT,
  RAMS_COMP,
  RAMS_INT,
  RAMS_TD,
  Goff_ATT,
  Goff_comp,
  Goff_Int,
  Goff_TD,
  Kyler_Att,
  Kyler_Completions,
  Kyler_INT,
  Kyler_TD
)
C2_list <- list(
  Kyler_Comp_perc,
  ARI_Comp_Perc,
  Goff_comp_perc,
  ARI_INT_RATIO,
  ARI_TD_RATIO,
  RAMS_COMP_PERC,
  RAMS_INT_RATIO,
  RAMS_TD_RATIO,
  Goff_INT_RATIO,
  Goff_TD_Ratio,
  Kyler_INT_RATIO,
  Kyler_TD_comp_ratio
)
#Column and row sums for # occurence data
CHI_COL_TOT <- lapply(CCHI_LIST, colSums)
CHI_ROW_TOT <- lapply(CCHI_LIST, rowSums)
#print results
CHI_COL_TOT
CHI_ROW_TOT
#column and row means for ratio data
two_CHI_COL_TOT <- lapply(C2_list, colMeans)
two_CHI_ROW_TOT <- lapply(C2_list, rowMeans)
#print results
two_CHI_COL_TOT
two_CHI_ROW_TOT
#Re COL CHU SQUARE
RE_ARI_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ARI_ATT.xlsx")
RE_ARI_COMP <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ARI_COMP.xlsx")
RE_ARI_INT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ARI_INT.xlsx")
RE_ARI_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ARI_TD.xlsx")
RE_RAMS_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_RAMS_ATT.xlsx")
RE_RAMS_COMP <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_RAMS_COMP.xlsx")
RE_RAMS_INT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_RAMS_INT.xlsx")
RE_RAMS_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_RAMS_TD.xlsx")
RE_GOFF_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_GOFF_ATT.xlsx")
RE_GOFF_COMP <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_GOFF_COMP.xlsx")
RE_GOFF_INT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_GOFF_INT.xlsx")
RE_GOFF_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_GOFF_TD.xlsx")
RE_KYLER_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_KYLER_ATT.xlsx")
RE_KYLER_COMP <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_KYLER_COMP.xlsx")
RE_KYLER_INT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_KYLER_INT.xlsx")
RE_KYLER_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_KYLER_TD.xlsx")
# RE ROW CHI SQUARED
RE_ROW_ARI_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_ARI_ATT.xlsx")
RE_ROW_ARI_COMP <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_ARI_COMP.xlsx")
RE_ROW_ARI_INT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_ARI_INT.xlsx")
RE_ROW_ARI_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_ARI_TD.xlsx")
RE_ROW_RAMS_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_RAMS_ATT.xlsx")
RE_ROW_RAMS_COMP <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_RAMS_COMP.xlsx")
RE_ROW_RAMS_INT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_RAMS_INT.xlsx")
RE_ROW_RAMS_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_RAMS_TD.xlsx")
RE_ROW_GOFF_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_GOFF_ATT.xlsx")
RE_ROW_GOFF_COMP <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_GOFF_COMP.xlsx")
RE_ROW_GOFF_INT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_GOFF_INT.xlsx")
RE_ROW_GOFF_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_GOFF_TD.xlsx")
RE_ROW_KYLER_ATT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_KYLER_ATT.xlsx")
RE_ROW_KYLER_COMP <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_KYLER_COMP.xlsx")
RE_ROW_KYLER_INT <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_KYLER_INT.xlsx")
RE_ROW_KYLER_TD <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_KYLER_TD.xlsx")
#RE COL AVG CHI SQUARED
AVG_ARI_COMP_PERC <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/AVG_ARI_COMP_PERC.xlsx")
AVG_RAMS_COMP_PERC <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/AVG_RAMS_COMP_PERC.xlsx")
AVG_GOFF_COMP_PERC <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/AVG_GOFF_COMP_PERC.xlsx")
AVG_KYLER_COMP_PERC <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/AVG_KYLER_COMP_PERC.xlsx")
AVG_KYLER_TD_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/AVG_KYLER_TD_RATIO.xlsx")
AVG_RAMS_TD_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/AVG_RAMS_TD_RATIO.xlsx")
AVG_GOFF_TD_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/AVG_GOFF_TD_RATIO.xlsx")
AVG_ARI_TD_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/AVG_ARI_TD_RATIO.xlsx")
AVG_KYLER_INT_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/AVG_KYLER_INT_RATIO.xlsx")
AVG_RAMS_INT_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/AVG_RAMS_INT_RATIO.xlsx")
AVG_GOFF_INT_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/AVG_GOFF_INT_RATIO.xlsx")
AVG_ARI_INT_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/AVG_ARI_INT_RATIO.xlsx")
#RE ROW AVG CHI SQUARED
RE_ROW_ARI_COMP_PERC <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_ARI_COMP_PERC.xlsx")
RE_ROW_RAMS_COMP_PERC <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_RAMS_COMP_PERC.xlsx")
RE_ROW_GOFF_COMP_PERC <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_GOFF_COMP_PERC.xlsx")
RE_ROW_KYLER_COMP_PERC <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_KYLER_COMP_PERC.xlsx")
RE_ROW_KYLER_TD_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_KYLER_TD_RATIO.xlsx")
RE_ROW_RAMS_TD_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_RAMS_TD_RATIO.xlsx")
RE_ROW_GOFF_TD_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_GOFF_TD_RATIO.xlsx")
RE_ROW_ARI_TD_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_ARI_TD_RATIO.xlsx")
RE_ROW_KYLER_INT_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_KYLER_INT_RATIO.xlsx")
RE_ROW_RAMS_INT_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_RAMS_INT_RATIO.xlsx")
RE_ROW_GOFF_INT_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_GOFF_INT_RATIO.xlsx")
RE_ROW_ARI_INT_RATIO <- read_excel("C:/Users/ericr/OneDrive/Desktop/NFL PROJECT DATA/Chi Sqaured Data/RE_ROW_ARI_INT_RATIO.xlsx")
#Chi Tests
CHI_test_110 <- chisq.test(RE_ARI_ATT)
CHI_test_111 <- chisq.test(RE_ARI_COMP )
CHI_test_112 <- chisq.test(RE_ARI_INT )
CHI_test_113 <- chisq.test(RE_ARI_TD )
CHI_test_114 <- chisq.test(RE_RAMS_ATT )
CHI_test_115 <- chisq.test(RE_RAMS_COMP )
CHI_test_116 <- chisq.test(RE_RAMS_INT )
CHI_test_117 <- chisq.test(RE_RAMS_TD )
CHI_test_118 <- chisq.test(RE_GOFF_ATT )
CHI_test_119 <- chisq.test(RE_GOFF_COMP )
CHI_test_120 <- chisq.test(RE_GOFF_INT )
CHI_test_121 <- chisq.test(RE_GOFF_TD )
CHI_test_122 <- chisq.test(RE_KYLER_ATT )
CHI_test_123 <- chisq.test(RE_KYLER_COMP)
CHI_test_124 <- chisq.test(RE_KYLER_INT )
CHI_test_125 <- chisq.test(RE_KYLER_TD )
CHI_test_126 <- chisq.test(RE_ROW_ARI_ATT )
CHI_test_127 <- chisq.test(RE_ROW_ARI_COMP )
CHI_test_128 <- chisq.test(RE_ROW_ARI_INT )
CHI_test_129 <- chisq.test(RE_ROW_ARI_TD)
CHI_test_130 <- chisq.test(RE_ROW_RAMS_ATT )
CHI_test_131 <- chisq.test(RE_ROW_RAMS_COMP )
CHI_test_132 <- chisq.test(RE_ROW_RAMS_INT )
CHI_test_133 <- chisq.test(RE_ROW_RAMS_TD )
CHI_test_134 <- chisq.test(RE_ROW_GOFF_ATT )
CHI_test_135 <- chisq.test(RE_ROW_GOFF_COMP )
CHI_test_136 <- chisq.test(RE_ROW_GOFF_INT )
CHI_test_137 <- chisq.test(RE_ROW_GOFF_TD )
CHI_test_138 <- chisq.test(RE_ROW_KYLER_ATT )
CHI_test_139 <- chisq.test(RE_ROW_KYLER_COMP )
CHI_test_140 <- chisq.test(RE_ROW_KYLER_INT )
CHI_test_141 <- chisq.test(RE_ROW_KYLER_TD )
CHI_test_142 <- chisq.test(AVG_ARI_COMP_PERC )
CHI_test_143 <- chisq.test(AVG_RAMS_COMP_PERC )
CHI_test_144 <- chisq.test(AVG_GOFF_COMP_PERC )
CHI_test_145 <- chisq.test(AVG_KYLER_COMP_PERC )
CHI_test_146 <- chisq.test(AVG_KYLER_TD_RATIO )
CHI_test_147 <- chisq.test(AVG_RAMS_TD_RATIO )
CHI_test_148 <- chisq.test(AVG_GOFF_TD_RATIO )
CHI_test_149 <- chisq.test(AVG_ARI_TD_RATIO )
CHI_test_150 <- chisq.test(AVG_KYLER_INT_RATIO )
CHI_test_151 <- chisq.test(AVG_RAMS_INT_RATIO )
CHI_test_152 <- chisq.test(AVG_GOFF_INT_RATIO )
CHI_test_153 <- chisq.test(AVG_ARI_INT_RATIO )
CHI_test_154 <- chisq.test(RE_ROW_ARI_COMP_PERC )
CHI_test_155 <- chisq.test(RE_ROW_RAMS_COMP_PERC )
CHI_test_156 <- chisq.test(RE_ROW_GOFF_COMP_PERC )
CHI_test_157 <- chisq.test(RE_ROW_KYLER_COMP_PERC )
CHI_test_158 <- chisq.test(RE_ROW_KYLER_TD_RATIO )
CHI_test_159 <- chisq.test(RE_ROW_RAMS_TD_RATIO )
CHI_test_160 <- chisq.test(RE_ROW_GOFF_TD_RATIO )
CHI_test_161 <- chisq.test(RE_ROW_ARI_TD_RATIO )
CHI_test_162 <- chisq.test(RE_ROW_KYLER_INT_RATIO )
CHI_test_163 <- chisq.test(RE_ROW_RAMS_INT_RATIO )
CHI_test_164 <- chisq.test(RE_ROW_GOFF_INT_RATIO )
CHI_test_165 <- chisq.test(RE_ROW_ARI_INT_RATIO )
#Print results
CHI_test_110
CHI_test_111
CHI_test_112
CHI_test_113
CHI_test_114
CHI_test_115
CHI_test_116
CHI_test_117
CHI_test_118
CHI_test_119
CHI_test_120
CHI_test_121
CHI_test_122
CHI_test_123
CHI_test_124
CHI_test_125
CHI_test_126
CHI_test_127
CHI_test_128
CHI_test_129
CHI_test_130
CHI_test_131
CHI_test_132
CHI_test_133
CHI_test_134
CHI_test_135
CHI_test_136
CHI_test_137
CHI_test_138
CHI_test_139
CHI_test_140
CHI_test_141
CHI_test_142
CHI_test_143
CHI_test_144
CHI_test_145
CHI_test_146
CHI_test_147
CHI_test_148
CHI_test_149
CHI_test_150
CHI_test_151
CHI_test_152
CHI_test_153
CHI_test_154
CHI_test_155
CHI_test_156
CHI_test_157
CHI_test_158
CHI_test_159
CHI_test_160
CHI_test_161
CHI_test_162
CHI_test_163
CHI_test_164
CHI_test_165


# Graphing variables 

library(ggplot2)
library(GGally)

# Pairs 
pairs(advanced_def_rush [c(-1:-3)])
pairs(Advanced_Rec_stats [c(-1:-4)])
pairs(Advanced_Rushing_data [c(-1:-2)])
pairs(Defense_Air_Comp [c(-1:-3)])
pairs(Defense_Season [c(-1:-2)])
pairs(ADV_DEF_MOD_STATS[c(-1:-3)])
pairs(Defense_Weekly [c(-1:-4)])
pairs(ESPN_PASSING_WEEKLY [c(-1:-4)])
pairs(Full_team_Points_Game_season [c(-1:-2)])
pairs(Kick_Return_Season [c(-1:-3)])
pairs(NEXT_GEN_STATS_PASSING [c(-1:-2)])
pairs(Next_gen_stats_receving [c(-1:-3)])
pairs(Passing_Weekly [c(-1:-4)])
pairs(Punt_Return_season [c(-1:-3)])
pairs(QB_SEASON_PASSING [c(-1:-4)])
pairs(REC_WEEKLY [c(-1:-4)])
pairs(Receiving_SEASON [c(-1:-2)])
pairs(Rushing_Season [c(-1:-2)])
pairs(Scoring_Season [c(-1:-2)])
pairs(teams_downs_seasons [c(-1:-2)])
pairs(TEAMS_PASSING_SEASON [c(-1:-2)])
pairs(teams_percentage_plays_season [c(-1:-2)])
pairs(teams_rushing_season [c(-1:-2)])
pairs(teams_scoring_seasons [c(-1:-2)])
pairs(Weekly_Passing [c(-1:-2)])
pairs(Weekly_Rushing_Stats [c(-1:-4)])

pairs(WEEKLY_ADV_RUSH_STATS[c(-1:-2)])

WEEKLY_REC_WEEK <- WEEKLY_REC_WEEK[-14:-15]
pairs(WEEKLY_REC_WEEK[c(-1:-3)])



#  GG pairs 
ggpairs(advanced_def_rush [c(-1:-3)])
ggpairs(Advanced_Rec_stats [c(-1:-4)])
ggpairs(Advanced_Rushing_data [c(-1:-2)])
ggpairs(Defense_Air_Comp [c(-1:-3)])
ggpairs(Defense_Season [c(-1:-2)])
ggpairs(ADV_DEF_MOD_STATS[c(-1:-3)])
ggpairs(Defense_Weekly [c(-1:-4)])
ggpairs(ESPN_PASSING_WEEKLY [c(-1:-4)])
ggpairs(Full_team_Points_Game_season [c(-1:-2)])
ggpairs(Kick_Return_Season [c(-1:-3)])
ggpairs(NEXT_GEN_STATS_PASSING [c(-1:-2)])
ggpairs(Next_gen_stats_receving [c(-1:-3)])
ggpairs(Passing_Weekly [c(-1:-4)])
ggpairs(Punt_Return_season [c(-1:-3)])
ggpairs(QB_SEASON_PASSING [c(-1:-4)])
ggpairs(REC_WEEKLY [c(-1:-4)])
ggpairs(Receiving_SEASON [c(-1:-2)])
ggpairs(Rushing_Season [c(-1:-2)])
ggpairs(Scoring_Season [c(-1:-2)])
ggpairs(teams_downs_seasons [c(-1:-2)])
ggpairs(TEAMS_PASSING_SEASON [c(-1:-2)])
ggpairs(teams_percentage_plays_season [c(-1:-2)])
ggpairs(teams_rushing_season [c(-1:-2)])
ggpairs(teams_scoring_seasons [c(-1:-2)])
ggpairs(Weekly_Passing [c(-1:-2)])
ggpairs(Weekly_Rushing_Stats [c(-1:-4)])

ggpairs(WEEKLY_ADV_RUSH_STATS[c(-1:-2)])
ggpairs(WEEKLY_REC_WEEK[c(-1:-3)])
