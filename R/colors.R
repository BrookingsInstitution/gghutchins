#' Urban Institute palettes
#'
#' Vectors with hex-color codes that correspond to the color palettes outlined in the Urban Institute Data Visualization Style Guide.
#' \url{http://urbaninstitute.github.io/graphics-styleguide/}
#'
#' @source Urban Institute Data Visualization Style Guide
#'  \url{http://urbaninstitute.github.io/graphics-styleguide/}
#'
#'
#' @family hutchins palettes
#' @rdname hutchins_palettes
#' @export
hutchins_colors <-
  c(`light blue` = '#8AC6FF',
    `dark blue` ='#003A70',
    `brookings blue` = '#053769',
    'orange' = '#F26D00',
    black = "#101010",
    gray = "#d2d2d2",
    `space gray` = "#5c5859",
    yellow = "#fdbf11",
    magenta = "#ec008b"
  )
#' Function to extract hutchins colors as hex codes
#'
#' @param ... Character names of hutchins_colors
#'
hutchins_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (hutchins_colors)

  hutchins_colors[cols]
}

#' @rdname hutchins_palettes
#' @export
hutchins_palettes <- list(
  `main`  = hutchins_cols("brookings blue", "light blue", "orange"),

  `single` = hutchins_cols('brookings blue'),

  `cool`  = hutchins_cols("light blue", "dark blue"),

  `hot`   = hutchins_cols("yellow", "orange", "magenta"),

  `mixed` = hutchins_cols("dark blue", "light blue", "yellow", "orange", "magenta"),

  `grey`  = hutchins_cols("space gray", "gray")
)

#' Return function to interpolate a hutchins color palette
#'
#' @param palette Character name of palette in hutchins_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
hutchins_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- hutchins_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}

#' Color scale constructor for hutchins colors
#'
#' @param palette Character name of hutchins_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or scale_color_gradientn(),
#'  used respectively when discrete is TRUE or FALSE
#'
#' @return
#' @export
#'
#' @examples
scale_color_hutchins <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- hutchins_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("hutchins_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale constructor for hutchins colors
#'
#' @param palette Character name of palette in hutchins_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @return
#' @export
#'
#' @examples
scale_fill_hutchins <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- hutchins_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("hutchins_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
