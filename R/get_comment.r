get_comment <-
function(id,
         replies = FALSE,
         key = NULL, 
         token = NULL, 
         ...){
    if(replies)
        out <- imgurGET(paste0('comment/', id, '/replies'), key = key, token = token, ...)
    else
        out <- imgurGET(paste0('comment/', id), key = key, token = token, ...)
    structure(out, class = 'imgur_comment')
}
