imgur_login <- function(client_id,
                        secret){
    if(is.null(client_id))
        stop("Must supply developer username as 'client_id'")
    if(is.null(secret))
        stop("Must supply developer secret key as 'secret'")
    a <- list(response_type = "code",
              redirect_uri = redirect_uri,
              client_id = client_id,
              api_key = api_key)
    a <- paste(names(a), curlEscape(a), sep='=', collapse='&')
    e <- structure(list(authorize = 'https://api.imgur.com/oauth2/authorize',
                        access = 'https://api.imgur.com/oauth2/token', 
                        addclient = 'https://api.imgur.com/oauth2/addclient'),
                        class = 'oauth_endpoint')
    app <- oauth_app('imgur', client_id, secret)
    token <- oauth2.0_token(e, app, use_oob = FALSE, cache = FALSE)
    if('error' %in% names(token$credentials)){
        warning('OAuth error ', token$credentials$error,
                ': ', token$credentials$error_description, sep='')
    }
    return(token)
}
