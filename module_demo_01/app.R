library(shiny)
library(ggplot2)
library(dplyr)
data(mtcars)
mtcars_id <- "mtcars_mod"
mtcars <- data.frame(mtcars)
mtcars_var_choices = colnames(mtcars)

#load the module code
source("modules.R")

ui <- fluidPage(
    #select_scatter_ui is how we initialize the ui module with id "mtcars"
    select_scatter_ui(id = mtcars_id, var_choices = mtcars_var_choices)
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    #callModule on select_scatter_server with id "mtcars"
    callModule(select_scatter_server, mtcars_id, data=mtcars)
}

# Run the application 
shinyApp(ui = ui, server = server)
