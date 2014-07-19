get_album <- 
function(album, ...){
    if(inherits(album, 'imgur_album'))
        album <- album$id
    out <- imgurGET(paste0('album/', album), ...)
    structure(out, class = 'imgur_album')
}