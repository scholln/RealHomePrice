#' Function that unscales the predicted price
#'
#' @param x  predicted price by the model
#' @returns unscaled prediction

#' @examples unscaled_price <- unscale_price(pricelm)
#' @export
unscale_price <- function(price) {
  price*(max(cleaned_realtordata$price))+min(cleaned_realtordata$price)
}
