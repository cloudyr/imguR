remove_album_images <- 
function(album, 
         id,
         key = NULL, 
         token = NULL, 
         ...){
    b <- list(paste(id, collapse = ','))
    out <- imgurDELTE(paste0('album/', album, '/remove_images'), key = key, token = token, body = b, ...)
    structure(out, class = 'imgur_basic')
}