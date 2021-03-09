library(showtext)
library(hexSticker)
## Loading Google fonts (http://www.google.com/fonts)
font_add_google("Lato")
## Automatically use showtext to render text for future devices
showtext_auto()

imgurl <- system.file("logos/H_logo_only_black.png", package="gghutchins")
hexSticker::sticker(imgurl, package="gghutchins",

                    # Package
                    p_size=6,
                    p_family = 'Lato',
                    p_fontface = 'bold',
                    p_color = '#101010',
                    p_y = 1.4,

                    # Subplot
                    s_x=1,
                    s_y=.75,
                    s_width=.3,
                    s_height = .2,
                    h_fill = 'white',
                    h_color = '#053769',
        filename="hex.png")

