account_images <-
function(account = 'me',
         page = NULL, 
         ids = TRUE,
         ...){
    if(ids) {
        out <- imgurGET(paste0('account/', account, '/images/ids'), ...)
        structure(out, class = 'imgur_basic')
    } else {
        out <- imgurGET(paste0('account/', account, '/images/', page), ...)
        structure(out, class = 'imgur_image') # check this
    }
    
}
