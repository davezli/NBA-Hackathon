# Reading Data (Removed from GitHub)
playerNames <- read.table("data/Hackathon_player_names_matched_team.txt", header = TRUE)
shotSummary15 <- read.table("data/Hackathon_sv_shot_summary_2014-15.txt", header = TRUE)
shotSummary16 <- read.table("data/Hackathon_sv_shot_summary_2015-16.txt", header = TRUE)
uniquePlayerNames<- subset(playerNames, !duplicated(Name))[3:4]
uniquePlayerNames<- uniquePlayerNames[with(uniquePlayerNames, order(Person_id)),]
uniquePlayerNamesLevels <- uniquePlayerNames
# Global Variable for Front End Selector
players <- levels(uniquePlayerNamesLevels[2]$Name)