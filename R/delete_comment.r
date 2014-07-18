delete_comment <-
function(id, ...){
    out <- imgurDELETE(paste0('comment/', id), ...)
    structure(out, class = 'imgur_basic')
}
