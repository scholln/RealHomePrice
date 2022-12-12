library(testthat)



testthat::test_that("Testing linear model", {

  bedtest4 = 3
  bathtest4 = 2
  sizetest4 = 920

  testingthat4 = data.frame(bedtest4, bathtest4, sizetest4)

  # Normalizing
  testingthat4 <- normalize_input(testingthat4)
  testsolution4 <- 558879

  test4prediction <- predict_lm(testingthat4)

 finaltest4answer <- unscale_price(test4prediction)

 testthat::expect_equal(as.numeric(finaltest4answer), as.numeric(testsolution4), tolerance = 1e-5)

})
