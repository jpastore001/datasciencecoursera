library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Iris Scatter Plots"),
  
  # Sidebar with controls to select a dataset and specify the
  # number of observations to view
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset1", "Choose a Sepal Measure:", 
                  choices = c("Sepal Length", "Sepal Width")),
      
      selectInput("dataset2", "Choose a Petal Measure:", 
                  choices = c("Petal Length", "Petal Width"))
    ),
    
    # Main Scatter Plot
    mainPanel(
      
      plotOutput("myplot")
    )
  )
))