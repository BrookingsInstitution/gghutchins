.onAttach <- function(libname, pkgname) {


    if (Sys.info()[1] == "Linux") {
      dir.create('~/.fonts')
      system('fc-cache -f ~/.fonts')
    }
    if (Sys.info()[1] == "Windows") {
      windowsFonts()
      extrafont::font_import(pattern = "some-fonts", prompt = FALSE)
      extrafont::loadfonts(device = "win")
      windowsFonts()
    }
    print(extrafont::fonts())

  # set os options
  if (.Platform$OS.type == "windows") {
    packageStartupMessage("Setting Windows options...")
    grDevices::windows.options(width = 8.33333333333333,
                               height = 5.55555555555556)
    grDevices::windowsFonts(Lato = grDevices::windowsFont("Lato"))
    grDevices::windowsFonts(FontAwesome = grDevices::windowsFont("FontAwesome"))
    windowsFonts()
    extrafont::font_import(pattern = "some-fonts", prompt = FALSE)
    extrafont::loadfonts(device = "win")
    windowsFonts()
  } else {
    packageStartupMessage("Setting Mac/Linux options...")
    grDevices::quartz.options(width = 8.33333333333333,
                              height = 5.55555555555556,
                              dpi = 72)
    dir.create('~/.fonts')
    system('fc-cache -f ~/.fonts')
  }

  # check ggplot2 version
  if (unlist(utils::packageVersion("ggplot2"))[1] < 3) {
    packageStartupMessage(
      "Warning: gghutchins requires ggplot2 version 3.0.0 or higher."
    )
  }

  # check that ggplot2 is already loaded
  if (!"ggplot2" %in% (.packages())) {
    packageStartupMessage(
      "Warning: ggplot2 needs to be loaded before gghutchins is loaded. Consider restarting your R session."
    )
  }

}
