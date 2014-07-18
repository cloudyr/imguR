get_replies <-
function(only_new = FALSE, ...){
    out <- imgurGET(paste0('account/me/notifications/replies'),
                    body = list(new = only_new), ...)
    structure(out, class = 'imgur_notification')
}
