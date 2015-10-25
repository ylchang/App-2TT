library(shiny)
library(ggplot2)
library(reshape)

shinyServer(function(input, output, session) {
  
## Read data file  
  
  data <- reactive({
    
    inFile <- input$file
    if (is.null(inFile)) return(NULL)
    read.csv(inFile$datapath, header = input$header, sep = input$sep,
             quote = input$quote)
  })

## Update selectInput in UI for the variable 1 and variable 2
  observe({updateSelectInput(session,"v1",choices = levels(data()[,1]))})
  observe({updateSelectInput(session,"v2",choices = levels(data()[,1]))})
  
  output$summary <- renderPrint({
    if(is.null(input$file)){return("Waiting for data.")}
    summary(data()) 
  })
  
  output$Tsummary <- renderPrint({
    if(is.null(input$file)){return("Waiting for data.")}
    if(input$VarCheck == "y"){vCheck <- input$VarCheck == "y"} else {vCheck <- input$VarCheck != "y"}
    v1 <- na.omit(data()[data()[,1] %in% input$v1 ,][,2])
    v2 <- na.omit(data()[data()[,1] %in% input$v2 ,][,2])
    t.test(v1,v2, alternative = "two.sided", 
           var.equal = TRUE, conf.level = 0.9)
  })
  
  ## Render Box plot to compare two samples
  output$plot <- renderPlot({
    if(is.null(input$file)){return()}
    v1 <- na.omit(data()[data()[,1] %in% input$v1 ,][,2])
    v2 <- na.omit(data()[data()[,1] %in% input$v2 ,][,2])
    boxplot(v1,v2)
  })
  
})