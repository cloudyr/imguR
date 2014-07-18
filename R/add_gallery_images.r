add_gallery_images <- 
function(gallery, 
         title,
         image = NULL,
         album = NULL,
         ...){
    b <- list(title = title,
              terms = 1)
    if(!is.null(image))
        out <- imgurPOST(paste0('gallery/image/', image), body = b, ...)
    if(!is.null(album))
        out <- imgurPOST(paste0('gallery/album/', album), body = b, ...)
    structure(out, class = 'imgur_basic')
}