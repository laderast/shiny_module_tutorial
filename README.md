# Shiny Module Tutorial

Demonstration of shiny modules in action. Work in Progress.

Slides are here: https://laderast.github.io/shiny_module_tutorial/#1

<iframe width="560" height="315" src="https://www.youtube.com/embed/K1WrY9tOGB0?start=322" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

To start: clone or download this repository (using the green button on the top right), unzip if necessary, and open the `shiny_module_tutorial.rproj` in RStudio and open up the `shiny_modules.Rmd` RMarkdown file.

There are individual apps showing different ways to utilize modules in the individual `module_demo` folders. More to be added soon.

# To do

I need to add illustrations that clarify the concepts of namespaces. Would love any ideas about this. Please open an issue with suggestions.

Also, I need to add about how modules can communicate with each other by returning reactives, and using shiny's `updateXInput()` functions (such as `updateSelectInput()` and `updateNumericInput`) to update the ui elements in response to these reactives. Design patterns would be gratefully appreciated and attributed.
