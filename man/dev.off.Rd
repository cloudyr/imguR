\name{dev.off}
\alias{dev.off}
\title{
Close a plotting device and upload to imguR
}
\description{
This function closes the specified plot (by default the current device) and if it is an imguR device, uploads the plots for web hosting 
}
\usage{
dev.off(which = dev.cur(), justLink = TRUE)
}
\arguments{
  \item{which}{An integer specifying a device number}
  \item{justLink}{A \code{boolean} indicating whether to return only a link.}
}
\details{
This package is a wrapper for the \code{pdf} function. A temporary file is created by \code{pdf}, acting as normal 
graphical device. After plotting, when \code{dev.off} is called, the file is closed, uploaded to imguR and a URL of
the files location is returned. In the case of multipaged pdfs being uploaded, imguR automatically concatenates them
into a single image.

This function overloads the \code{grDevices::dev.off()} function, inspects whether the device chosen to be closed in an
imguR device, and if so handles closing and uploading of this device, otherwise passes the \code{which} argument to be
handled by \code{grDevices::dev.off()}.
}
\value{
If \code{justLink} is TRUE, then a character vector of length one is returned containing the URL of where the plot is hosted.
If \code{justLink} is FALSE, a list parsed from the imguR JSON response after uploading the plot - importantly this includes 
the link which when visited will delete the plot from imguR.
}
\references{
http://www.imgur.com
http://github.com/astatham/imgur-R-Package
}
\author{
Aaron Statham (aaron.l.statham@gmail.com
}

\seealso{
\code{\link{imguR}}
\code{\link{imguRupload}}
}
\examples{
imguR()
plot(x=1:10, y=-1:-10, col=1:10, pch=19, main="oh hai dere")
cat(dev.off())
}
