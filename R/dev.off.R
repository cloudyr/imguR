imgur_off <- function(obj, justLink=TRUE) {
    if(!inherits(obj, 'imgur_device'))
        stop("'obj' is not of class 'imgur_device'")
    dev.off(obj$current)
    tmp <- imguRupload(obj$filename, obj$title, obj$caption, obj$name)
    return(temp)
}
