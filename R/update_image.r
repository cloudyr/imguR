update_image <- 
function(id, 
         title = NULL,
         description = NULL,
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurPOST(paste0('image/', id, '/favorite'), key = key, token = token, 
                     body = list(title = title, 
                                 description = description),
                     ...)
    structure(out, class = 'imgur_basic')
}