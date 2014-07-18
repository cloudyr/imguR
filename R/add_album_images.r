add_album_images <- 
function(album, 
         id,
         ...){
    b <- list(ids = paste(id, collapse = ','))
    out <- imgurPOST(paste0('album/', album, '/add'), body = b, ...)
    structure(out, class = 'imgur_basic')
}