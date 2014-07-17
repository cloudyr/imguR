rate_limit <-
function(key = NULL, 
         token = NULL, 
         ...){
    out <- imgurGET('credits/', key = key, token = token, ...)
    structure(out, class = 'imgur_basic')
}
