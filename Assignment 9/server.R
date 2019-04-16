#server

server <- function(input, output) {
  output$prediction <- DT::renderDataTable({
    DT::datatable(makePrediction(input$SLength, input$SWidth, input$PLength, input$PWidth),
                  list(order = list(1, 'desc'),
                       paging = FALSE,
                       searching = FALSE)
    )
  })
}
  

