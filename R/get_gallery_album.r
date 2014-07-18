get_gallery_album <- 
function(id, ...){
    out <- imgurGET(paste0('gallery/album/', id), ...)
    structure(out, class = 'imgur_gallery_album')
}