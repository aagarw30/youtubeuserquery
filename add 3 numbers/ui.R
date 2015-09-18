library(shiny)
library(shinyjs)
shinyUI(fluidPage(
  titlePanel("Hello"),
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "x", label = "Select", choices = c("A", "B"))
      ),
    mainPanel(
      tabsetPanel(type = "tab", tabPanel("tab A"), tabPanel("tab b"))
      )
    )
  
  
  ))