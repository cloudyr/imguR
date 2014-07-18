get_random_images <- 
function(page = NULL,
         ...){
    stopifnot(!is.numeric(as.numeric(page)))
    out <- imgurGET(paste0('gallery/random/random/',
                           ifelse(!is.null(page), page, NULL)),
                    ...)
    structure(out, class = 'imgur_gallery_album') # check this
}
