#' Test for Roboto import and registration
#'
#' \code{roboto_test} tests to see if Roboto is imported and registered. Roboto is the Brookings Institution's main font and can be installed from \href{https://fonts.google.com/specimen/Roboto}{Google fonts}.
#'
#' Import and register Roboto in R with roboto_install().
#'
#' @md
#' @export
roboto_test <- function() {
  if (sum(grepl("[Rr]oboto$", extrafont::fonts())) > 0) {
    "Roboto is imported and registered."
  } else {
    "Roboto isn't imported and registered. Install from Google Fonts and import and register using roboto_install()."
  }
}
