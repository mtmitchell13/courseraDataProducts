library(shiny)

eruptMod <- function(waiting) {
  as.numeric(
    predict(
      lm(eruptions~waiting, faithful), 
      newdata=data.frame(waiting=waiting)), 
    colnames=FALSE)
}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$waiting})
    output$prediction <- renderPrint({eruptMod(input$waiting)})
  }
)