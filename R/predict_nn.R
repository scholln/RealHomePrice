#' Function that predicts home price using neural net
#'
#' @param x Normalized user data in a dataframe
#' @returns unscaled predicted price

#' @examples predictedPrice <- predict_nn(normalized_User_data)
#' @export

predict_nn <- function(nor_User_data) {
  neural_net_fit <- readRDS("neural_net_fit.rds")
  predict(neural_net_fit, nor_User_data)
}
