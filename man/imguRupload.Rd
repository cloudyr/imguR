\name{imguRupload}
\alias{imguRupload}
\title{
Uploads an image file to imgur.com
}
\description{
Takes an image file, and uploads it to imgur.com using the anonymous API and returns a list containing details of where the
image is hosted.
}
\usage{
imguRupload(filename, title = NULL, caption = NULL, name = basename(filename), apikey = "4feb29d00face5bc1b9dae536e15c373")
}
\arguments{
  \item{filename}{Name of the file to be uploaded to imgur.com}
  \item{title}{Image title passed to the imguR API}
  \item{caption}{Image title passed to the imguR API}
  \item{name}{Image title passed to the imguR API}
  \item{apikey}{The anonymous API key provided by imgur for the imguR package - this allows 50 image uploads per hour.}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A list parsed from the imguR JSON response after uploading the plot (see the imgur API for details)
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
\code{\link{dev.off}}
}
\examples{
tmpfile <- tempfile()
pdf(tmpfile)
plot(x=1:10, y=-1:-10, col=1:10, pch=19, main="oh hai dere")
dev.off()
temp <- imguRupload(tmpfile)
cat(temp["links.imgur_page"])
}

