# imguR Package #

This is a simple package which enables intuitive uploading of plots created in R to the free image hosting service [imgur](http://www.imgur.com) simply, quickly, and intuitively via the [imgur v3 API](http://api.imgur.com).

## Requirements and Installation ##

[![Build Status](https://travis-ci.org/leeper/imguR.png?branch=master)](https://travis-ci.org/leeper/imguR)

Version 0.1 of **imguR** (using v2 of the API, by Aaron Statham) can be installed from [CRAN](http://cran.r-project.org/web/packages/imguR/index.html) using:

```
install.packages('imguR')
```

This version can be installed directly from GitHub using `devtools`:

```
if(!require('devtools')) {
    install.packages('devtools')
    library('devtools')
}
install_github('leeper/imguR')
```

## Example Usage ##

```
library('imguR')
i <- imgur('pdf')
plot(x=1:10, y=-1:-10, col=1:10, pch=19, main="oh hai dere")
imgur_off(i)
# [1] "http://imgur.com/nsDOm"
```

Or check out this [gist](http://gist.github.com/557049) for an idea of some cool automation you can do using imgur().
