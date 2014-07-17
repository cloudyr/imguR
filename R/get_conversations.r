get_conversations <-
function(id = NULL,
         key = NULL, 
         token = NULL, 
         ...){
    if(!is.null(id))
        out <- imgurGET(paste0('conversations/', id), key = key, token = token, ...)
    } else {
        out <- imgurGET('conversations/', key = key, token = token, ...)
    }
    structure(out, class = 'imgur_message')
}
