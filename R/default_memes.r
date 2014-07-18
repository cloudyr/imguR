default_memes <- 
function(...){
    out <- imgurGET('memegen/defaults', ...)
    structure(out, class = 'imgur_image')
}