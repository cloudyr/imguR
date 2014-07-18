account_verified <-
function(...){
    out <- imgurGET(paste0('account/me/verifyemail'), ...)
    structure(out, class = 'imgur_basic')
}
