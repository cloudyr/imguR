.account_create <-
function(account = 'me', ...){
    # need to handle reCAPTCHA, probably need a new package for that
    recaptcha_key <- "6LeZbt4SAAAAAG2ccJykgGk_oAqjFgQ1y6daNz-H"
    out <- imgurPOST(paste0('account/', account), 
                     recaptcha_challenge_field = challenge,
                     recaptcha_response_field = response,
                     ...)
    structure(out, class = 'imgur_account')
}
