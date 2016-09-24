library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Shot Predictor"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      selectInput("playerId", label = h3("Player"),
        names(data()))
    ), 

    # Show a plot of the generated distribution
    mainPanel(
      img(src="HalfCourt.jpeg")
    )
  )
))