delete_comment <-
function(id,
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurDELETE(paste0('comment/', id), key = key, token = token, ...)
    structure(out, class = 'imgur_basic')
}
