#' Function that unscales the predicted price
#'
#' @param x  predicted price by the model
#' @returns unscaled prediction

#' @examples 
#' example_normalized_user_price <- data.frame(c(#INSERT PRICE))
#' unscale_price(example_normalized_user_price)
#' @export
unscale_price <- function(x) {
  x*(max(cleaned_realtordata$price))+min(cleaned_realtordata$price)
}
