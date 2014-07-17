account_base <-
function(account, 
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurGET(paste0('account/', account), key = key, token = token, ...)
    structure(out, class = 'imgur_basic')
}
