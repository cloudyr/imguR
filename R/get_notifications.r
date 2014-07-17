get_notifications <-
function(id = NULL,
         only_new = FALSE,
         key = NULL, 
         token = NULL, 
         ...){
    if(!is.null(id))
        out <- imgurGET(paste0('notification/', id), key = key, token = token, ...)
    } else {
        out <- imgurGET('notification/', key = key, token = token, 
                        body = list(new = only_new), ...)
    }
    structure(out, class = 'imgur_notification')
}
