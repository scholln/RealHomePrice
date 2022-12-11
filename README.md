# RealHomePrice 

`RealHomePrice` is a tool for homeowners and those looking to get into the housing market.  This package is aimed at providing accurate home pricing information to those at the consumer level without access to information that a real estate agent would have or a housing broker. The factors needed for the assessment are the following: 
* number of bedrooms in the home
* number of bathrooms in the home
* and size of the home

We use both a standard linear model and a neural net for advanced analysis for the computation of the home price.  We provide both answers as we believe multiple opinions or answers are optimal in the decsion making process.  We used the following [dataset](https://www.kaggle.com/discussions/general/333339#1833424) as a source for the model and neural net.

## How to install

simply run the following code chunk:

```
install.packages("devtools")
library(devtools)
install_github("scholln/RealHomePrice")
```

## Example code block

Here is a sample of the code we used for normalizing input from the user and later used in calculation for the model: 

```
normalize_input <- function(user_Data) {
  bed = (user_Data[1,1]-min(cleaned_realtordata$bed))/(max(cleaned_realtordata$bed))
  bath = (user_Data[1,2]-min(cleaned_realtordata$bath))/(max(cleaned_realtordata$bath))
  house_size = (user_Data[1,3]-min(cleaned_realtordata$house_size))/(max(cleaned_realtordata$house_size))
  nor_User_data <- data.frame(bed, bath, house_size)
  
  return(nor_User_data)
}
```
## Link to package Vignette
https://github.com/scholln/RealHomePrice/blob/main/Vignettes/package_vignette.Rmd

