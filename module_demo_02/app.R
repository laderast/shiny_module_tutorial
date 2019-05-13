#Example 2 - using multiple instances of a module

library(shiny)
library(ggplot2)
library(dplyr)

data(mtcars)
mtcars_id <- "mtcars_mod"
mtcars <- data.frame(mtcars)
mtcars_var_choices = colnames(mtcars)

data(iris)
iris_id <- "iris_mod"
iris_var_choices <- colnames(iris)

#load the module code
source("modules.R")

ui <- fluidPage(
    #select_scatter_ui is how we initialize the ui module with id "mtcars"
    select_scatter_ui(id = mtcars_id, var_choices = mtcars_var_choices),
    #use select_scatter_ui with iris data
    select_scatter_ui(id = iris_id, var_choices = iris_var_choices)
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    #callModule on select_scatter_server with mtcars_id
    callModule(select_scatter_server, mtcars_id, data=mtcars)
    #callModule on select_scatter_server with iris_id
    callModule(select_scatter_server, iris_id, data=iris)
}

# Run the application 
shinyApp(ui = ui, server = server)
