context("datImport")

# test_that(desc = "sysdata is present",
#           )
test_that("expected cases are properly extracted", {
  testStrings <- c("R/sysdata.rda")
  expectedOutput <- c("R/sysdata.rda")
  expect_equal(datImport(testStrings), expectedOutput)
})
# 
# ## code to prepare `datIAEgeneral` dataset goes here
# set.seed(12345)
# 
# #libraries needed
# library(tidyverse)
# library(scholar)
# library(here)
# 
# #set working directory to package
# # setwd(here::here())
# 
# #Check in correct location
# # getwd()
# RDSpath <- "inst/extdata/datIAEgeneral_newjan2022.RDS"
# 
# ##check name is $name
# # [1] "Centre for Conservation Ecology and Genomics"