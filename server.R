library("shiny")
library("bslib")

# Load needed functions
source(file = "app_functions.R")

# Define the Server (Backend)
server <- function(input, output) {
  DNA <- reactive({gene_dna(length = input$n_bases,
                            base_probs = c(input$A_propability/100,
                                           input$T_propability/100,
                                           input$C_propability/100,
                                           input$G_propability/100))}) 
  
  output$dna <- renderText({
    DNA()
  })
  output$rna <- renderText(
    {transcribe_dna(DNA())})
  output$aa <- renderText(
    {translate_rna(
      transcribe_dna(DNA()
      )
    )}
  )
}
