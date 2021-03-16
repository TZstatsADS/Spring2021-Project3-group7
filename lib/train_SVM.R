###########################################################
### Train a classification model with training features ###
###########################################################

svm_train <- function(features, labels, w = NULL, cost=1){
  ### Train an SVM model using processed features from training images
  
  ### Input:
  ### - a data frame containing features and labels
  ### - a parameter list
  ### Output: trained model
  
  library(e1071)
  
  svm_model <- svm(labels ~ ., 
                   data = features,
                   kernel = "linear",
                   weights = w,
                   cost = cost) 
  
  return(model = svm_model)
}