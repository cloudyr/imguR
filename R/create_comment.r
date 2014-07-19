create_comment <-
function(image_id,
         comment,
         ...){
    out <- imgurPOST('comment/',
                     body = list(image_id = image_id,
                                 comment = comment),
                     ...)
    structure(out, class = 'imgur_basic')
}
