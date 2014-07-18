get_reddit_image <- 
function(subreddit,
         id,
         ...){
    out <- imgurGET(paste0('gallery/r/', subreddit, '/', id), ...)
    structure(out, class = 'imgur_gallery_image') # check this
}
