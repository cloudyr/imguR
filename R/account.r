account_base <-
function(account, ...){
    out <- imgurGET(paste0('account/', account), ...)
    structure(out, class = 'imgur_basic')
}
