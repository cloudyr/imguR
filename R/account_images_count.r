account_images_count <-
function(...){
    out <- imgurGET(paste0('account/me/images/count'), ...)
    structure(out, class = 'imgur_basic')
}
