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
    if(file.info(file)$size > 1e7)
        warning("File is larger than 10MB and may not upload.")
    b <- list(image = fileUpload(file))
    if(!is.null(title))
        b$title <- title
    if(!is.null(description))
        b$description <- description
    if(!is.null(album))
        b$album <- album
    if(!is.null(name))
        b$name <- name
    if(!is.null(type))
        b$type <- type
    out <- imgurPOST('image', body = b, ...)
    structure(out, class = 'imgur_image')
}
