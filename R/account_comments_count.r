account_comments_count <-
function(account = 'me',
         ...){
    out <- imgurGET(paste0('account/', account, '/comments/count'), ...)
    structure(out, class = 'imgur_basic')
}
