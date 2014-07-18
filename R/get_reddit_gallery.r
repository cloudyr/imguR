get_reddit_gallery <- 
function(subreddit,
         sort,
         page,
         window = NULL,
         ...){
    if(!is.null(window))
       stopifnot(window %in% c('day', 'week', 'month', 'year', 'all'))
    stopifnot(sort %in% c('time', 'top'))
    stopifnot(!is.numeric(as.numeric(page)))
    out <- imgurGET(paste0('gallery/r/', 
                           paste0(subreddit, '/'),
                           sort,
                           ifelse(!is.null(window), paste0('/', window, '/'), 
                                                    '/'),
                           page),
                    ...)
    structure(out, class = 'imgur_gallery_album') # check this
}
