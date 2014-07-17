default_memes <- 
function(key = NULL, 
         token = NULL, 
         ...){
    out <- imgurGET('memegen/defaults', key = key, token = token, ...)
    structure(out, class = 'imgur_image')
}