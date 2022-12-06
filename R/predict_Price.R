#' Function that combines all the other functions for a human readable result
#'
#' @param x user data in a dataframe
#' @returns a dataframe with predicted prices

#' @examples
#' example_user_data <- data.frame(c(3),c(2),c(1100))
#' predict_Price(example_user_data)
#' @export

predict_Price <- function(user_data) {
  nor_User_data <- normalize_input(user_data)
  lm_price <- predict_lm(nor_User_data)
  nn_price <- predict_nn((nor_User_data))
  lm_price <- unscale_price(lm_price)
  nn_price <- unscale_price(nn_price)
  prices <- data.frame(lm_price, nn_price)
  return (prices)

}
