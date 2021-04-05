#' The Urban Institute [ggplot2] theme
#'
#' \code{set_urbn_defaults} provides a [ggplot2] theme formatted according to the
#' Urban Institute style guide, with sensible defaults.
#'
#' @param style The default theme style for the R session. "print" or "map".
#' @param base_size
#' @param base_family
#' @param base_line_size
#' @param base_rect_size
#' @param scale For `theme_urbn_map()`. Should the legend theme be continuous or discrete?
#'
#' @import extrafont
#' @import ggrepel
#' @md
#' @export
set_hutchins_defaults <- function(style = "print",
                              base_size = 12,
                              base_family = "Roboto",
                              base_line_size = 0.5,
                              base_rect_size = 0.5,
                              scale = "continuous") {

  # set default theme to theme_hutchins() --------------------------------------

  if (style == "print") {

    ggplot2::theme_set(theme_hutchins(base_size = base_size))

  } else if (style == "map") {

    stop('Map style is currently in progress')

  } else {

    stop('Invalid "style" argument. Valid styles are: ',
         '"print" and "map".',
         call. = FALSE
    )

  }

  # add base_family font to text and label geoms ---------------------------

  ggplot2::update_geom_defaults("text", list(family = base_family))
  ggplot2::update_geom_defaults("label", list(family = base_family))

  # set default color scales for continuous variables -----------------------

  options(
    ggplot2.continuous.colour = "gradient",
    ggplot2.continuous.fill = "gradient"
  )

  # set default colors for monochromatic geoms ------------------------------

  ggplot2::update_geom_defaults("bar", list(fill = "#1696d2"))
  ggplot2::update_geom_defaults("col", list(fill = "#1696d2"))
  ggplot2::update_geom_defaults("point", list(colour = "#1696d2"))
  ggplot2::update_geom_defaults("line", list(colour = "#1696d2"))
  ggplot2::update_geom_defaults("step", list(colour = "#1696d2"))
  ggplot2::update_geom_defaults("path", list(colour = "#1696d2"))
  ggplot2::update_geom_defaults("boxplot", list(fill = "#1696d2"))
  ggplot2::update_geom_defaults("density", list(fill = "#1696d2"))
  ggplot2::update_geom_defaults("violin", list(fill = "#1696d2"))

  # set default colors for monochromatic stats ------------------------------

  ggplot2::update_stat_defaults("count", list(fill = "#1696d2"))
  ggplot2::update_stat_defaults("boxplot", list(fill = "#1696d2"))
  ggplot2::update_stat_defaults("density", list(fill = "#1696d2"))
  ggplot2::update_stat_defaults("ydensity", list(fill = "#1696d2"))

}
