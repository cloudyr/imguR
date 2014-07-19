add_album_images <- 
function(album, 
         id,
         ...){
    if(inherits(album, 'imgur_album'))
        album <- album$id
    b <- list(ids = paste(id, collapse = ','))
    out <- imgurPOST(paste0('album/', album, '/add'), body = b, ...)
    structure(out, class = 'imgur_basic')
}