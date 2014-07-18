get_comment <-
function(id,
         replies = FALSE,
         ...){
    if(replies)
        out <- imgurGET(paste0('comment/', id, '/replies'), ...)
    else
        out <- imgurGET(paste0('comment/', id), ...)
    structure(out, class = 'imgur_comment')
}
