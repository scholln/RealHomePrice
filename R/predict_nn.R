#' Function that predicts home price using neural net
#'
#'@name predict_nn
#' @param x Normalized user data in a dataframe
#' @returns unscaled predicted price
#'
#' @export
#' @import neuralnet

library(neuralnet)
load("../RealHomePrice/data/neuralmodel3.Rda")

predict_nn <- function(x) {
  predict(neuralmodel, x)
}
