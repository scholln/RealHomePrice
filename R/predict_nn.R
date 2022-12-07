#' Function that predicts home price using neural net
#'
#' @param x Normalized user data in a dataframe
#' @returns unscaled predicted price
#'
#' @examples
#' example_normalized_user_data <- data.frame(c(#INSERT),c(#NORM),c(#DATA))
#' predict_nn(example_normalized_user_data)
#' @export

predict_nn <- function(x) {
  neural_net_fit <- readRDS("neural_net_fit.rds")
  predict(neural_net_fit, x)
}
