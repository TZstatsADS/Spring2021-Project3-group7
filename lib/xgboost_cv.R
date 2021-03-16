cv_xgboost <- function(init_params, features,labels,  rounds = 50, K = 5){
  
  
  xgbcv <- xgb.cv(params = init_params, 
                  data = features,  label = labels,
                  nrounds = rounds, 
                  nfold = K, showsd = T, stratified = T, 
                  print_every_n = 10, 
                  early_stop_round = 20, maximize = F,
                  metrics = "error")
  return(xgbcv$params[c(1, 3:11)])
}
