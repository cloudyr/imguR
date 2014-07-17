account_base <- function(account, token = NULL){
    out <- imgurGET(paste0('account/', account))
    if(!out$success)
        warning("Operation failed.")
    content(out)$data
}
