imgur <-
imguR <- 
function(device = png,
         title = NULL, 
         description = NULL, 
         album = NULL,
         name = NULL, 
         key = NULL,
         token = NULL,
         ...) {
    tmpfile <- tempfile()
    do.call(device, c(file = tmpfile, list(...)))
    out <- list(file = tmpfile,
                current = dev.cur(),
                title = title, 
                description = description, 
                name = name)
    if(!is.null(key))
        out$key <- key
    if(!is.null(token))
        out$token <- token
    structure(out, class = 'imgur-device')
}

imgur_off <-
function(obj, ...) {
    if(!inherits(obj, 'imgur_device'))
        stop("'obj' is not of class 'imgur_device'")
    if(obj$current %in% dev.list())
        dev.off(obj$current)
    tmp <- do.call(upload_image, c(obj, list(...)))
    unlink(obj$file)
    return(tmp)
}
