library("shiny")
ui  = fluidPage(
  #"Hello World"
  sliderInput(inputId="num", label="choose a number", value=25, min=1, max=100),
  plotOutput("hist")
  )
server = function(input, output){
  output$hist = renderPlot({
    title = paste0(input$num, " Random Numbers")
    hist(rnorm(input$num), main=title)
    })
  }
shinyApp(ui=ui, server=server)