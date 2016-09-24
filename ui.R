library(shiny)

shinyUI(fluidPage(

  titlePanel("Shot Predictor"),

  sidebarLayout(
    # Possible Inputs
    sidebarPanel(
      selectInput('playerId', 'Player Name', players ),      
      numericInput("shotDist", label = h3("Shot Distance"),
                   value = 15),
      numericInput("closeDefDist", label = h3("Closest Defender"),
                   value = 5),
      
      submitButton(text = "Submit")
    ), 

    # Output
    mainPanel(
      textOutput("text1")
    )
  )
))