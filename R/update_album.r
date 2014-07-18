update_album <- 
function(album, 
         id = NULL,
         title = NULL,
         description = NULL,
         privacy = NULL,
         layout = NULL,
         cover_id = NULL,
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
    out <- imgurPOST(paste0('album/', album), body = b, ...)
    structure(out, class = 'imgur_basic')
}