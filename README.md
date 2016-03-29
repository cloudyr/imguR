# imguR Package #

**imguR** enables intuitive uploading of plots created in R to the free image hosting service [Imgur](http://www.imgur.com) simply, quickly, and intuitively via the [Imgur v3 API](http://api.imgur.com). The package is a complete client library for the Imgur API, meaning that one can also delete, favorite, and comment on images, as well as organize them in albums and galleries, among other operations.

By default, all images are loaded to Imgur anonymously. Optionally, using an OAuth2.0 login (see examples below), users can also gain full access to their own Imgur user account.


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
tkn <- imgur_login()
i <- imgur(token = tkn)
hist(rnorm(100))
imgur_off(i)
```


### OAuth2.0 Support ###

By default, all operations in **imguR** are performed anonymously using an API key attached to the **imguR** package and registered by the package maintainer. To use the package in a non-anonymous fashion (and to obtain higher API rate limits), operations needs to include an `token` argument, which must contain an OAuth2.0 token object. Note: Some operations cannot be performed anonymously and must be performed with the `token` argument; these operations produce an error if no `token` is supplied.

Generating an OAuth2.0 token is easy in an interactive session using `imgur_login()` (and completing a user account login in your web browser on a screen [that looks like this](http://i.imgur.com/DgqMUeq.png)), the response of which is a Reference Class object that can be passed to all package functions. For example:

```
# login
tkn <- imgur_login()

# upload a simple plot
i <- imgur(token = tkn)
hist(rnorm(100))
imgur_off(i)

# check account details
account(token = tkn)
account_image_count(token = tkn)
account_album_count(token = tkn)
```

The OAuth2.0 token is moderately long lived. You can see when it expires by looking at, e.g., `tkn$credentials$expiration`. If a token expires, it can be refreshed using the `refresh()` method, e.g., `tkn$refresh()`.

The ability to refresh the OAuth2.0 token also means that it is possible to use the token non-interactively. First, generate a token and save it locally (with the default `cache = TRUE` argument to `imgur_login`):

```
# generate a token interactively
tkn <- imgur_login()
```

Then, reload (using httr's built-in OAuth caching mechanism) and optionally refresh the token in the non-interactive session before performing any operations:

```
tkn <- imgur_login()
# tkn$refresh() # refresh token, if expired
i <- imgur(token = tkn)
hist(rnorm(100))
imgur_off(i)
```

Note: `imgur_login` uses OAuth credentials registered to the package maintainer. If you intend to make a very large number of API requests, it may be appropriate [to register your own application](https://api.imgur.com/oauth2/addclient). You can check user- and package-level rate limits with `rate_limit`.  


### Managing Images ###

If operations (e.g., `upload_image`) are performed with a `token` argument, they can subsequently be modified (e.g., `update_image`) by passing the relevant identifiers:

```
i <- imgur(token = tkn)
hist(rnorm(100))
u <- imgur_off(i)

# pass the `imgur_image` object to `update_image`:
update_image(u, title = 'My graph', description = 'A simple graph', token = tkn)

# or, pass just the image id:
update_image(u$id, title = 'My graph', description = 'A simple graph', token = tkn)
```

If you tried to perform the `update_image` operation without passing a `token` argument, the operation would fail. Similarly, if an image is uploaded anonymously, it is not possibly to anonymously modify it. Instead, the `imgur_image` response object (a simple list) will include a `deletehash` element, which is essentially a private key for the image. This can be used to modify the image:

```
i <- imgur()
hist(rnorm(100))
u <- imgur_off(i)

# pass just the image deletehash:
update_image(u$deletehash, title = 'My graph', description = 'A simple graph')
```

This procedure can also be used for other API operations, such as modifying albums. Not all operations can be performed anonymously, however.

## Requirements and Installation ##

[![CRAN Version](http://www.r-pkg.org/badges/version/imguR)](http://cran.r-project.org/package=imguR)
![Downloads](http://cranlogs.r-pkg.org/badges/imguR)
[![Travis-CI Build Status](https://travis-ci.org/leeper/imguR.png?branch=master)](https://travis-ci.org/leeper/imguR)
[![codecov.io](http://codecov.io/github/leeper/imguR/coverage.svg?branch=master)](http://codecov.io/github/leeper/imguR?branch=master)

The current stable version **imguR** can be installed from [CRAN](http://cran.r-project.org/package=imguR) using:

```
install.packages('imguR')
```

The development version can be installed directly from GitHub using `ghit`:

```
if(!require('ghit')) {
    install.packages('ghit')
}
ghit::install_github('leeper/imguR')
```
