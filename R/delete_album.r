delete_album <- 
function(album, ...){
    out <- imgurDELETE(paste0('album/', album), ...)
    structure(out, class = 'imgur_basic')
}