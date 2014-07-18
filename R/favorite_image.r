favorite_image <- 
function(id, ...){
    out <- imgurPOST(paste0('image/', id, '/favorite'), ...)
    structure(out, class = 'imgur_basic')
}