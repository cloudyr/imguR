mark_notification <-
function(id = NULL,
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurPOST(paste0('notification/', id), key = key, token = token, ...)
    structure(out, class = 'imgur_basic')
}
