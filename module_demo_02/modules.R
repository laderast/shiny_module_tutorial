library(shiny)

select_scatter_ui <- function(id, var_choices){
  #initialize a namespace ID function - our key to our namespace
  ns <- NS(id)
  
  #return a tagList with our ui elements
  tagList(
    #note we have to wrap the input id in our namespace function ns()
    selectInput(inputId = ns("x_var"), label="Select X Variable", 
                choices=var_choices, selected = var_choices[1]),
    plotOutput(ns("scatter_plot"))
  )
}

select_scatter_server <- function(input, output, session, data) {
  
  output$scatter_plot <- renderPlot({
    #notice we don't use ns() here to refer to input objects - 
    #this is handled by callModule
    x_var <- input$x_var

    data %>% ggplot(aes_string(x=x_var)) +
      geom_histogram()
    
  })
}