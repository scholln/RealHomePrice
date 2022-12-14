% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict_Price.R
\name{predict_Price}
\alias{predict_Price}
\title{Produces house price prediction in dollars}
\usage{
predict_Price(x)
}
\arguments{
\item{x}{user data in a dataframe}
}
\value{
a dataframe with predicted prices
}
\description{
This function takes in a dataframe of 3 values
formatted as \code{data.frame(c(bed), c(bath), c(house_size))}. and
returns a data frame of two house prices, the first using a multiple linear
regression model and the other using a neural net.
}
\details{
bed and bath values are simply the number of beds and baths
a house has. The house_size (third value in your dataframe) is measured
in square feet.
}
\examples{
example_user_data <- data.frame(c(3),c(2),c(1100))
predict_Price(example_user_data)
}
