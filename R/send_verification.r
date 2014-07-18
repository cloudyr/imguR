send_verification <-
function(...){
    out <- imgurPOST(paste0('account/me/verifyemail'), ...)
    structure(out, class = 'imgur_basic')
}
