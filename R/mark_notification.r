mark_notification <-
function(id = NULL,
         ...){
    out <- imgurPOST(paste0('notification/', id), ...)
    structure(out, class = 'imgur_basic')
}
