get_album <- 
function(id, ...){
    out <- imgurGET(paste0('album/', id), ...)
    structure(out, class = 'imgur_album')
}