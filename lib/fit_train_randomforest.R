#######################################################
### Train a Random Forest Model  ######################
#######################################################



rf_train <- function(feature_train, label_train, mtry, ntree){
  label_train_rf <- as.factor(label_train)
  model <- randomForest(x = feature_train, y = label_train_rf, mtry =  mtry, ntree =ntree)
  return(model)
}

