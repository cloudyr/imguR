\name{imgur}
\alias{imgur}
\alias{imguR}
\alias{imgur_off}
\title{Initiate/close an Imgur-enabled Graphics Device}
\description{Open a specified graphics device function an configure it to upload to Imgur and then close it using \code{imgur_off}.}
\usage{
imgur(device = png, file = NULL, title = NULL, description = NULL, 
      album = NULL, name = NULL, key = NULL, token = NULL, ...)

imgur_off(obj, ...)
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
  \item{obj}{An object of class \dQuote{imgur_device}.}
  \item{...}{For \code{imgur}, other arguments passed to the specified device function. For \code{imgur_off}, additional arguments passed to \code{\link{upload_image}}.}
}
\details{
\code{imgur} is a wrapper for a local graphics device (by default, the \code{\link[grDevices]{png}} function. A temporary file is created by the graphics device. After plotting, a call to \code{imgur_off} uploads the file to imgur (using \code{\link{upload_image}}) and a URL of the files location is returned.
}
\value{For \code{imgur}, an object of class \dQuote{imgur_device} to be passed to \code{imgur_off}. For \code{imgur_off}, the response from \code{\link{upload_image}}.}
%\references{}
\author{
Thomas J. Leeper, based on code by Aaron Statham.
}

\seealso{
\code{\link{upload_image}}
}
\examples{
\dontrun{
i <- imgur('png')
hist(rnorm(20))
imgur_off(i)
}
}
