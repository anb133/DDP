library(shiny)
library(datasets)
data<- WorldPhones
colnames(data) <- c("North America", "Europe", "Asia", "South America", "Oceania", "Africa", "Middle America")

shinyServer(function(input, output) {
  
  mean1<- reactive(
    as.numeric(round(mean(data[,input$region])*1000))
  )
  reg1<- reactive({
    
  })
  
  output$phonePlot <- renderPlot({
    barplot(data[,input$region]*1000, 
            main=input$region,
            ylab="Number of Telephones",
            xlab="Year",
            col = heat.colors(7))
    
  })

  output$mean <- renderText({
    if(input$plot1){
    mean1()}
  })
})


