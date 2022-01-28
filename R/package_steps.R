# BuildPackage infostat_bin
# Plot number of papers per researcher
#Anthony Davidson
#2022

#libraries needed
library(tidyverse)
library(scholar)
library(here)

##read latest general data
# datIAEgeneral <- read_rds(here::here("data/datIAEgeneral.RDS"))
# datIAEtitles <- read_rds(here::here("data/datIAEtitles.RDS"))

#check for updates


#compare changes
# glimpse(datIAEgeneral)
glimpse(datIAEtitles)


##ggplot new publications?

datNew <- datIAEtitles %>%
  select(cid, year, cites, author, title) %>%
  filter(year >=2019) #%>%
    # mutate()

datR <- head(datNew)
before <- data.frame(attr = c(1,30,4,6), type=c('foo_and_bar','foo_and_bar_2'))
out <- strsplit(as.character(datR$author),',')

# i = 1
# for(i in 1:length(out)) {
#
# as_tibble(out[[i]], .name_repair = ~ c("FirstA", "SecondA", "ThirdA", "FourthA", "FifthA", "SixthA"))
#
# }


# a <- do.call(rbind, out)

# author_counts <- data.frame(datNew$cites, datNew$year, datNew$author, do.call(rbind, out))

#convert to better dataframe

library(tibble)

# packageVersion("tibble")
#> [1] '1.4.99.9005'

df <- list(a = 1, a = 2)
# as_tibble(df)
#> Error: Column name `a` must not be duplicated.
#> Use .name_repair to specify repair.

as_tibble(df, .name_repair = ~ c("A", "B"))
#> # A tibble: 1 x 2
#>       A     B
#>   <dbl> <dbl>
#> 1     1     2

tibble(1, 2)
#> # A tibble: 1 x 2
#>     `1`   `2`
#>   <dbl> <dbl>
#> 1     1     2

tibble(1, 2, .name_repair = ~ c("A", "B"))
#> # A tibble: 1 x 2
#>       A     B
#>   <dbl> <dbl>
#> 1     1     2
#>
#plot
# ggplot(author_counts) +
#   geom_histogram(aes(x = X2),stat="count")
# # datNew$type_1 <- gsub("^.+_and_", "", datNew$author)
# # before$type_2 <- gsub("^.+_and_", "", before$type)
# # before$type <- NULL
#
# # glimpse(datNew)
# # head(datNew)

ggplot(datNew, aes(x = year)) +
  geom_histogram(stat = "count")

ggplot(datNew, aes(x = cites)) +
  geom_histogram(stat = "count")

# filter(datIAEtitles, year == 2016)

ggplot(datIAEtitles, aes(x = journal)) +
  geom_histogram(stat = "count") +
  facet_wrap(~year, scales = "free") +
  theme_classic()

ggplot(datNew, aes(x = cites)) +
  geom_histogram(stat = "count")

# datNew$year

ggplot(datNew, aes(x = year, y = cites)) +
  geom_point()

## One random one..
datNew2 <- datIAEtitles %>%
  select(cid, year, cites, author, title) %>%
  filter(year >=2019)

# glimpse(datNew2)
### Add ones that we have shared in the future....
###ARD>>>>
