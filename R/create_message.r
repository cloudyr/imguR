create_message <-
function(recipient,
         body,
         key = NULL, 
         token = NULL, 
         ...){
    out <- imgurPOST('conversations/', key = key, token = token, 
                     body = list(recipient = recipient,
                                 body = body)
                     ...)
    structure(out, class = 'imgur_basic')
}
