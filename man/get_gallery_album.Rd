\name{get_gallery_album}
\alias{get_gallery_album}
\title{Get gallery album}
\description{Get album details and metadata for an album in the gallery.}
\usage{
get_gallery_album(album, ...)
}
\arguments{
  \item{album}{An album ID or object of class \dQuote{imgur_album} or \dQuote{imgur_gallery_album}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Get album details and metadata, for an album in the gallery. This is basically the same as \dQuote{get_album}.}
\value{An object of class \dQuote{imgur_gallery_album}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{get_album}}

\code{\link{get_gallery}}

\code{\link{search_gallery}}
}
%\examples{}
