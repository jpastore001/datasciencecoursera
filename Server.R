library(shiny)
library(datasets)

library(ggplot2)

#Define a function to plot passed string variables in ggplot

myplotfunct = function(df, x_string, y_string) {
  ggplot(df, aes_string(x = x_string, y = y_string)) + geom_point()
}

shinyServer(function(input, output) {
  
  # Pass Sepal Selection
  datasetInput1 <- reactive({
    switch(input$dataset1,
           "Sepal Length" = "Sepal.Length",
           "Sepal Width" = "Sepal.Width")
  })
  
  # Pass Petal Selection
  datasetInput2 <- reactive({
    switch(input$dataset2,
           "Petal Length" = "Petal.Length",
           "Petal Width" = "Petal.Width")
  })
  
  # Build Dynamic Plot
  output$myplot = renderPlot({myplotfunct(iris, datasetInput1(), datasetInput2())})
  
})
