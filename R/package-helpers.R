devtools::check()	#build package locally and check
devtools::load_all()#	load functions in 📂 R/ into memory
usethis::use_r("function")	# create R script for function
usethis::use_package("ggplot2")	#add package dependency
usethis::use_package('tsibble')

devtools::document()
usethis::use_git()
