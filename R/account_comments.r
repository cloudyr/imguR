account_comments <-
function(account = 'me',
         ids = FALSE,
         ...){
    if(ids) {
        out <- imgurGET(paste0('account/', account, '/comments/ids'), ...)
        structure(out, class = 'imgur_basic')
    } else {
        out <- imgurGET(paste0('account/', account, '/comments'), ...)
        structure(out, class = 'imgur_comment')
    }
}
