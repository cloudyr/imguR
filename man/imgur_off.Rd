\name{imgur_off}
\alias{imgur_off}
\title{Close an Imgur-linked plotting device and upload image}
\description{This function closes the specified graphics device uploads the plot(s) to Imgur.}
\usage{
imgur_off(obj, ...)
}
\arguments{
  \item{obj}{An object of class \dQuote{imgur_device}.}
  \item{...}{Additional arguments passed to \code{\link{upload_image}}.}
}
\details{This function takes the output object from \code{\link{imgur}} as its first argument, wraps \code{dev.off} to close the graphics device opened by \code{\link{imgur}}, and uploads the device's image to Imgur via \code{\link{upload_image}}. If \code{dev.off} has already closed the device, that step is skipped to prevent errors.}
\value{The response from \code{\link{upload_image}}.}
%\references{}
\author{
Thomas J. Leeper, based on code by Aaron Statham.
}
\seealso{
\code{\link{imgur}}

\code{\link{upload_image}}
}
\examples{
\dontrun{
i <- imgur('png')
hist(rnorm(20))
imgur_off(i)
}
}
