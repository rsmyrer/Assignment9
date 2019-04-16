#ui

dashboardPage(
  dashboardHeader(
  title = "Iris Data"
  ),


#Sepal Length

  dashboardSidebar(
    sliderInput(
      "SLength",
      "Sepal Length:",
      min = min(iris$Sepal.Length), 
      max = max(iris$Sepal.Length),
      value = min(iris$Sepal.Length)
    ),

#Sepal Width
    sliderInput(
      "SWidth",
      "Sepal Width:",
      min = min(iris$Sepal.Width),
      max = max(iris$Sepal.Width),
      value = min(iris$Sepal.Width)
    ),

#Petal Legth
    sliderInput(
          "Petal Length",
          "Petal Length:",
          min = min(iris$Petal.Length),
          max = max(iris$Petal.Length),
          value = min(iris$Petal.Length)
    ), 
  
#Petal Width
    sliderInput(
      "Petal Width",
      "Petal Width:",
      min = min(iris$Petal.Width),
      max = max(iris$Petal.Width),
      value = min(iris$Petal.Width)
    )

  ),

  dashboardBody(
    fluidRow(
      box(plotOutput("scatter"), width = 10),
      box(DT::dataTableOutput('prediction'), width = 2)
    ),
    fluidRow(
      box(plotOutput("sLengthDensity"), width = 6),
      box(plotOutput("sWidthDensity"), width = 6)
    ),
    fluidRow(
      box(plotOutput("pLengthDensity"), width = 6),
      box(plotOutput("pWidthDensity"), width = 6)
    )
  )
)

