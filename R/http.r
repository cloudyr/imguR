imgurGET <-
function(endpoint, 
         base_url = "https://api.imgur.com/3/", 
         key = "1babd0decbb90f2", 
         token = NULL,
         ...){
    if(!is.null(token)){
        out <- GET(paste0(base_url, endpoint), 
                   config(httpheader = c(Authorization = paste('Bearer', token))),
                   ...)
    } else if(!is.null(key)) {
        out <- GET(paste0(base_url, endpoint), 
                   config(httpheader = c(Authorization = paste('Client-ID', key))),
                   ...)
    } else {
        stop("Must specify an API key or OAuth2.0 Access Token.")
    }
    stop_for_status(out)
    out <- content(out)
    if(!out$success)
        warning("Operation failed.")
    return(out)
}

imgurPOST <-
function(endpoint, 
         base_url = "https://api.imgur.com/3/", 
         key = "1babd0decbb90f2", 
         token = NULL,
         ...){
    if(!is.null(token)){
        out <- POST(paste0(base_url, endpoint), 
                    config(httpheader = c(Authorization = paste('Bearer', token))),
                    ...)
    } else if(!is.null(key)) {
        out <- POST(paste0(base_url, endpoint), 
                    config(httpheader = c(Authorization = paste('Client-ID', key))),
                    ...)
    } else {
        stop("Must specify an API key or OAuth2.0 Access Token.")
    }
    stop_for_status(out)
    out <- content(out)
    if(!out$success)
        warning("Operation failed.")
    return(out)
}

imgurPUT <-
function(endpoint, 
         base_url = "https://api.imgur.com/3/", 
         key = "1babd0decbb90f2", 
         token = NULL,
         ...){
    if(!is.null(token)){
        out <- PUT(paste0(base_url, endpoint), 
                   config(httpheader = c(Authorization = paste('Bearer', token))),
                   ...)
    } else if(!is.null(key)) {
        out <- PUT(paste0(base_url, endpoint), 
                   config(httpheader = c(Authorization = paste('Client-ID', key))),
                   ...)
    } else {
        stop("Must specify an API key or OAuth2.0 Access Token.")
    }
    stop_for_status(out)
    out <- content(out)
    if(!out$success)
        warning("Operation failed.")
    return(out)
}

imgurDELETE <-
function(endpoint, 
         base_url = "https://api.imgur.com/3/", 
         key = "1babd0decbb90f2", 
         token = NULL,
         ...){
    if(!is.null(token)){
        out <- DELETE(paste0(base_url, endpoint), 
                      config(httpheader = c(Authorization = paste('Bearer', token))),
                      ...)
    } else if(!is.null(key)) {
        out <- DELETE(paste0(base_url, endpoint), 
                      config(httpheader = c(Authorization = paste('Client-ID', key))),
                      ...)
    } else {
        stop("Must specify an API key or OAuth2.0 Access Token.")
    }
    stop_for_status(out)
    out <- content(out)
    if(!out$success)
        warning("Operation failed.")
    return(out)
}
