library(shiny)

shinyUI(
  navbarPage("Shiny Application",
             tabPanel("Report",
                      fluidPage(
                        titlePanel( textOutput("title1")),
                        sidebarLayout(
                          sidebarPanel(
                            textInput("title","Title:","Graph"),
                            selectInput("variable", "Variable:",
                                        c("Number of cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp"
                                          
                                        ))
                            
                            
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            plotOutput("mpgBoxPlot")
                            
                          )
                        )
                      )
             ),
             
             tabPanel("Documentation Guide",
                      h2("Shiny Application Guide Documentation"),
                      hr(),
                      h3("Description"),
                      helpText("You can make the changes to the graph by selecting the type of dimension."),
                      h3("Dimension Choices"),
                      
                      
                      p("  [, 1]	 cyl	 Number of cylinders"),
                      p("  [, 2]	 disp	 Displacement (cu.in.)"),
                      p(""),
                      p("The title can be change from the text box"),
                      p("The code is located at https://github.com/chualinkiat/Shinyslidy/")
                      
                      
             )
             
  )
)