account_comment_count <-
function(account = 'me',
         ...){
    if (!"token" %in% names(list(...)) && account == 'me') {
        stop("This operation can only be performed for account 'me' using an OAuth token.")
    }
    out <- imgurGET(paste0('account/', account, '/comments/count'), ...)
    structure(out, class = 'imgur_basic')
}
