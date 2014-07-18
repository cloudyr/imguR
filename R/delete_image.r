delete_image <- 
function(id, ...){
    out <- imgurDELETE(paste0('image/', id), ...)
    structure(out, class = 'imgur_basic')
}