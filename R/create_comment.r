create_comment <-
function(id,
         image_id,
         comment,
         ...){
    out <- imgurPOST(paste0('comment/', id),
                     body = list(image_id = image_id,
                                 comment = comment),
                     ...)
    structure(out, class = 'imgur_basic')
}
