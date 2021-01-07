library(dplyr)
source("R/getColumnName.R")


#' Title
#'
#' @param github
#' @param sheet_url
#' @param sheet_name
#' @param column_name
#' @param max_score
#' @param email
#'
#' @return
#' @export
#'
#' @examples
corgi_score <- function(github, sheet_url, sheet_name, column_name, max_score, email) {
# Get recipients from corgi

  ## Get participant name
  corgi <- xml2::read_html(github) %>%
    rvest::html_nodes(xpath = "//a") %>%
    rvest::html_text()
  corgi <- tolower(corgi[12:(length(corgi)-10)])

  # Read and write to sheet
  ## Read sheet
  googlesheets4::gs4_auth(email = email)
  academy <- googlesheets4::read_sheet(ss = sheet_url, sheet = sheet_name)
  id <- match(column_name, names(academy))

  academy %>%
    dplyr::filter(!is.na(Class)) %>%
    dplyr::mutate(`Github ID` = tolower(`Github ID`)) %>%
    transmute_at(.vars = dplyr::vars(dplyr::contains(column_name)),
                 .funs = function(x) ifelse(.$`Github ID` %in% corgi, max_score,0)) %>% ## Scoring
    googlesheets4::range_write(ss = sheet_url,
                sheet = sheet_name,
                range = AlgoritmaAcademy::getColumnName(id)) # write the result
  googlesheets4::gs4_deauth()
  print("Quiz Updated Successfully")

}
