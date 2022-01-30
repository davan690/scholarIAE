#' @title Extract Phone Numbers
#'
#' @description Search for and extract all 10-digit phone numbers in a string,
#' provided the phone numbers are visually delimited with the typical characters
#' (i.e. '(', ')', '.', '+', '-', or ' ').
#'
#' @param inputStr a character vector (supposedly) containing phone numbers
#' to be extracted.
#'
#' @return a list of length equal to \code{inputStr} whose entries
#' contain character vectors whose entries are all extracted phone
#' numbers from the individual entries in \code{inputStr} (if any).
#'
#' @importFrom stringr %>% str_replace_all str_extract_all
#' @export
#' @examples
#'   testStrings <- c("1234567890",
#'                    "123 456 7890",
#'                    "123.456.7890",
#'                    "(123) 456 7890",
#'                    "(123) 456 78 90",
#'                    "123.456.78.90",
#'                    "12 34 56 78 90",
#'                    "12.34.56.78.90",
#'                    "call me at 1234567890 OR 1234567890")
#'
#'   extractPhoneNumbers(testStrings)
extractPhoneNumbers <- function(inputStr) {
  # check input:
  if (!is.character(inputStr)) {
    stop("'inputStr' must be a (vector of) string(s)!")
  }
  
  # imports
  `%>%` <- stringr::`%>%`
  str_replace_all <- stringr::str_replace_all
  str_extract_all <- stringr::str_extract_all
  
  # intermediary regex's
  visualDelimitersRegex <- "[()+\\-_. ]"
  phoneNumberRegex <- "[:digit:]{10}"
  
  inputStr %>%
    str_replace_all(pattern = visualDelimitersRegex, replacement = "") %>%
    str_extract_all(pattern = phoneNumberRegex)    
}