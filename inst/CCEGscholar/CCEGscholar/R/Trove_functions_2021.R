# R script to write functions to access TROVE
#accessed by pasting together https address that returns particular data, structed as API v2 documentation.
# Anthony Davidson
#10072021

# Input for query
# key = 'rtolalkm39qmnj8l' #get your own key and put it here
# key = 'q6ikr8sqem7hbqib' #ARD key
#DO NOT LEAVE YOUR KEY HERE>>>>>
zone = 'newspaper' # The zone to search
query = "koala+numbers" # the query we'll search for
encoding = 'json' # the format of the results
results = '10' #how many results per query. 100 is the maximum
# decade = '185' # You can specify some additional parameters, such as year or decade. These are optional

our_query = paste0('https://api.trove.nla.gov.au/v2/result?key=',
                   key,
                   '&zone=',
                   zone,
                   '&q=',
                   query,
                   '&encoding='
                   ,encoding, '&n=',
                   results,
                   '&l-decade=',
                   decade)

our_query

## then call query and results are given
our_result = GET(paste0('https://api.trove.nla.gov.au/v2/result?key=',
                        key,
                        '&zone=',
                        zone,
                        '&q=',
                        query,
                        '&encoding='
                        ,encoding, '&n=',
                        results,
                        '&l-decade=',
                        decade))

our_result