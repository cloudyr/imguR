create_album <- 
function(id = NULL, 
         title = NULL,
         description = NULL,
         privacy = NULL,
         layout = NULL,
         cover_id = NULL,
         key = NULL, 
         token = NULL, 
         ...){
    if(!is.null(privacy))
        stopifnot(privacy %in% c('public', 'hidden', 'secret'))
    if(!is.null(layout))
        stopifnot(layout %in% c('blog', 'grid', 'horizontal', 'vertical'))
    b <- list(paste(id, collapse = ','),
              title = title, 
              description = description,
              privacy = privacy,
              layout = layout,
              cover = cover_id)
    out <- imgurPOST('album/', key = key, token = token, body = b, ...)
    structure(out, class = 'imgur_basic')
}