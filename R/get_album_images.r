get_album_images <- 
function(id, 
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurGET(paste0('album/', id, '/images'), key = key, token = token, ...)
    structure(out, class = 'imgur_image') # this may not be correct
}