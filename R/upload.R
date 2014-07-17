upload <-
function(file, 
         title = NULL,
         description = NULL,
         album = NULL,
         name = NULL,
         type = 'file',
         key = "1babd0decbb90f2",
         token = NULL,
         ...) {
    if(!file.exists(file))
        stop("File not found!")
    if(!is.null(token)){
        if(!is.character(token))
            stop('The Imgur API OAuth token must be a character string!')
        out <- imgurPOST('image.json', 
                         body = list(image = fileUpload(file)), 
                         ...)
    } else {
        if(is.null(key)) {
            key <- "1babd0decbb90f2" # Thomas Leeper imguR
            #key <- "9f3460e67f308f6" # Yihui Xie knitr
            #key <- "4feb29d00face5bc1b9dae536e15c373" # Aaron Statham imguR
        }
        if(!is.character(key))
            stop('The Imgur API Key must be a character string!')
        out <- imgurPOST('image.json', 
                         body = list(image = fileUpload(file)),
                         ...)
    }
    structure(out)
}
