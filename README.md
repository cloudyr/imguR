# imguR Package (version 0.1.2) #

This is a simple package which enables intuitive uploading of plots created in R to the free image hosting service
www.imgur.com simply, quickly, and intuitively.

## Requirements and Installation ##

**imguR** can be installed from [CRAN](http://cran.r-project.org/web/packages/imguR/index.html) using:

```
install.packages('imguR')
```

Or directly from GitHub using `devtools`:

```
if(!require('devtools')) install.packages('devtools')
library('devtools')
install_github('leeper/imguR')
```

## Example Usage ##

```
library('imguR')
imguR()
plot(x=1:10, y=-1:-10, col=1:10, pch=19, main="oh hai dere")
dev.off()
# [1] "http://imgur.com/nsDOm"
```

Or check out this [gist](http://gist.github.com/557049) for an idea of some cool automation you can do using imguR().

## Links ##

* [imguR package github](http://github.com/astatham/imgur-R-Package)
* [The R Project](http://www.r-project.org/)
* [imgur](http://www.imgur.com)
* [imgur API documentation](http://api.imgur.com)


## Author Contact ##

This fork:
Thomas Leeper (thosjleeper@gmail.com)
Updated: 2014-06-15

Original package:
Aaron Statham (aaron.l.statham@gmail.com)
Last updated 31st August 2010
