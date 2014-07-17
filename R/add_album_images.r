add_album_images <- 
function(album, 
         id,
         key = NULL, 
         token = NULL, 
         ...){
    b <- list(paste(id, collapse = ','))
    out <- imgurPOST(paste0('album/', album, '/add'), key = key, token = token, body = b, ...)
    structure(out, class = 'imgur_basic')
}