\name{get_album}
\alias{get_album}
\alias{get_album_images}
\title{Get album}
\description{Get album details and metadata, or images.}
\usage{
get_album(album, ...)

get_album_images(album, ...)
}
\arguments{
  \item{album}{An album ID or object of class \dQuote{imgur_album}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Get album details and metadata, including images contained in the album.}
\value{An object of class \dQuote{imgur_album}.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
get_album("cVsXX")

get_album_images("cVsXX")
}
}
