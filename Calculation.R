personId <- uniquePlayerNames[uniquePlayerNames$Name==input%playerId,]$Person_id
shots <- rbind(shotSummary15[shotSummary15$PERSON_ID==personId,], shotSummary16[shotSummary16$PERSON_ID==personId,])
x <- shots[,c(15,19]
y <- shots[,10]
model = train(x,y,'nb',trControl=trainControl(method='cv',number=10))
z <- x[1,1:2]
z[1] <- input%shotDist
z[2] <- input%closeDefDist
predict(model$finalModel,z)