remove_album_images <- 
function(album, 
         id,
         ...){
    b <- list(paste(id, collapse = ','))
    out <- imgurDELTE(paste0('album/', album, '/remove_images'), body = b, ...)
    structure(out, class = 'imgur_basic')
}