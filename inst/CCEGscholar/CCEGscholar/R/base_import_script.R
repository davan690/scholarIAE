#rscholar centre page dynamics
#Anthony Davidson
#02072021

#libraries
library(scholar)
library(tidyverse)

# import data
scholar::get_profile(id = "https://scholar.google.com/citations?hl=en&user=iaAT-VQAAAAJ&view_op=list_works&gmla=AJsN-F7JMW2CqUgPAc0feq9kZmZpw1-R-RWZXoLbY1qQ7Q45X4_46Ihu802HOLsY1LI3K9Nzz4SO-ixKVae1m-zTXGMuMzFxJjt8tP8USIkLpfVXO-rjFpk")

# Save as dataframe
dat <- scholar::get_profile(id = "https://scholar.google.com/citations?hl=en&user=iaAT-VQAAAAJ&view_op=list_works&gmla=AJsN-F7JMW2CqUgPAc0feq9kZmZpw1-R-RWZXoLbY1qQ7Q45X4_46Ihu802HOLsY1LI3K9Nzz4SO-ixKVae1m-zTXGMuMzFxJjt8tP8USIkLpfVXO-rjFpk")

# Wrangling
library(lubridate)
glimpse(dat)

datT <- as_tibble(dat$coauthors)

# Add to dataset with date
dat$EventDate <- Sys.time()

##save data
# write.csv(dat, here::here("data/baseData.csv"))

#read in old data
baseDat <- read_csv(here::here("data/baseData.csv"))
