.check_error <- function(x){
    out <- content(x)
    if(!out$success)
        warning('Imgur Error: ', out$data$error)
    stop_for_status(x)
    return(out$data)
}

imgurGET <-
function(endpoint, 
         base_url = "https://api.imgur.com/3/", 
         key = "1babd0decbb90f2", # Thomas Leeper imguR
         #key = "9f3460e67f308f6", # Yihui Xie knitr
         #key = "4feb29d00face5bc1b9dae536e15c373", # Aaron Statham imguR
         token = NULL,
         ...){
    if(!is.null(token)){
        if(inherits(token, "Token2.0"))
            token <- token$credentials$access_token
        if(!is.character(token))
            stop('The Imgur API OAuth token must be a character string!')
        out <- GET(paste0(base_url, endpoint), 
                   config(httpheader = c(Authorization = paste('Bearer', token))),
                   ...)
    } else if(!is.null(key)) {
        if(!is.character(key))
            stop('The Imgur API Key must be a character string!')
        out <- GET(paste0(base_url, endpoint), 
                   config(httpheader = c(Authorization = paste('Client-ID', key))),
                   ...)
    } else {
        stop("Must specify an API key or OAuth2.0 Access Token.")
    }
    .check_error(out)
}

imgurPOST <-
function(endpoint, 
         base_url = "https://api.imgur.com/3/", 
         key = "1babd0decbb90f2", # Thomas Leeper imguR
         #key = "9f3460e67f308f6", # Yihui Xie knitr
         #key = "4feb29d00face5bc1b9dae536e15c373", # Aaron Statham imguR
         token = NULL,
         ...){
    if(!is.null(token)){
        if(inherits(token, "Token2.0"))
            token <- token$credentials$access_token
        if(!is.character(token))
            stop('The Imgur API OAuth token must be a character string!')
        out <- POST(paste0(base_url, endpoint), 
                    config(httpheader = c(Authorization = paste('Bearer', token))),
                    ...)
    } else if(!is.null(key)) {
        if(!is.character(key))
            stop('The Imgur API Key must be a character string!')
        out <- POST(paste0(base_url, endpoint), 
                    config(httpheader = c(Authorization = paste('Client-ID', key))),
                    ...)
    } else {
        stop("Must specify an API key or OAuth2.0 Access Token.")
    }
    .check_error(out)
}

imgurPUT <-
function(endpoint, 
         base_url = "https://api.imgur.com/3/", 
         key = "1babd0decbb90f2", # Thomas Leeper imguR
         #key = "9f3460e67f308f6", # Yihui Xie knitr
         #key = "4feb29d00face5bc1b9dae536e15c373", # Aaron Statham imguR
         token = NULL,
         ...){
    if(!is.null(token)){
        if(inherits(token, "Token2.0"))
            token <- token$credentials$access_token
        if(!is.character(token))
            stop('The Imgur API OAuth token must be a character string!')
        out <- PUT(paste0(base_url, endpoint), 
                   config(httpheader = c(Authorization = paste('Bearer', token))),
                   ...)
    } else if(!is.null(key)) {
        if(!is.character(key))
            stop('The Imgur API Key must be a character string!')
        out <- PUT(paste0(base_url, endpoint), 
                   config(httpheader = c(Authorization = paste('Client-ID', key))),
                   ...)
    } else {
        stop("Must specify an API key or OAuth2.0 Access Token.")
    }
    .check_error(out)
}

imgurDELETE <-
function(endpoint, 
         base_url = "https://api.imgur.com/3/", 
         key = "1babd0decbb90f2", # Thomas Leeper imguR
         #key = "9f3460e67f308f6", # Yihui Xie knitr
         #key = "4feb29d00face5bc1b9dae536e15c373", # Aaron Statham imguR
         token = NULL,
         ...){
    if(!is.null(token)){
        if(inherits(token, "Token2.0"))
            token <- token$credentials$access_token
        if(!is.character(token))
            stop('The Imgur API OAuth token must be a character string!')
        out <- DELETE(paste0(base_url, endpoint), 
                      config(httpheader = c(Authorization = paste('Bearer', token))),
                      ...)
    } else if(!is.null(key)) {
        if(!is.character(key))
            stop('The Imgur API Key must be a character string!')
        out <- DELETE(paste0(base_url, endpoint), 
                      config(httpheader = c(Authorization = paste('Client-ID', key))),
                      ...)
    } else {
        stop("Must specify an API key or OAuth2.0 Access Token.")
    }
    .check_error(out)
}
