




#Define gppr_theme() function

theme_hutchins <- function(){
  font <- "Franklin Gothic Demi"   #assign font family up front

  ggthemes::theme_hc() %+replace%    #replace elements we want to change

    theme(

      #grid elements
      panel.grid.major = element_line(size = 1,
                                      color = '#cccccc'),    #strip major gridlines
      panel.grid.minor = element_blank(),    #strip minor gridlines
      axis.ticks = element_blank(),          #strip axis ticks

      #since theme_minimal() already strips axis lines,
      #we don't need to do that again

      #text elements

      text = element_text(family = font),

      plot.title = ggtext::element_textbox_simple(             #title
        family = font,            #set font family
        size = 20,                #set font size
        face = 'bold',            #bold typeface
        hjust = 0,                #left align
        vjust = 2,              #raise slightly
        lineheight = 1, padding = margin(0, 0, 5, 0)
      ),
      plot.title.position = 'plot',


      plot.subtitle = ggtext::element_textbox_simple(          #subtitle
        family = font,            #font family
        face = 'bold',
        size = 17),               #font size
      panel.background = element_rect(
        fill = '#FAFAFA'
      ),



      plot.caption = ggtext::element_textbox_simple(           #caption
        family = 'PT Serif',            #font family
        size = 13,                 #font size
        hjust = 0,
        lineheight = 1
        ),               #right align
      plot.caption.position =  "plot",

      axis.title = element_text(             #axis titles
        family = 'Franklin Gothic Medium',            #font family
        size = 15),               #font size

      axis.text = element_text(              #axis text
        family = 'Franklin Gothic Book',            #axis famuly
        size = 15),                #font size

      plot.margin = unit(c(1, 5, 0.5, 0.5), "lines"),

      legend.text = element_text(
        family = 'Franklin Gothic Book',
        size = 15
      ),
      axis.title.x = element_blank(),
      axis.title.y = element_blank(),

      axis.text.x = element_text(            #margin for axis text
        margin=margin(5, b = 16)),

      axis.line.x = element_line(color = '#101010',
                                 size = 1,),

      # LEGENDS
      legend.title = element_blank(),
      #plot.background = element_rect(fill = "#faf0e6"),
      #legend.background = element_rect(fill = "#faf0e6", color = "#faf0e6"),
      legend.key.size = unit(1, 'cm')

      #since the legend often requires manual tweaking
      #based on plot content, don't define it here
    )
}
