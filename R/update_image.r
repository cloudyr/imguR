update_image <- 
function(id, 
         title = NULL,
         description = NULL,
         ...){
    out <- imgurPOST(paste0('image/', id, '/favorite'), 
                     body = list(title = title, 
                                 description = description),
                     ...)
    structure(out, class = 'imgur_basic')
}