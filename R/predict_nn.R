#' Function that predicts home price using neural net
#'
#' @param x Normalized user data in a dataframe
#' @returns unscaled predicted price
#'
#' @export

predict_nn <- function(x) {
  neural_net_fit <- load("pricemodel.R")
  predict(neural_net_fit, x)
}
