favorite_album <- 
function(album, 
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurPOST(paste0('album/', album, 'favorite'), key = key, token = token, ...)
    structure(out, class = 'imgur_basic')
}