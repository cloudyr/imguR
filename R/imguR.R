imguR <-
function(title=NULL, caption=NULL, name=NULL, ...) {
    tmpfile <- tempfile()
    pdf(tmpfile, ...)
    list(dev=dev.cur(), filename=tmpfile, title=title, caption=caption, name=name)
}

