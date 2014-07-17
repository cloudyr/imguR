get_album <- 
function(id, 
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurGET(paste0('album/', id), key = key, token = token, ...)
    structure(out, class = 'imgur_album')
}