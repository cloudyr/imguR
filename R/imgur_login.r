imgur_login <- 
function(client_id = "1babd0decbb90f2",
         secret = "06eed15f8e3662c20d7ff95a62853266400aae5a"){
    a <- list(response_type = "code",
              client_id = client_id)
    a <- paste(names(a), curlEscape(a), sep='=', collapse='&')
    e <- structure(list(authorize = paste('https://api.imgur.com/oauth2/authorize', a, sep='?'),
                        access = 'https://api.imgur.com/oauth2/token', 
                        addclient = 'https://api.imgur.com/oauth2/addclient'),
                        class = 'oauth_endpoint')
    app <- oauth_app('imgur', client_id, secret)
    token <- oauth2.0_token(e, app, use_oob = FALSE, cache = FALSE)
    if('error' %in% names(token$credentials)){
        warning('OAuth error ', token$credentials$error,
                ': ', token$credentials$error_description, sep='')
    }
    token$credentials$expiration <- System.time() + token$credentials$expires_in
    return(token)
}
