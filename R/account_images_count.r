get_replies <-
function(...){
    out <- imgurGET(paste0('account/me/notifications/replies'),
                    body = list(new = only_new), ...)
    structure(out, class = 'imgur_notification')
}
