delete_image <- 
function(id, 
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurDELETE(paste0('image/', id), key = key, token = token, ...)
    structure(out, class = 'imgur_basic')
}