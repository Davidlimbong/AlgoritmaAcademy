
#' Get Column Name from Spreadsheet
#'
#' @param word_length int
#'
#' @return character
#' @export
#'
#' @examples
#' getColumnName(21)
getColumnName <- function(word_length) {

  if(word_length <= 26){
    col_id <- paste0(LETTERS[word_length], 1)
  }else{

    if(floor(word_length/26)<=26){
      start <- LETTERS[floor(word_length/26)]
      col_id <- paste0(start, end,1)
    }

  }
  return(col_id)
}
