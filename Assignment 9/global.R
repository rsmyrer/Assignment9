#global

library(shiny)
library(shinydashboard)
library(ggplot2)
library(tidyverse)
library(DT)
library(xgboost)

source('inst/modelscript.r')

makePrediction <- function(sl, sw, pl, pw) {
  prediction <- predict(IrisClassifier, matrix(c(sl, sw, pl, pw), nrow = 1))
  mat <- matrix(prediction)
  rownames(mat) <- IrisNames
  colnames(mat) <- c("Probability")
  mat
}
