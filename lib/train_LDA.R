
###########################################################
### Train LDA model###
###########################################################

train_lda <- function(feature_df = pairwise_data, par = NULL){

  library(MASS)
  
  model <- lda(emotion_idx~., data = feature_df)
  
  return(model)
}