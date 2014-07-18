account_gallery <-
function(account = 'me', ...){
    out <- imgurGET(paste0('account/', account, '/gallery_profile'), ...)
    structure(out, class = 'imgur_gallery_profile')
}
