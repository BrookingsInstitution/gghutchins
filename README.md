# gghutchins <img src="man/figures/hex.png" align="right" height="160"/>

## Overview

`gghutchins` is a set of tools for creating Hutchins Center themed plots in R. 

## Installation

```
install.packages("devtools")
devtools::install_github("Hutchins-Center/gghutchins")
```

## Fonts

Brookings uses [Roboto](https://fonts.google.com/specimen/Lato) font for publications. After installing `gghutchins`, try running `gghutchins::roboto_test()` to see if Roboto is imported and registered. 

If Roboto isn't imported and registered, install [Roboto](https://fonts.google.com/specimen/Roboto) and then submit `urbnthemes::lato_install()`. If you are on a Windows, you may need to install [ghostscript](https://www.ghostscript.com/download.html) and then submit `Sys.setenv(R_GSCMD = "link to the ghostscript .exe")` before running `urbnthemes::roboto_install()`.

