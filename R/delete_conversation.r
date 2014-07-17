delete_conversation <-
function(id,
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurDELETE(paste0('conversations/', id), key = key, token = token, ...)
    structure(out, class = 'imgur_basic')
}
