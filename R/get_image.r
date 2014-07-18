get_image <- 
function(id, ...){
    out <- imgurGET(paste0('image/', id), ...)
    structure(out, class = 'imgur_image')
}