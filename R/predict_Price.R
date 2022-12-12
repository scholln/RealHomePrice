#' Produces house price prediction in dollars
#'
#' @description This function takes in a dataframe of 3 values
#' formatted as `data.frame(c(bed), c(bath), c(house_size))`. and
#' returns a data frame of two house prices, the first using a multiple linear 
#' regression model and the other using a neural net. 
#' @param x user data in a dataframe
#' @returns a dataframe with predicted prices

#' @examples
#' example_user_data <- data.frame(c(3),c(2),c(1100))
#' predict_Price(example_user_data)
#' @details bed and bath values are simply the number of beds and baths
#' a house has. The house_size (third value in your dataframe) is measured
#' in square feet.
#' @export

predict_Price <- function(x) {
  nor_User_data <- normalize_input(x)
  lm_price <- predict_lm(nor_User_data)
  nn_price <- predict_nn((nor_User_data))
  lm_price <- unscale_price(lm_price)
  nn_price <- unscale_price(nn_price)
  prices <- data.frame(lm_price, nn_price)
  return (prices)

}
