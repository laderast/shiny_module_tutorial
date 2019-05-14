# Shiny Module Tutorial

Demonstration of shiny modules in action. Work in Progress.

To start, open the `shiny_module_tutorial.rpoj` in RStudio and open up the `shiny_modules.Rmd` RMarkdown file.

There are individual apps showing different ways to utilize modules in the individual `module_demo` folders.

# To do

I need to add illustrations that clarify the concepts of namespaces. Would love any ideas about this. Please open an issue with suggestions.

Also, I need to add about how modules can communicate with each other by returning reactives, and using shiny's `updateXInput()` functions (such as `updateSelectInput()` and `updateNumericInput`) to update the ui elements in response to these reactives. Design patterns would be gratefully appreciated and attributed.
