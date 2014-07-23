\name{get_gallery_image}
\alias{get_gallery_image}
\title{Get gallery image}
\description{Get gallery image details and metadata}
\usage{
get_gallery_image(id, ...)
}
\arguments{
  \item{id}{An image ID or object of class \dQuote{imgur_image} or \dQuote{imgur_gallery_image}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Get gallery image details and metadata. This is basically the same as \code{\link{get_image}}.}
\value{An object of class \dQuote{imgur_image}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{get_gallery}}

\code{\link{search_gallery}}

\code{\link{get_image}}
}
\examples{
\dontrun{
s <- search_gallery(query = 'meme')
get_gallery_image(s[[1]])
}
}
