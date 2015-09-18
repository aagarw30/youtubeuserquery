library(shiny) # load the shiny package

# beginning of the shiny server function
shinyServer(function(output, input)({
  
  ## The following code to be used when you want to display the user entered values in a string format
  output$values <- renderText({
    if(input$value1=="" | input$value2=="" | input$value3=="")
      return()
    else
      paste("You entered", input$value1, "as first value", input$value2, "as second value", "and", input$value3, "as third value", sep = " ")
  
    })
  
  ## The following code to be used when you want to display the user entered values in table format
  output$valuestable <- renderTable({
    if(input$value1=="" | input$value2=="" | input$value3=="")
      return()
    else
      return(data.frame(FirstValue=input$value1,SecondValue=input$value2,ThirdValue=input$value3))
      
  })
  
  ## The following code is for sum operation
  
  output$sum <- renderText({
    if(input$value1=="" | input$value2=="" | input$value3=="")
      return()
    else
      paste("Sum =", as.numeric(input$value1) + as.numeric(input$value2) + as.numeric(input$value3))
    
  })
  
}))