#Trove API scripts
#03072021
#Anthony

#q6ikr8sqem7hbqib

#Libraries

#from app info
https://api.trove.nla.gov.au/v2/result?key= &zone=magazine&q=Koala
  
#json
json_file <- jsonlite::fromJSON("https://api.trove.nla.gov.au/v2/result?key=q6ikr8sqem7hbqib&zone=magazine&q=Koala&encoding=json&n=100", flatten = T)

n <- 10
api_key <- c("q6ikr8sqem7hbqib")

json_file=jsonlite::fromJSON(paste0("https://api.trove.nla.gov.au/v2/",n,"&key=",api_key), flatten = T)

# https://api.trove.nla.gov.au/v2/result?key=<INSERT KEY>&zone=book&q=%22piers%20anthony%22

##first one working
json_file=jsonlite::fromJSON("https://api.trove.nla.gov.au/v2/result?key=q6ikr8sqem7hbqib&zone=book&q=%22essential%20guide%20to%20Rapunzel%27s%20world%22")

##try a different record
# https://trove.nla.gov.au/search/category/newspapers?keyword=koala
json_file=jsonlite::fromJSON("https://api.trove.nla.gov.au/v2/result?key=q6ikr8sqem7hbqib&zone=newspapers&keyword=koala&n=10")

  # http://api.trove.nla.gov.au/result?key=&zone=book&q=John%20Curtin%20Kip&encoding=json&n=100
  # HTTP error 410.