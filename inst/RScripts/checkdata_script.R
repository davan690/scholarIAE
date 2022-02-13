# Anthony Davidson
# IAE publication report (weekly check)
# Oct 2021

#libraries needed
library(tidyverse)
library(scholar)
library(here)

##read latest general data
datIAEgeneral <- read_rds(here::here("inst/extdata/datIAEgeneral_newjan2022.RDS"))
datIAEtitles <- read_rds(here::here("inst/extdata/datIAEtitles_newjan2022.RDS"))

#check for updates
datIAEgeneralPAST <- read_rds(here::here("inst/extdata/datIAEgeneral_new.RDS"))
datIAEtitlesPAST <- read_rds(here::here("inst/extdata/datIAEtitles_new.RDS"))


#compare changes
# glimpse(datIAEgeneral)
# glimpse(datIAEtitles)
# glimpse(datIAEgeneralPAST)
# glimpse(datIAEtitlesPAST)

##ggplot new publications?

datNew <- datIAEtitles %>%
            select(cid, year, cites, author, title) %>%
              filter(year >=100)

# glimpse(datNew)
# head(datNew)

p1 <- ggplot(datNew, aes(x = year)) +
  geom_histogram(stat = "count")

# datNew$year

p2 <- ggplot(datNew, aes(x = year, y = cites)) +
  geom_point()

## One random one..
datNew2 <- datIAEtitles %>%
  select(cid, year, cites, author, title) %>%
  filter(year >=2019) 
  

# glimpse(datNew2)
### Add ones that we have shared in the future....
###ARD>>>>

###freshwater lab


