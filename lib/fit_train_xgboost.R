
####################################################################
### Train an XGBoost classification model with training features ###
####################################################################

xgboost_train <- function(features, labels, params, rounds = 50, spec_weights){
  model <- xgboost(data = features, label = labels, params = params, nrounds = rounds, objective = "binary:logistic", weight = spec_weights)
  return(model)
}

