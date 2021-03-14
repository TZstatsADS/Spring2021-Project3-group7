test_gbm=function(model,features,n.trees,shrinkage,pred.type){
  res <- predict(model, newdata = data.frame(features),n.trees,shrinkage,type = pred.type)
  pred=apply(res,1,which.max)
  return(pred)
}
