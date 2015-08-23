library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Old Faithful Eruption Prediction"),
  sidebarPanel(
    numericInput(inputId="waiting", 
                 label="Waiting Time to Next Eruption (mins)", 
                 value=60, min=25, step = 1),
    submitButton("Submit")
  ),
  mainPanel(
    h3("Documentation"),
    p("This app predicts the duration of an eruption for the Old Faithful 
      geyser in Yellowstone National Park in Wyoming, USA.  The prediction 
      is based on waiting time between eruptions.  Both the input (waiting time) 
      and the prediction output are measured in minutes.  The minimum meaningful 
      waiting time accepted by the model is 25 minutes and the maximum is unbounded."),
    h3("Results of Prediction"),
    h4("You entered"),
    verbatimTextOutput("inputValue"),
    h4("Which resulted in a prediction of"),
    verbatimTextOutput("prediction")
  )
))