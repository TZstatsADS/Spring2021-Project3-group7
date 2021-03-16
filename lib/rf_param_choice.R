#########################################################################
### Optimize Random Forest Parameters for a Model  ######################
########################################################################



param_choice_rf <- function(feature_train, label_train, mtry, ntree){
  label_train_rf <- as.factor(label_train)
  model <- tuneRF(x = feature_train, y = label_train_rf, mtryStart = mtry, ntreeTry= ntree, stepFactor=2, improve=0.05,
                  trace=TRUE, plot=FALSE, doBest=TRUE)
  return(model)
}

