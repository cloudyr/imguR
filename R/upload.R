upload_image <-
imgur_upload <-
function(file, 
         title = NULL,
         description = NULL,
         album = NULL,
         name = NULL,
         type = 'file',
         ...) {
    if(!file.exists(file))
        stop("File not found!")
    b <- list(image = fileUpload(file),
              title = title, 
              description = description)
    out <- imgurPOST('image', body = b, ...)
    structure(out, class = 'imgur_image')
}
