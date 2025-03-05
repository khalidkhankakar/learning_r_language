# Load the Shiny package
library(shiny)

# Define UI (User Interface)
ui <- fluidPage(
  titlePanel("Shiny"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("num", "Choose a Number:", min = 1, max = 100, value = 50)
    ),
    mainPanel(
      textOutput("result")
    )
  )
)

# Define Server Logic
server <- function(input, output) {
  output$result <- renderText({
    paste("You selected:", input$num)
  })
}

# Run the App
shinyApp(ui = ui, server = server)
