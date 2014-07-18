get_meme <- 
function(id,
         ...){
    out <- imgurGET(paste0('gallery/g/memes/', id), ...)
    structure(out, class = 'imgur_gallery_image') # check this
}
