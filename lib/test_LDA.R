###########################################################
### Make predictions with test features ###
###########################################################

test_lda <- function(model, dat_test){
  library(MASS)
  pred <- predict(model, dat_test)
  pred <- pred$class
  return(pred)
}

# This function is not necessary.
# We put it here just to show the structure.