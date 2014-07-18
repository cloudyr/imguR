\name{imgur}
\alias{imgur}
\alias{imguR}
\title{Initiate an Imgur-enabled Graphics Device}
\description{Open a specified graphics device function an configure it to upload to Imgur}
\usage{
imgur(device = png, file = NULL, title = NULL, description = NULL, 
      album = NULL, name = NULL, key = NULL, token = NULL, ...)
}
\arguments{
  \item{device}{A graphics device function. Default is \code{png}.}
  \item{file}{Name of the file to be uploaded to imgur.com}
  \item{title}{Optionally, an image title.}
  \item{description}{Optionally, an image description.}
  \item{album}{Optionally, an Imgur album ID.}
  \item{name}{Optionally, a file name, otherwise the \code{file} filename is used.}
  \item{key}{An API key. If \code{NULL}, the default imguR package API key is used.}
  \item{token}{Optionally, an OAuth2.0 token (returned by \code{\link{imgur_login}}. If \code{NULL}, the API key used instead.}
  \item{...}{Other arguments passed to the specified device function.}
}
\details{
This package is a wrapper for the \code{pdf} function. A temporary file is created by \code{pdf}, acting as normal 
graphical device. After plotting, when \code{dev.off} is called, the file is closed, uploaded to imguR and a URL of
the files location is returned. In the case of multipaged pdfs being uploaded, imguR automatically concatenates them
into a single image. 
}
\value{An object of class \dQuote{imgur_device} to be passed to \code{\link{imgur_off}}.}
%\references{}
\author{
Thomas J. Leeper, based on code by Aaron Statham.
}

\seealso{
\code{\link{imgur_off}}
\code{\link{upload_image}}
}
\examples{
\dontrun{
i <- imgur('png')
hist(rnorm(20))
imgur_off(i)
}
}
