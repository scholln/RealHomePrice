library(testthat)



testthat::test_that("Testing linear model", {


  bedtest5 = 3
  bathtest5 = 2
  sizetest5 = 920

  testingthat5 = data.frame(bedtest5, bathtest5, sizetest5)


 finaltest5 <- predict_Price(testingthat5)


  testlmanswer = 558878.6
  testnnanswer = 498128.8


  testsolution5 <- data.frame(testlmanswer, testnnanswer)


  testthat::expect_equal(as.numeric(testsolution5[1, "testlmanswer"]), as.numeric(finaltest5[1, "lm_price"]), tolerance = 1e-5)
  testthat::expect_equal(as.numeric(testsolution5[1, "testnnanswer"]), as.numeric(finaltest5[1, "nn_price"]), tolerance = 1e-5)


})
