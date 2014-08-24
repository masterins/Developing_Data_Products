
library(shiny)
library(datasets)
library(ggplot2)

shinyServer(function(input, output) {
  
  output$finalname <- renderText({
    input$name
  })
  
 output$datas <- renderPlot({
   dist <- rnorm(input$Observation)
   hist(dist)
 })
    
    output$introduction <- renderText({      
    c("You selected: ", input$sel_dataset)      
    })
    
    output$res_summary <- renderPrint({
    final_dataset <- get(input$sel_dataset)
    summary(final_dataset)
    })
 
 output$view <- renderTable({
   final_dataset <- get(input$sel_dataset)
   head(final_dataset)
 })
 
 })
    
