get_album_images <- 
function(id, ...){
    out <- imgurGET(paste0('album/', id, '/images'), ...)
    structure(out, class = 'imgur_image') # this may not be correct
}