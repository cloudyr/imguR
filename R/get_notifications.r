get_notifications <-
function(id = NULL,
         only_new = FALSE,
         ...){
    if(!is.null(id)) {
        out <- imgurGET(paste0('notification/', id), ...)
    } else {
        out <- imgurGET('notification/', 
                        body = list(new = only_new), ...)
    }
    structure(out, class = 'imgur_notification')
}
