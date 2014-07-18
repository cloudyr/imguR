remove_album_images <- 
function(album, 
         id,
         ...){
    b <- list(ids = paste(id, collapse = ','))
    out <- imgurDELETE(paste0('album/', album, '/remove_images'), body = b, ...)
    structure(out, class = 'imgur_basic')
}