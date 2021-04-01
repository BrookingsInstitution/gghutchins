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
  c(
    `brookings blue` = '#003A79',
    `vivid blue` = "#8AC6FF",
     `brand_blue_90` = '#022A4E',
    `brand blue 50` = "#517EAD",
    `brand blue 20` = "#A8BDD5",
    "teal" = "#3EB2C6",
    `teal 40` = "#3EB2C6",
     `dark red` = '#A00D11',
    "red" = "#CD1A1C",
    "light red" = "#F75C57",
    "lighter red" = "#E254E",
    "green" = "#5CA632",
    `light blue` = '#A4C7F2',
 `space gray` = "#D0D3D4",
    'orange' = '#FF9E1B',
     `orange 60` = '#F26D00',
    black = "#101010",
    gray = "#666666",
    yellow = "#FFDD00",
    `yellow 50` = "#F5CC00",
    magenta = "#E160A2",
    purple = "6E2585"
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
  `qual` = hutchins_cols('brookings blue', 'vivid blue'),
  `main`  = hutchins_cols("brookings blue", "vivid blue", "orange"),

  `brand2` = hutchins_cols('brookings blue', 'orange', 'space gray'),

  `alternative` = hutchins_cols('brookings blue', 'teal 40', 'yellow 50'),

  `single` = hutchins_cols('brookings blue'),

  `cool`  = hutchins_cols("brookings blue", "brand blue 50", "brand blue 20",  "space gray"),

  `hot`   = hutchins_cols("yellow", "orange", "magenta"),

  `mixed` = hutchins_cols("brookings blue", "vivid blue", "green", "yellow", "orange 60", "magenta"),

  `categorical` = hutchins_cols("brookings blue", "orange 60", "vivid blue", "yellow", "space gray", "green", "magenta"),

  `gray`  = hutchins_cols("space gray", "gray")
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
