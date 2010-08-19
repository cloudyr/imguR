imguR.off <-
function(imguR.dev) {
    dev.off(imguR.dev$dev)
    imguRupload(imguR.dev$filename, imguR.dev$title, imguR.dev$caption, imguR.dev$name)
}

