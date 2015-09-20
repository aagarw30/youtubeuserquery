library(shiny)
shinyServer(function(input, output) {
  
  ###### Reactive function to fetch the dataset observations based on the user's choice ---- > this will be used in the renderTable ###
  datasetInput <- reactive({
    # Fetch the appropriate data object, depending on the value of input$dataset - the dataset selected by the user
    # switch(expression, list of alternatives .. )  switch evaluates EXPR and accordingly chooses one of the further arguments 
    #     If EXPR evaluates to a character string then that string is matched (exactly)to the names of the elements in the alternatives.... 
    #     If there is a match then that element is evaluated
    switch(input$dataset,
           "iris" = iris,
           "mtcars" = mtcars,
           "trees" = trees)
  })
  
  
  ### Output of renderTable will be used in the mainPanel of ui.R to display the dataset observations in the table
  output$table <- renderTable({
    datasetInput()
    
  })
  
  ############ Download handler for the download button ####################
  # downloadHandler() takes two arguments, both functions.
  # The content function is passed a filename as an argument, and
  #   it should write out data to that filename.
  output$downloadData <- downloadHandler(
    
    # This function returns a string which tells the client
    # browser what name to use when saving the file.
    filename = function() {
      paste(input$dataset, "Rdata", sep = ".") # example : iris.Rdata
      
    },
    
    # This function should write data to a file given to it by
    # the argument 'file'.
    content = function(file) {
      saveRDS(datasetInput(), file)
    }
  )
})