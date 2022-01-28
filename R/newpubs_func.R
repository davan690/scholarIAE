# https://scholar.google.com/citations?user=iaAT-VQAAAAJ&hl=en
# install.packages("Rtools")
library(tidyverse)
library(scholar)


# not working
# scholar::get_profile("https://scholar.google.com/citations?user=iaAT-VQAAAAJ&hl=en")

IAEscholarID <- "iaAT-VQAAAAJ"

# check data with google scholar
datIAEgeneral <- scholar::get_profile(id = IAEscholarID)
datIAEtitles <- scholar::get_publications(id = IAEscholarID)

## savedata with date and time
# paste-time and date for weekly update
# write_rds(datIAEgeneral, here::here("data/datIAEgeneral_newjan2022.RDS"))
# write_rds(datIAEtitles, here::here("data/datIAEtitles_newjan2022.RDS"))
#

