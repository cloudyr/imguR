\name{add_gallery_images}
\alias{add_gallery_images}
\title{Add gallery images}
\description{Add images to the gallery}
\usage{
add_gallery_images(album = NULL, id = NULL, title = NULL, ...)
}
\arguments{
  \item{album}{An album ID or object of class \dQuote{imgur_album} to add to the gallery.}
  \item{id}{An image ID or an object of class \dQuote{imgur_image} to add to the gallery.}
  \item{title}{A title for the image}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{This function adds the specified image or album to the gallery. \code{title} is required by the API. If \code{NULL}, the title is drawn from a call to \code{\link{get_album}} or \code{\link{get_image}}.}
\value{An object of class \dQuote{imgur_gallery_image} or \dQuote{imgur_gallery_album}.}
%\references{}
\author{Thomas J. Leeper}
\seealso{
\code{\link{remove_gallery_images}}
}
%\examples{}
