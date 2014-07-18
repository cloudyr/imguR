account_albums <-
function(account = 'me',
         page = NULL, 
         ids = TRUE,
         ...){
    if(ids) {
        out <- imgurGET(paste0('account/', account, '/albums/ids'), ...)
        structure(out, class = 'imgur_basic')
    } else {
        out <- imgurGET(paste0('account/', account, '/albums/', page), ...)
        structure(out, class = 'imgur_album') # check this
    }
    
}
