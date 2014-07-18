account_album_count <-
function(account = 'me',
         ...){
    out <- imgurGET(paste0('account/', account, '/albums/count'), ...)
    structure(out, class = 'imgur_basic')
}
