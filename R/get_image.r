get_image <- 
function(id, ...){
    if(inherits(id, 'imgur_image'))
        id <- id$id
    out <- imgurGET(paste0('image/', id), ...)
    structure(out, class = 'imgur_image')
}