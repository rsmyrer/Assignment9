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
      min = 0, max = 50, value = 1
    ),

#Sepal Width
    sliderInput(
      "SWidth",
      "Sepal Width:",
      min = 0, max = 50, value = 1
    ),

#Petal Legth
    sliderInput(
          "Petal Length",
          "Petal Length:",
          min = 0, max = 50, value = 1
    ), 
  
#Petal Width
    sliderInput(
      "Petal Width",
      "Petal Width:",
      min = 0, max = 50, value = 1
    )

  ),
  dashboardBody(
    fluidRow()
  )
)


