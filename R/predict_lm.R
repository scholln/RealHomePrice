#' Function that predicts home price using linear model
#'
#'@name predict_lm
#' @param x Normalized user data in a dataframe, numeric values
#' @returns unscaled predicted price
#'
#' @export

load("../RealHomePrice/data/train_data.rdata")

linear_model_fit <- lm(price~bed+bath+house_size, data =train_data )
summary(linear_model_fit)

predict_lm <- function(nor_User_data, linear_model_fit1 = linear_model_fit) {
  if (class(linear_model_fit) != "lm"
  ) stop("This function needs an LM model")
  predict(linear_model_fit, nor_User_data)
}

