favorite_album <- 
function(album, ...){
    out <- imgurPOST(paste0('album/', album, 'favorite'), ...)
    structure(out, class = 'imgur_basic')
}