report_comment <-
function(id,
         replies = FALSE,
         ...){
    out <- imgurPOST(paste0('comment/', id, '/report'), ...)
    structure(out, class = 'imgur_basic')
}
