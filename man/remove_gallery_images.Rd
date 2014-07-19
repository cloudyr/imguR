\name{remove_gallery_image}
\alias{remove_gallery_image}
\description{Remove images from the gallery}
\usage{
remove_gallery_images(id, ...)
}
\arguments{
  \item{id}{An image ID or an object of class \dQuote{imgur_image} to add to the gallery.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{This function removes the specified image from the gallery.}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}
\seealso{
\code{\link{remove_gallery_images}}
}
%\examples{}
