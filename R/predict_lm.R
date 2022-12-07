#' Function that predicts home price using linear model
#'
#' @param x Normalized user data in a dataframe, numeric values
#' @returns unscaled predicted price
#'
#' @export

predict_lm <- function(x) {
  linear_model_fit <- load("linear_model_fit.R")
  predict(linear_model_fit, x)
}
