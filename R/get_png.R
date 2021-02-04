get_png <- function(filename) {
  grid::rasterGrob(png::readPNG(filename), interpolate = TRUE)
}


p
p + grid::grid.raster(logo, x = 0.5, y = 0.5, just = c('left', 'bottom'), width = unit(1, 'inches'))

library(hexSticker)
s <- sticker(p,
             package="gghutchins", p_size=20, s_x=.8, s_y=.6, s_width=1.4, s_height=1.2,
             filename="inst/logos/logo.png")
x <- sticker(p,
             package="gghutchins", p_size=20, s_x=.8, s_y=.6, s_width=1.4, s_height=1.2,
             filename="inst/logos/logo.png")

df =  XenaData %>%
  dplyr::group_by(XenaHostNames) %>%
  dplyr::summarise(count = n()) %>%
  tail(10)

k# reference https://rpkgs.datanovia.com/ggpubr/
p <- ggdotchart(df, x = "XenaHostNames", y = "count",
                color = "XenaHostNames",
                palette = "jco",
                sorting = "descending",                       # Sort value in descending order
                add = "segments",                             # Add segments from y = 0 to dots
                rotate = TRUE,                                # Rotate vertically
                dot.size = 2,                                 # Large dot size
                label = round(df$count),                        # Add mpg values as dot labels
                font.label = list(color = "white", size = 2,
                                  vjust = 0.5),               # Adjust label parameters
                ggtheme = theme_void()) +                       # ggplot2 theme
  theme_transparent() + theme(legend.position = "none")
p

sticker(p, package="gghutchins", p_size=4.5, s_x=0.9, s_y=1, s_width=1.7, s_height=1.3,
        p_x = 1.1, p_y = 0.9,
        url = "https://cran.r-project.org/package=UCSCXenaTools", u_color = "white", u_size = 1,
        h_fill="black", h_color="grey",
        filename="man/figures/logo2.png")
