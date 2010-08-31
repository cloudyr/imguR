imguR Package(version 0.1.1)
============================

This is a simple package which enables intuitive uploading of plots created in R to the free image hosting service
www.imgur.com simply, quickly and intuitively.

Requirements and Installation
-----------------------------
*  RCurl - avaiilable from CRAN

   install.packages("RCurl")

*  RJSONIO (I had a few troubles with the CRAN rjson package)

   install.packages("RJSONIO", repos = "http://www.omegahat.org/R")
   
   or to install from source (required on OSX as omegahat does not create RJSON binaries for OSX) 
   
   install.packages("RJSONIO", repos = "http://www.omegahat.org/R", type="source") ##This requires the [developer tools](http://cran.r-project.org/bin/macosx/RMacOSX-FAQ.html#Building-R-from-sources)

*  imguR itself

   download.file("http://github.com/downloads/astatham/imgur-R-Package/imguR_0.1.1.tar.gz", "imguR_0.1.1.tar.gz")
   
   install.packages("imguR_0.1.1.tar.gz", repos=NULL, type="source")


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

