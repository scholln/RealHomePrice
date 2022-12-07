#' Function that predicts home price using linear model
#'
#' @param x Normalized user data in a dataframe
#' @returns unscaled predicted price

#' @examples predictedPrice <- perdict_lm(normalized_User_data)
#' @export

predict_lm <- function(nor_User_data) {
  linear_model_fit <- readRDS("pricemodel.rds")
  predict(linear_model_fit, nor_User_data)
}
