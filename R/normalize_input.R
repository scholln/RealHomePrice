#' Function that normalizes the userinput using -min/max
#'
#' @param x  user data in a dataframe
#' @returns dataframe of normalized user input
#' @examples
#' example_user_data <- data.frame(c(3),c(2),c(1100))
#' normalize_input(example_user_data)
#' @export


normalize_input <- function(x) {
  bed = (x[1,1]-min(cleaned_realtordata$bed))/(max(cleaned_realtordata$bed))
  bath = (x[1,2]-min(cleaned_realtordata$bath))/(max(cleaned_realtordata$bath))
  house_size = (x[1,3]-min(cleaned_realtordata$house_size))/(max(cleaned_realtordata$house_size))
  nor_User_data <- data.frame(bed, bath, house_size)
  return(nor_User_data)
}
