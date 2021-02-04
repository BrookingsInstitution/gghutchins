#' Title
#'
#' @param filename
#'
#' @return
#' @export
#'
#' @examples
get_png <- function(filename) {
  grid::rasterGrob(png::readPNG(filename), interpolate = TRUE)
}

