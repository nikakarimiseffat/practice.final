#' Check if a Word is a Palindrome
#'
#' Determines if a given string reads the same forwards and backwards,
#' ignoring spaces, punctuation, and case.
#'
#' @param word A character string of length 1.
#' @return `TRUE` if the word is a palindrome, `FALSE` otherwise.
#' @examples
#' is_palindrome("radar")
#' is_palindrome("A man a plan a canal Panama")
#' @export
is_palindrome <- function(word) {
  if (!is.character(word) || length(word) != 1) {
    stop("Input must be a single character string.")
  }

  cleaned <- stringr::str_to_lower(
    stringr::str_remove_all(word, "[^[:alnum:]]")
  )

  cleaned == paste(rev(strsplit(cleaned, "")[[1]]), collapse = "")
}
