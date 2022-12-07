#' Function that predicts home price using linear model
#'
#' @param x Normalized user data in a dataframe, numeric values
#' @returns unscaled predicted price
#'
#' @examples
#' example_normalized_user_data <- data.frame(c(#INSERT),c(#NORM),c(#DATA))
#' predict_lm(example_normalized_user_data)
#' @export

predict_lm <- function(x) {
  linear_model_fit <- readRDS("pricemodel.rds")
  predict(linear_model_fit, x)
}
