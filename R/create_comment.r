create_comment <-
function(id,
         image_id,
         comment,
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurPOST(paste0('comment/', id),
                     key = key, token = token, 
                     body = list(image_id = image_id,
                                 comment = comment),
                     ...)
    structure(out, class = 'imgur_basic')
}
