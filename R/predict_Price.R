#' Function that combines all the other functions for a human readable result
#'
#' @param x user data in a dataframe
#' @returns a dataframe with predicted prices

#' @examples  predict_Price(User_data)

predict_Price <- function(user_data) {
  nor_User_data <- normalize_input(user_data)
  lm_price <- predict_lm(nor_User_data)
  nn_price <- predict_nn((nor_User_data))
  lm_price <- unscale_price(lm_price)
  nn_price <- unscale_price(nn_price)
  prices <- data.frame(lm_price, nn_price)
  return (prices)

}
