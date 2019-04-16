#server

server <- function(input, output) {
  output$prediction <- DT::renderDataTable({
    DT::datatable(makePrediction(input$SLength, input$SWidth, input$PLength, input$PWidth),
                  list(order = list(1, 'desc'),
                       paging = FALSE,
                       searching = FALSE)
    )
  })
  
  output$scatter <- renderPlot({
    ggplot(data=iris, aes(x = Sepal.Length, y = Sepal.Width)) +
      geom_point(aes(color = Species), size = 4) +
      scale_color_manual(values=c("#CC99CC", "#330066", "#6600FF")) +
      geom_point(aes(x=input$SLength, y=input$SWidth), color="red", size = 5)
  })
  
  output$sLengthDensity <- renderPlot({
    ggplot(data=iris, aes(x=Sepal.Length, fill=Species)) +
      geom_density(stat="density", alpha=I(0.2)) +
      ylab("Density") +
      xlab("Sepal Length") + 
      geom_vline(xintercept=input$SLength, color="red", size = 1)
  })
  
  output$sWidthDensity <- renderPlot({
    ggplot(data=iris, aes(x=Sepal.Width, fill=Species)) +
      geom_density(stat="density", alpha=I(0.2)) +
      ylab("Density") +
      xlab("Sepal Width") +
      geom_vline(xintercept=input$SWidth, color="red", size = 1)
  })
  
  output$pLengthDensity <- renderPlot({
    ggplot(data=iris, aes(x=Petal.Length, fill=Species)) +
      geom_density(stat="density", alpha=I(0.2)) +
      ylab("Density") +
      xlab("Petal Length") +
      geom_vline(xintercept=input$PLength, color="red", size = 1)
  })
  
  output$pWidthDensity <- renderPlot({
    ggplot(data=iris, aes(x=Petal.Width, fill=Species)) +
      geom_density(stat="density", alpha=I(0.2)) +
      ylab("Density") +
      xlab("Petal Width") +
      geom_vline(xintercept=input$PWidth, color="red", size = 1)
  })
  
  
  
}
  

