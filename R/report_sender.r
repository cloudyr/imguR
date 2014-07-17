report_sender <-
function(username,
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurPOST(paste0('conversations/report/', username), key = key, token = token, ...)
    structure(out, class = 'imgur_basic')
}
