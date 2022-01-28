context("running mean")

test_that("running mean stops when it should", {

  expect_error( runningmean(0, c(0,0)) )

})