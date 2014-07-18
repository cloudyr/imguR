set_album_images <- 
function(album, 
         id,
         ...){
    b <- list(paste(id, collapse = ','))
    out <- imgurPOST(paste0('album/', album), body = b, ...)
    structure(out, class = 'imgur_basic')
}