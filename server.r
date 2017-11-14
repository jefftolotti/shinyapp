library(shiny)

shinyServer(function(input, output) {
  output$text1 = renderText(format(input$slider1 * 1000, big.mark=",", scientific=FALSE))
  output$text2 = renderText(
    if (input$slider1 >= 10) {
    "Congratulations, you hit your 10k goal today!"
  } else {
    "Try to hit your 10k goal tomorrow!"
  }
  )
})

