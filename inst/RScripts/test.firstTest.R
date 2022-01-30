context("String length")

library(stringr)

test_that("str_length is number of characters", {
  expect_equal(str_length("a"), 1)
  expect_equal(str_length("ab"), 2)
  expect_equal(str_length("abc"), 3)
})
#> Test passed 🥳

# test_that("running mean with constant x or position", {
#   
#   n <- 100
#   x <- rnorm(n)
#   pos <- rep(0, n)
#   expect_equal( runningmean(pos, x, window=1), rep(mean(x), n) )
#   
#   mu <- mean(x)
#   x <- rep(mu, n)
#   pos <- runif(n, 0, 5)
#   expect_equal( runningmean(pos, x, window=1), x)
#   
# })