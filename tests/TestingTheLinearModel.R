library(testthat)



testthat::test_that("Testing linear model", {

  bedtest1 = 3
  bathtest1 = 2
  sizetest1 = 920

  testingthat1 = data.frame(bedtest1, bathtest1, sizetest1)

  # Normalizing
 testingthat1 <- normalize_input(testingthat1)


  testsolution1 <- predict_lm(testingthat1)


  #Unscalling the result

  #unscaling price
  unscaled_pricetest1 <- testsolution1*(max(cleaned_realtordata$price))+min(cleaned_realtordata$price)
  testresult1 <- 558879

  testthat::expect_equal(as.numeric(unscaled_pricetest1), as.numeric(testresult1), tolerance = 1e-5)


})
