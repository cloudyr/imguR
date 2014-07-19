account_albums <-
function(account = 'me',
         page = NULL, 
         ids = TRUE,
         ...){
    if(!"token" %in% names(list(...)) && account == 'me')
        stop("This operation can only be performed for account 'me' using an OAuth token.")
    if(ids) {
        out <- imgurGET(paste0('account/', account, '/albums/ids'), ...)
        structure(out, class = 'imgur_basic')
    } else {
        out <- imgurGET(paste0('account/', account, '/albums/', page), ...)
        structure(out, class = 'imgur_album') # check this
    }
    
}
