account_favorites <-
function(account = 'me',
         gallery = FALSE, 
         ...){
    out <- imgurGET(paste0('account/', account, 
                           ifelse(gallery, '/gallery_favorites', '/favorites'),
                    ...)
    if(gallery)
        structure(out, class = 'imgur_gallery_album') # check this
    else
        structure(out, class = 'imgur_image') # check this
}
