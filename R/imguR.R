imgur <- function(device = png, title = NULL, caption = NULL, name = NULL, ...) {
    tmpfile <- tempfile()
    do.call(device, c(file = tmpfile, list(...)))
    structure(list(filename = tmpfile,
                   current = dev.cur(),
                   title = title, 
                   caption = caption, 
                   name = name), class = 'imgur-device')
}

imgur_off <- function(obj, justLink=TRUE) {
    if(!inherits(obj, 'imgur_device'))
        stop("'obj' is not of class 'imgur_device'")
    dev.off(obj$current)
    tmp <- imguRupload(obj$filename, obj$title, obj$caption, obj$name)
    return(temp)
}
