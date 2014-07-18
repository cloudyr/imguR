vote_comment <-
function(vote = 'up',
         ...){
    if(vote %in% c('up', 'down'))
        stop("'vote' can only be 'up' or 'down'")
    out <- imgurPOST(paste0('comment/', id, '/vote/', vote), ...)
    structure(out, class = 'imgur_basic')
}
