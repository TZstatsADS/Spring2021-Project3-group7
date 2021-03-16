########################################
### Classification with testing data ###
########################################

svm_test <- function(model, features, pred.type){
  
  ### make predictions
  pred <- predict(model, features, type = pred.type)
  return(pred)
}
