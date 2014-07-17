imgur <-
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
    structure(list(file = tmpfile,
                   current = dev.cur(),
                   title = title, 
                   description = description, 
                   name = name,
                   key = key,
                   token = token), class = 'imgur-device')
}

imgur_off <-
function(obj, ...) {
    if(!inherits(obj, 'imgur_device'))
        stop("'obj' is not of class 'imgur_device'")
    dev.off(obj$current)
    tmp <- do.call(upload_image,
                   c(file = obj$file,
                     title = obj$title,
                     description = obj$description,
                     name = obj$name,
                     key = obj$key,
                     token = obj$token,
                     list(...)))
    unlink(obj$file)
    return(tmp)
}
