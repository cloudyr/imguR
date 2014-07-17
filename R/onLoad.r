.onLoad <- function(libname, pkgname){
    options(imgur_user_rate_warning = TRUE)
    options(imgur_user_rate_limit = 20)
    options(imgur_client_rate_warning = TRUE)
    options(imgur_client_rate_limit = 100)
}