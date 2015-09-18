library(shiny)
library(shinyjs)
shinyServer(function(input,output,session){
  
  
  shinyjs::onclick(x, shinyjs::info("You have selected", input$x))
  
  
})
