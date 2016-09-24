library(shiny)
install.packages("e1071")
install.packages("caret")
library("caret")

shinyServer(function(input, output) {
  output$text1 <- renderText({
    
    # Get the shooting history of the selected player
    temp1 <- input$playerId
    personId <- uniquePlayerNames[uniquePlayerNames$Name==temp1,]$Person_id
    shots <- rbind(shotSummary15[shotSummary15$PERSON_ID==personId,], shotSummary16[shotSummary16$PERSON_ID==personId,])
    x <- shots[,c(15,19)]
    y <- shots[,10]
    
    # Use a Naive Bayes Net with 10x Cross Validation to check
    model = train(x,y,'nb',trControl=trainControl(method='cv',number=10))
    
    # Use rest of input to predict probability of making the shot
    z <- x[1,1:2]
    z[1] <- input$shotDist
    z[2] <- input$closeDefDist
    
    # Output
    paste(predict(model$finalModel,z))

  })
})