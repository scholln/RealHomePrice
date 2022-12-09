# Install released version from CRAN
install.packages("pkgdown")
# Run once to configure your package to use pkgdown
usethis::use_pkgdown()
pkgdown::build_site()
