library(shiny)

shinyUI(fluidPage( 
  titlePanel("Shiny Test project"),
  sidebarLayout(position="left",
  	sidebarPanel(
      h3("Select a value"),
      sliderInput("slider1", "How many steps (in thousands) did you walk today?", 0, 100, 0)
  	),
  	mainPanel( 
  		h3("Steps walked:"),
  		textOutput("text1"),
  		textOutput("text2"),
  		h3("Documentation"),
  		h5("To use the application, simply slide the input slider on the left
  		           and set it to the number of steps you walked today, in thousands. Check
  		           your phone or fitness tracker to get an accurate number! Once you set the
  		           slider, a message will appear that lets you know if you met your daily goal.")
    )
  )
))