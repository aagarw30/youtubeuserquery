library(shiny)

shinyUI(fluidPage(
  titlePanel("Demo app to take user input and perform operation and finally display the results"),
  sidebarLayout(
    sidebarPanel(
      helpText("Enter the values in the following boxes to perform operation on them"),
      textInput(inputId = "value1", "Enter the first value", value = ""),
      br(),
      textInput(inputId = "value2", "Enter the second value", value = ""),
      br(),
      textInput(inputId = "value3", "Enter the third value", value = ""),
      br()
      
    ),
    mainPanel(
      textOutput("values"),
      tableOutput("valuestable"),
      textOutput("sum")
    )
    
  )
))