## code to prepare `datIAEgeneral` dataset goes here
#sort data as sample data to package
##write function to add new data
#' datIAEgeneral
#'
#' @param datIAEgeneral The imported dataset from google scholar using functions not 
#' included in this package
#'
#' @return The package dataset
#' @importFrom usethis use_data
#' @export 

usethis::use_data(datIAEgeneral, overwrite = TRUE, internal = TRUE, compress = "xz")
