
####################################################################
### Train an XGBoost classification model with training features ###
####################################################################

xgboost_train <- function(features, labels, params, rounds = 50){
  model <- xgboost(data = features, label = labels, params = params, nrounds = rounds, objective = "binary:logistic")
  return(model)
}

