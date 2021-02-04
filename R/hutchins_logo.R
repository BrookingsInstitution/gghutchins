#' Insert hutchins logo
#'
#' @return
#' @export
#'
#' @examples
hutchins_logo <- function() {
  magick::image_read(system.file('logos/logo.png',package = 'gghutchins'))
}
