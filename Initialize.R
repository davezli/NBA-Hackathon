rm(list=ls())
setwd("C:/Users/mike5/Documents/NBA/Data for 2016 NBA Basketball Analytics Hackathon")
boxScores15 <- read.table("Hackathon_nba_2014-15_sv_box_scores.txt", header = TRUE)
boxScores16 <- read.table("Hackathon_nba_2015-16_sv_box_scores.txt", header = TRUE)
playerNames <- read.table("Hackathon_player_names_matched_team.txt", header = TRUE)
reboundSummary15 <- read.table("Hackathon_sv_rebound_summary_2014-15.txt", header = TRUE)
reboundSummary16 <- read.table("Hackathon_sv_rebound_summary_2015-16.txt", header = TRUE)
shotSummary15 <- read.table("Hackathon_sv_shot_summary_2014-15.txt", header = TRUE)
shotSummary16 <- read.table("Hackathon_sv_shot_summary_2015-16.txt", header = TRUE)
teamidLink <- read.table("Hackathon_teamid_link.txt", header = TRUE)
uniquePlayerNames<- subset(playerNames, !duplicated(Name))[3:4]
uniquePlayerNames<- uniquePlayerNames[with(uniquePlayerNames, order(Person_id)),]