library(shiny)
library(datasets)

data<- WorldPhones
colnames(data) <- c("North America", "Europe", "Asia", "South America", "Oceania", "Africa", "Middle America")



shinyUI(fluidPage(

    titlePanel("Number of Telephones by World Regions"),
    sidebarLayout(
      sidebarPanel(
        selectInput("region", "Region:", choices=colnames(data)),
        hr(),
        checkboxInput("plot1", "Calculate the average number of telephones for the region", FALSE),
        hr(),
        helpText("Data from AT&T (1961) The World's Telephones.")
  ),
  
      mainPanel(
        tabsetPanel(
          tabPanel("Output",
                   plotOutput("phonePlot"),
                   hr(),
                   h3("The average number of telephones:"),
                   textOutput("mean")),
          tabPanel("Documentation",
                   h5("The application allows a user to see how the number of telephones
                      in a certain region changes in years 1951-1961. Also you can see the 
                      average number of telephones for the region over the given period."))
        )
       
   )
  
)
)
)