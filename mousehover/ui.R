library(shiny)

shinyUI(fluidPage(
  titlePanel("Demo app for mouse hover using ggplot"),
  sidebarLayout(
    sidebarPanel(
      helpText("Hover mouse on the plot to see the coordinates"),
      br()
      
    ),
    mainPanel(
      plotOutput("plot1", hoverId = "plot_hover"),
      verbatimTextOutput("hover_info")
      )
)))