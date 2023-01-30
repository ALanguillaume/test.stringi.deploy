library(shiny)
library(stringr)

ui <- fluidPage(
  h1("Test stringr deploy on Connect 2")
)

server <- function(input, output) {
}

shinyApp(ui = ui, server = server)
