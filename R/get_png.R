get_png <- function(filename) {
  grid::rasterGrob(png::readPNG(filename), interpolate = TRUE)
}

hutchins_logo <- function() {
  magick::image_read(system.file('logos/logo.png',package = 'gghutchins'))
}


