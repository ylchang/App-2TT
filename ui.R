library(shiny)

shinyUI(fluidPage(
  titlePanel("2 Sample T-Test"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Input a data file that consists of two columns."),
      helpText("The first column consists of 2 levels of the factor."),
      helpText("The second column consists of the associated data."),
      
      fileInput('file', 'Choose the File',
                accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv')),
      
      checkboxInput('header', 'Header', TRUE),
      
      radioButtons('sep', 'Separator',
                   c(Comma=',',
                     Semicolon=';',
                     Tab='\t'),
                   'Comma'),
      radioButtons('quote', 'Quote',
                   c(None='',
                     'Double Quote'='"',
                     'Single Quote'="'"),
                   'Double Quote'),
      
      selectInput("v1", "Which one is the first variable?",""),
      
      selectInput("v2", "Which one is the second variable?",""),
      
      radioButtons('VarCheck', 'Are the variances of two samples the same?',
                   c('Yes'= "y",
                     'No' = "n"),
                   'Yes')
    ),
    
    mainPanel(
      tabsetPanel(
##        tabPanel("Documentation",includeMarkdown("2TT_User_Guide.md")),
        tabPanel("Show Data Summary",verbatimTextOutput('summary')),
        tabPanel("Box Plot", plotOutput("plot")),
        tabPanel("t-Test Summary",verbatimTextOutput('Tsummary'))
      )
    )
  )
))