#' Import and register Roboto font
#'
#' \code{roboto_install} tests to see if Roboto is imported and registered. If Roboto, isn't imported and registered, then \code{roboto_install} imports and registers Roboto with \href{https://github.com/wch/extrafont}{library(extrafont)}.
#'
#' Note: Roboto must be installed on your computer for \code{roboto_install} to work. Roboto is the Urban Institute's main font and can be installed from \href{https://fonts.google.com/specimen/Roboto}{Google fonts}.
#'
#' Test to see if Roboto is imported and registered with \code{roboto_test()}.
#'
#' @md
#' @export
roboto_install <- function() {
  if (sum(grepl("[Rr]oboto$", extrafont::fonts())) > 0) {
    "Roboto is already imported and registered."
  } else {
    ## Loading Google fonts (https://fonts.google.com/)
    showtext::font_add_google('Roboto', 'Roboto')
    roboto_test()
  }
}
