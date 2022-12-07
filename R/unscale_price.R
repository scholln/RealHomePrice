#' Function that unscales the predicted price
#'
#' @param x  predicted price by the model
#' @returns unscaled prediction
#' 
#' @export
unscale_price <- function(x) {
  x*(max(cleaned_realtordata$price))+min(cleaned_realtordata$price)
}
