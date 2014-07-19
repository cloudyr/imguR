get_gallery_album <- 
function(id, ...){
    if(inherits(id, 'imgur_album') || inherits(id, 'imgur_gallery_album'))
        id <- id$id
    out <- imgurGET(paste0('gallery/album/', id), ...)
    structure(out, class = 'imgur_gallery_album')
}