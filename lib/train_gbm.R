#load library
if(!require("gbm")){
  install.packages("gbm")
}
library(gbm)
train_gbm = function(features,labels,n.trees,shrinkage,w=NULL){
  model=gbm.fit(x=features, y=labels, distribution ="multinomial", w=w, n.trees=n.trees,interaction.depth=2,shrinkage=shrinkage, verbose=FALSE)
return(model)
}