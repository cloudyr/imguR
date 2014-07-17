report_comment <-
function(id,
         replies = FALSE,
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurPOST(paste0('comment/', id, '/report'), key = key, token = token, ...)
    structure(out, class = 'imgur_basic')
}
