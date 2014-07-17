delete_album <- 
function(album, 
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurDELETE(paste0('album/', album), key = key, token = token, ...)
    structure(out, class = 'imgur_basic')
}