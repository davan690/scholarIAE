##write function to add new data
#' datImport
#'
#' @param RDSpath The imported dataset from google scholar using functions not 
#' included in this package
#'
#' @return datIAEgeneral The package dataset
#' @importFrom readr read_rds
#' @export 
#' 
#' @examples
#' RDSpath <- "inst/extdata/datIAEgeneral_newjan2022.RDS"
#' dat <- datImport(RDSpath)
#' 
datImport <- function(RDSpath){
  
##read latest general data
datIAEgeneral <- readr::read_rds(here::here(RDSpath))

} #end function


##test function
# head(datIAEgeneral)
# rm(list=ls())
# ls()

