dev.off <- function(which = dev.cur(), justLink=TRUE) {
    #imguR hasn't been called/initialised
    if (!exists(".imguR.devices", envir=.GlobalEnv)) return(grDevices::dev.off(which))
    #grab the naughty global
    imguR.dev <- get(".imguR.devices", envir=.GlobalEnv)
    #if "which" is greater than any that have ever been an imguR device
    if (length(imguR.dev)<which) return(grDevices::dev.off(which))
    #if "which" is not currently an imguR device
    if (is.null(imguR.dev[[which]])) return(grDevices::dev.off(which))
    #Ok so lets close the imguR device and then submit it
    grDevices::dev.off(which)
    temp <- imguRupload(imguR.dev[[which]]$filename, imguR.dev[[which]]$title, imguR.dev[[which]]$caption, imguR.dev[[which]]$name)
    imguR.dev[[which]] <- NULL
    #reassign the global showing "which" has been closed
    assign(".imguR.devices", imguR.dev, envir=.GlobalEnv)
    if (justLink) return(temp["links.imgur_page"]) else return(temp)
}

