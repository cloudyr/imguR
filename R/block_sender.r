block_sender <-
function(username,
         ...){
    out <- imgurPOST(paste0('conversations/block/', username), ...)
    structure(out, class = 'imgur_basic')
}
