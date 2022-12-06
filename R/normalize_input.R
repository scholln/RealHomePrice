#' Function that normalizes the userinput using -min/max
#'
#' @param x  user data in a dataframe
#' @returns dataframe of normalized user input

#' @examples nor_User_data <- normalize_input(user_data)
#' @export


normalize_input <- function(user_Data) {
  bed = (user_Data[1,1]-min(cleaned_realtordata$bed))/(max(cleaned_realtordata$bed))
  bath = (user_Data[1,2]-min(cleaned_realtordata$bath))/(max(cleaned_realtordata$bath))
  house_size = (user_Data[1,3]-min(cleaned_realtordata$house_size))/(max(cleaned_realtordata$house_size))
  nor_User_data <- data.frame(bed, bath, house_size)
  return(nor_User_data)
}
