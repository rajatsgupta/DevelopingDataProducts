library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("MT Cars Dataset analysis"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("cylinders",
                  "Number of cylinders:",
                  min = 4, step=2,
                  max = 8,
                  value = 4),
    
      selectInput("dataset", "Choose a transmission type:", 
                  choices = c("Automatic Transmission", "Manual Transmission")),
      
      helpText("
          This simple application will provide the statistical information of the cars 
          present in the MT Cars dataset. Choose the number of cylinders between(4,6 and 8) and the 
          corresponding transmission type (Automatic or Manual) to get the results computed from the server and rendered in the 2 tabs.
        ")
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(      
      tabsetPanel(type = "tabs",                   
                  tabPanel
                  (
                      "Summary of miles per gallon", 
                      br(),
                      verbatimTextOutput("summary"),
                      br(),
                      helpText("Standard deviation"),
                      verbatimTextOutput("sd"),
                      br(),
                      tableOutput("view")
                  ), 
                  tabPanel("Plot", plotOutput("plot"))
                  
                  
    )
  )
))
)