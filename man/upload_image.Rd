\name{upload_image}
\alias{upload_image}
\alias{imgur_upload}
\alias{imguRupload}
\title{Upload an image file to Imgur}
\description{Uploads a named image file to Imgur, optionally to a specified album.}
\usage{
upload_image(file, title = NULL, description = NULL, album = NULL,
             name = NULL, type = 'file', ...)
imgur_upload(file, title = NULL, description = NULL, album = NULL,
             name = NULL, type = 'file', ...)
}
\arguments{
  \item{file}{Name of the file to be uploaded to imgur.com}
  \item{title}{Optionally, an image title.}
  \item{description}{Optionally, an image description.}
  \item{album}{Optionally, an Imgur album ID.}
  \item{name}{Optionally, a file name, otherwise the \code{file} filename is used.}
  \item{type}{Should be \dQuote{file}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{\code{upload_image} allows users to upload a named file to Imgur. \code{imgur_upload} is an alias that can serve as a drop-in replacement for the \code{imgur_upload} function in the knitr package.}
\value{A list parsed from the imguR JSON response after uploading the plot (see the imgur API for details).}
\references{\url{https://api.imgur.com/endpoints/image#image-upload}}
\author{
Thomas J. Leeper, adapted from code by Aaron Statham (\code{imguRupload} from imguR v0.1) and Yihue Xie (\code{knitr::imgur_upload}).
}

\seealso{
\code{\link{imguR}}
\code{\link{dev.off}}
}
\examples{
\dontrun{
pdf(tmpfile <- tempfile())
hist(rnorm(20))
dev.off()
upload_image(tmpfile)
}
}
