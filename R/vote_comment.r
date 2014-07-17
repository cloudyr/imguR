vote_comment <-
function(vote = 'up',
         key = NULL, 
         token = NULL, 
         ...){
    if(vote %in% c('up', 'down'))
        stop("'vote' can only be 'up' or 'down'")
    out <- imgurPOST(paste0('comment/', id, '/vote/', vote),
                     key = key, token = token, ...)
    structure(out, class = 'imgur_basic')
}
