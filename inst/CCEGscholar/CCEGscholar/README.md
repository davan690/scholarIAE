# Google Scholar Shiny Application

A brief application to work with google scholar and show coauthorship network

- In order to see coauthorship networks graph, copy google scholar profile of author __(example: "https://scholar.google.com/citations?user=zufgVroAAAAJ&hl=en")__ and put it in the text box provided in the application UI, you will see coauthorship network in seconds
- This shiny application uses scholar package in R to exctract data from google scholar
- As always, I owe most parts of the code and what I wrote to stackoverflow and google searches

## How to run the app in Rstudio

You need to have 'shiny' package installed in R, then install these packages as well, using: 

` install.packages(c("shinyjs", "graphics", "methods", "scholar", "igraph", "network", "stringdist", "networkD3"))` 


Then open app.R file inside Rstudio, now you should see a "Run App" button on upper left side of script editor (instead of usual "Run" button), click on "Run App" and you should have another window opened on the top of Rstudio editor, follow guides in app (like above) to see google scholar coauthorship network graph.

# Trove app

R SHiny interface to Trove API with csv data download option

## App available online 

Provided on the free tier, i.e. limits to how many hours a month it is up and running:
https://rebeccalange.shinyapps.io/TroveApp/ [not working currently]

## The Shiny webapp allows the interface with the Trove API.

- An API key needs to be supplied for this to work.
- the user can (currently) select one zone to search
- selection of brief or full records possible
- The app displays the search results in a table
- search results can be viewed by clicking on links in the troveUrl column
- Download Data will open a dialog box to download the displayd table as a csv file

## Work To Do:

- upgrade to API v2
- implement iteration of the search until all results are collated (i.e. there might be 200 records but the API only allows retrieval of 100 at a time)
- implement input selection for years
- inlcude proper error message when API key is not given
- remove leading and trailing spaces in inputs

