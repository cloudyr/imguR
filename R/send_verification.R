send_verification <-
function(...){
    if (!"token" %in% names(list(...))) {
        stop("This operation can only be performed using an OAuth token.")
    }
    out <- imgurPOST(paste0('account/me/verifyemail'), ...)
    structure(out, class = 'imgur_basic')
}
