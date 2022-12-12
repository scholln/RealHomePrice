library(testthat)


testthat::test_that("Testing linear model", {


  bedtest3 = 3
  bathtest3 = 2
  sizetest3 = 920

  testingthat3 = data.frame(bedtest3, bathtest3, sizetest3)


 normalizedtest <- normalize_input(testingthat3)

  testsolution3 = data.frame(0.04255319, 0.02564103, 0.002049237)


  testthat::expect_equal(as.numeric(normalizedtest), as.numeric(testsolution3), tolerance = 1e-5)



})
