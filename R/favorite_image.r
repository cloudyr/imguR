favorite_image <- 
function(id, 
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurPOST(paste0('image/', id, '/favorite'), key = key, token = token, ...)
    structure(out, class = 'imgur_basic')
}