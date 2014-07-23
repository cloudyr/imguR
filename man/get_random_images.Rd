\name{get_random_images}
\alias{get_random_images}
\title{Get random images}
\description{Get random images from the public gallery}
\usage{
get_random_images(page = 1, ...)
}
\arguments{
  \item{page}{A page number.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Get random images from the public gallery.}
\value{An object of class \dQuote{imgur_gallery_album}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{get_gallery}}

\code{\link{search_gallery}}

\code{\link{get_gallery_image}}
}
\examples{
\dontrun{
get_random_images()
}
}
