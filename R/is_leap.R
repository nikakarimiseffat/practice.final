#' Check if a Year is a Leap Year
#'
#' This function determines whether a given year is a leap year according to the Gregorian calendar rules:
#' - Divisible by 4: Yes
#' - Divisible by 100: No, unless also divisible by 400
#'
#' @param year An integer representing a year.
#'
#' @return A logical value: `TRUE` if the year is a leap year, `FALSE` otherwise.
#' @examples
#' is_leap(1992)  # TRUE
#' is_leap(1900)  # FALSE
#' is_leap(2000)  # TRUE
#' is_leap(2023)  # FALSE
#'
#' @export
is_leap <- function(year) {
  if (!is.numeric(year) || any(year %% 1 != 0)) {
    stop("Input must be an integer.")
  }
  (year %% 4 == 0 & year %% 100 != 0) | (year %% 400 == 0)
}
