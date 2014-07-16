imgur <- function(device, title = NULL, caption = NULL, name = NULL, ...) {
    tmpfile <- tempfile()
    do.call(device, c(file = tmpfile, list(...)))
    structure(list(filename = tmpfile,
                   current = dev.cur(),
                   title = title, 
                   caption = caption, 
                   name = name), class = 'imgur-device')
}
