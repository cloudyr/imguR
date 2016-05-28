default_memes <- 
function(...){
    out <- imgurGET('memegen/defaults', ...)
    structure(lapply(out, `class<-`, 'imgur_image'), class = 'imgur_gallery_album')
}
