\name{search_gallery}
\alias{search_gallery}
\title{Search gallery}
\description{Search Imgur public gallery}
\usage{
search_gallery(query, sort = 'time', page = 1, ...)
}
\arguments{
  \item{query}{A character string containing a search term.}
  \item{sort}{One of \dQuote{time} or \dQuote{top}.}
  \item{page}{A page number.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Search the gallery and return gallery images and associated metadata.}
\value{An object of class \dQuote{imgur_gallery_album}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{get_gallery}}

\code{\link{get_gallery_image}}

\code{\link{get_random_images}}
}
\examples{
\dontrun{
search_gallery(query = 'meme')
}
}
