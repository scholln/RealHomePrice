testthat::test_that("Testing linear model", {

  bedtest2 = 8
  bathtest2 = 4
  sizetest2 = 3000

  testingthat2 = data.frame(bedtest2, bathtest2, sizetest2)

  testsolution2 <- predict(nn, testingthat2)


  #Unscalling the result
  e <- testsolution2[1]

  #unscaling price
  unscaled_pricetest2 <- e*(max(cleaned_realtordata$price))+min(cleaned_realtordata$price)
  testresult2 <- 592804

  testthat::expect_equal(as.numeric(unscaled_pricetest2), as.numeric(testresult2), tolerance = 1e-5)


})
