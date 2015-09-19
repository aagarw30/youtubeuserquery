library(shiny) # load the shiny package
library(ggplot2)

# beginning of the shiny server function
shinyServer(function(output, input)({
  
  # Assign the output of ggplot to plot1
  output$plot1 <- renderPlot({
      ggplot(mtcars, aes(wt, mpg)) + geom_point()
  })
   

  # Assign the hover information to hover_info
  output$hover_info <- renderPrint({
    cat("input$plot_hover:\n")
    str(input$plot_hover)
  })
  
}))