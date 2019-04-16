#model script

IrisNames <- c("Setosa", "Versicolor", "Viginica")

y = as.numeric(iris$Species) - 1

x <- select(iris, -Species)
x <- as.matrix(x)

params <- list(
  "objective" = "multi:softprob",
  "eval_metric" = "mlogloss",
  "num_class" = length(table(y)),
  "eta" = .05,
  "max_depth" = 3
)

cv.nround = 100
bst.cv <- xgb.cv(params = params, data = x, label = y, nfold = 5, 
                 missing = NA, prediction = TRUE, nrounds = cv.nround)


nrounds <- which (bst.cv$evaluation_log$test_mlogloss_mean == min(bst.cv$evaluation_log$test_mlogloss_mean))

IrisClassifier <- xgboost(params = params, 
                          data = x, 
                          label = y,
                          missing = NA,
                          nrounds = nrounds)

