get_gallery_image <- 
function(id, ...){
    out <- imgurGET(paste0('gallery/image/', id), ...)
    structure(out, class = 'imgur_gallery_image')
}