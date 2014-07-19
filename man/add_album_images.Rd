\name{add_album_images}
\alias{add_album_images}
\alias{remove_album_images}
\alias{set_album_images}
\title{Manage album images}
\description{Add images to or remove images from an album}
\usage{
add_album_images(album, id, ...)

remove_album_images(album, id, ...)

set_album_images(album, id, ...)
}
\arguments{
  \item{album}{An album ID or object of class \dQuote{imgur_album}.}
  \item{id}{A vector of one or more image IDs to add to the album or a list of objects of class \dQuote{imgur_image}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{
\code{add_album_images} adds the specified images to the album.

\code{set_album_images} removes all current images from the album and adds the specified images to the album.

\code{remove_album_images} removes the specified images from the album.
}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{create_album}}

\code{\link{update_album}}
}
%\examples{}
