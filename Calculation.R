personId <- uniquePlayerNames[uniquePlayerNames$Name=="Austin Rivers",]$Person_id
shots <- rbind(shotSummary15[shotSummary15$PERSON_ID==personId,], shotSummary16[shotSummary16$PERSON_ID==personId,])
