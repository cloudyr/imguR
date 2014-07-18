# imguR Package #

This package enables intuitive uploading of plots created in R to the free image hosting service [Imgur](http://www.imgur.com) simply, quickly, and intuitively via the [Imgur v3 API](http://api.imgur.com). The package is a complete client library for the Imgur API, meaning that one can also delete, favorite, and comment on images, as well as organize them in albums and galleries. By default, all images are loaded to Imgur anonymously. Optionally, using an OAuth2.0 login, users can also gain fully access to their own Imgur user account.

## Requirements and Installation ##

[![Build Status](https://travis-ci.org/leeper/imguR.png?branch=master)](https://travis-ci.org/leeper/imguR)

Version 0.1 of **imguR** (using v2 of the API, by Aaron Statham) can be installed from [CRAN](http://cran.r-project.org/web/packages/imguR/index.html) using:

```
install.packages('imguR')
```

The development version can be installed directly from GitHub using `devtools`:

```
if(!require('devtools')) {
    install.packages('devtools')
    library('devtools')
}
install_github('leeper/imguR')
```

## Example Usage ##

Below are some simple code examples demonstrating package functionality.

### The Imgur Graphics Device ###

The two workhorse functions for anonymously uploading images to Imgur are `imgur` and `imgur_off`, the latter of which wraps `dev.off` and completes the image upload.

```
library('imguR')
i <- imgur('pdf') # first argument to `imgur` is any graphics device function
plot(x=1:10, y=-1:-10, col=1:10, pch=19, main="oh hai dere")
imgur_off(i)
# [1] "http://imgur.com/nsDOm"
```

To upload images to a user account, first complete an OAuth login (see next section) and then pass the OAuth2.0 token object to `imgur`, e.g.:

```
token <- imgur_login()
imgur('png', token = token)
hist(rnorm(100))
imgur_off()
```

### OAuth Login ###

Coming soon...

### Managing Images ###

Coming soon...

