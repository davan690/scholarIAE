#setting up queires and downloading data from trove
# basic query
# http://api.trove.nla.gov.au/result?key=<INSERT KEY>&zone=<ZONE NAME>&q=<YOUR SEARCH TERMS>

# library(RJSONIO)
library(jsonlite)
library(XML)
library(plyr)
library(dplyr)

url_base="http://api.trove.nla.gov.au/v2/result?key="
api_key <- c("q6ikr8sqem7hbqib")
zone="&zone="
query="&q="
type="&encoding=json"

zone_name="newspaper"
question="koala%20"

dat1 <- jsonlite::fromJSON("https://api.trove.nla.gov.au/v2/result?key=q6ikr8sqem7hbqib&zone=book&q=piers%20koala")

koalabook_data <- as.data.frame(dat1$response$zone$records$work)

names(koalabook_data)
length(koalabook_data$id)
# data.frame(x = koalabook_data$contributor[1:length(koalabook_data$id)])

data.frame(koalabook_data$contributor[1:length(koalabook_data$id)][])

# koalabook_data %>%
#   group_by(contributor) %>%
#     summarise(contributor = contributor,
#               title = sum(unique(title)))

# https://api.trove.nla.gov.au/v2/result?key=<INSERT KEY>&zone=book&q=piers%20anthony
url_query=paste0(url_base,api_key,zone,zone_name,query,question,type)
url_query2=paste0(url_base,api_key,zone,zone_name,query,question)

xmldata <- download.file("https://api.trove.nla.gov.au/v2/result?key=q6ikr8sqem7hbqib&zone=book&q=piers%20anthony",destfile = "test.xml")


# trying ot download the json data
json_file=jsonlite::fromJSON("https://api.trove.nla.gov.au/v2/result?key=q6ikr8sqem7hbqib&zone=book&q=piers%20anthony")

json_file$response$zone$records$total


  
dat=as.data.frame(json_file$response$zone$records$article)

# library(devtools)
# source_gist('https://gist.github.com/mrdwab/4205477') #loads the function
#
# ddf <- LinearizeNestedList(dd, LinearizeDataFrames = TRUE)
# # ddf is now a list with two elements (Age and Month)
#
# ddf <- LinearizeNestedList(ddf, LinearizeDataFrames = TRUE)
# # ddf is now a list with 3 elements (Age, `Month/Dates` and `Month/Month`)
#
# ddf <- as.data.frame.list(ddf)

# json_file <- lapply(json_file, function(x) {
#   x[sapply(x, is.null)] <- NA
#   unlist(x)
# })
#
# dat=do.call("rbind", json_file)
#
# dplyr::rbind_all(fromJSON(url_query))

# working with the xml data

test=xmlToList(url_query2)

testdf=ldply(xmlToList(url_query2), function(x) { data.frame(x) } )


