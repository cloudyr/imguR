imguR <- function(title=NULL, caption=NULL, name=NULL, ...) {
    tmpfile <- tempfile()
    pdf(tmpfile, ...)
    which <- dev.cur()
    if (!exists(".imguR.devices", envir=.GlobalEnv)) imguR.dev <- list()
        else imguR.dev <- get(".imguR.devices", envir=.GlobalEnv)
    imguR.dev[[which]] <- list(filename=tmpfile, title=title, caption=caption, name=name)
    assign(".imguR.devices", imguR.dev, envir=.GlobalEnv)
    invisible()
}

