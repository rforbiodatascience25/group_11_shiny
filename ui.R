library("shiny")
library("bslib")

# Define the User Interface (Frontend)
ui <- fluidPage(
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("Virtual Gene Generator"),
      style = "background-color: #f0f0f0; padding: 15px;"
    )
  ),
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("About"),
      helpText("a program that generates random DNA")
    )
  ),
  layout_columns(
    col_widths = 12,
    card(
      card_header("virtual gene generator"),
      sliderInput(inputId = "n_bases",
                  label = "Number of bases:",
                  min = 1,
                  max = 60,
                  value = 30),
      layout_columns(
        col_widths = c(3,3,3,3),
        numericInput(inputId =  "A_propability",
                     label = "propability of an A",
                     min = 0,
                     max = 100,
                     value = 25),
        numericInput(inputId =  "T_propability",
                     label = "propability of an T",
                     min = 0,
                     max = 100,
                     value = 25),
        numericInput(inputId =  "C_propability",
                     label = "propability of an C",
                     min = 0,
                     max = 100,
                     value = 25),
        numericInput(inputId =  "G_propability",
                     label = "propability of an G",
                     min = 0,
                     max = 100,
                     value = 25)
        
      )
    )
  ),
  layout_columns(
    col_widths = 12,
    card(
      card_header("virtual gene output"),
      mainPanel(
        verbatimTextOutput(outputId = "dna")
      )
    )
  ),
  layout_columns(
    col_widths = 12,
    card(
      card_header("virtual gene transcription"),
      mainPanel(
        verbatimTextOutput(outputId = "rna")
      )
    )
  ),
  layout_columns(
    col_widths = 12,
    card(
      card_header("virtual protein"),
      mainPanel(
        verbatimTextOutput(outputId = "aa")
      )
    )
  )
)
