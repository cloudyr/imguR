rate_limit <-
function(...){
    out <- imgurGET('credits/', ...)
    structure(out, class = 'imgur_basic')
}
