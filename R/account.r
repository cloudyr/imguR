account_base <- function(account, token = NULL){
    out <- imgurGET(paste0('account/', account))
    structure(out)
}
