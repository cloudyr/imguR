imguR Package (version 0.1.2)
============================

This is a simple package which enables intuitive uploading of plots created in R to the free image hosting service
www.imgur.com simply, quickly and intuitively.

Requirements and Installation
-----------------------------
*  RCurl and XML packages- avaiilable from CRAN

   install.packages(c("RCurl", "XML"))

*  imguR itself

   download.file("http://github.com/downloads/astatham/imgur-R-Package/imguR_0.1.2.tar.gz", "imguR_0.1.2.tar.gz")
   
   install.packages("imguR_0.1.2.tar.gz", repos=NULL, type="source")


Example Usage
-------------
    > library(imguR)

    > imguR()

    > plot(x=1:10, y=-1:-10, col=1:10, pch=19, main="oh hai dere")

    > dev.off()

    [1] "http://imgur.com/nsDOm"

Or check out this [gist](http://gist.github.com/557049) for an idea of some cool automation you can do using imguR().

Links
-----
[imguR package github](http://github.com/astatham/imgur-R-Package)

[The R Project](http://www.r-project.org/)

[RJSONIO home](http://www.omegahat.org/RJSONIO/)

[imgur](http://www.imgur.com)

[imgur API documentation](http://api.imgur.com)


Author Contact
--------------
Aaron Statham (aaron.l.statham@gmail.com)

Last updated 31st August 2010

