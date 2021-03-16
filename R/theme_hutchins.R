





#Define gppr_theme() function

#' Title
#'
#' @return
#' @export
#'
#' @examples
theme_hutchins <- function() {
  font <-
    "Roboto Regular"   #assign font family up front
  distance <- 0.83 * 12
  ggthemes::theme_hc() %+replace%    #replace elements we want to change

    theme(
      #grid elements
      panel.grid.major = element_line(size = 0.75,
                                      linetype = "dotted",
                                      color = '#cccccc'),
      #strip major gridlines
      panel.grid.minor = element_blank(),
      #strip minor gridlines
      axis.ticks = element_blank(),
      #strip axis ticks

      #since theme_minimal() already strips axis lines,
      #we don't need to do that again

      #text elements

      text = element_text(family = font),

      plot.title = ggtext::element_textbox_simple(
        #title
        family = "Roboto Bold",
        #set font family
        size = 20,
        #set font size
        face = 'bold',
        color = "#003A79",
        #bold typeface
        hjust = 0,
        #left align
        lineheight = 1.2
      ),
      plot.title.position = 'plot',


      plot.subtitle = ggtext::element_textbox_simple(
        #subtitle
        family = font,
        #font family
        hjust = 0,
        lineheight = 1,
        margin = ggplot2::margin(2, 0, 1.5 * distance, 0),
        size = 15
      ),
      #font size
      # panel.background = element_rect(
      #   fill = '#FAFAFA'
      # ),



      plot.caption = ggtext::element_textbox_simple(
        #caption
        family = 'Roboto Light',
        #font family
        size = 12,
        #font size
        hjust = 0,
        lineheight = 1,
        margin = margin(1.5 * distance, 0, 0, 0)
      ),
      #right align
      plot.caption.position = "plot",

      axis.title = element_text(#axis titles
        family = 'Roboto Medium',            #font family
        size = 10,
        margin = margin(distance, distance, 1.5 * distance, 0)),
      #font size

      axis.text = element_text(#axis text
        family = font,
        size = 10),

      axis.line.x = element_line(size = unit(0.5, 'pt'),
                               color = "#000000"),

      #font size

      plot.margin = unit(c(1, 5, 0.5, 0.5), "lines"),


      # Legends -------------------------------------------------------------------------------------



      legend.text = element_text(family = 'Roboto Regular',
                                 size = 12),
      legend.position = 'top',
      legend.direction = "horizontal",
      legend.justification = NULL,
      legend.margin = ggplot2::margin(
        t = 6L,
        r = 0L,
        b = 6L,
        l = 0L,
        "pt"
      ),

      legend.box = "horizontal",
      legend.box.margin = NULL,
      legend.box.background = NULL,
      legend.box.spacing = NULL,

      legend.text.align = 0,
      legend.background = ggplot2::element_blank(),
      legend.title = ggplot2::element_blank(),
      legend.spacing = ggplot2::unit(20L, "pt"),
      legend.spacing.x = ggplot2::unit(4L, "pt"),
      legend.spacing.y = NULL,

      legend.key = ggplot2::element_blank(),
      legend.key.size = ggplot2::unit(10L, "pt"),
      legend.key.height = NULL,
      legend.key.width = NULL,




      # LEGENDS
      #plot.background = element_rect(fill = "#faf0e6"),
      #legend.background = element_rect(fill = "#faf0e6", color = "#faf0e6"),


      #since the legend often requires manual tweaking
      #based on plot content, don't define it here_logo
      #Blank background
      #This sets the panel background as blank, removing the standard grey ggplot background colour from the plot
      panel.background = ggplot2::element_blank(),

      #Strip background (#This sets the panel background for facet-wrapped plots to white, removing the standard grey ggplot background colour and sets the title size of the facet-wrap title to font size 22)
      strip.background = element_rect(colour = "black", fill = "white"),

      strip.text = ggplot2::element_text(size  = 15,  hjust = 0),
      panel.spacing = unit(1, "lines")
    )
}
