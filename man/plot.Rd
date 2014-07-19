\name{plot}
\alias{plot.imgur_image}
\alias{plot.imgur_gallery_image}
\title{Plot Imgur image}
\description{Plot an \dQuote{imgur_image} object}
\usage{
\method{plot}{imgur_image}(x, \dots)
\method{plot}{imgur_gallery_image}(x, \dots)
}
\arguments{
  \item{x}{An object of class \dQuote{imgur_image} or \dQuote{imgur_gallery_image}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Plot an object of class \dQuote{imgur_image} or \dQuote{imgur_gallery_image} in an R graphics window.}
\value{Invisibly, an object of class \dQuote{imgur_image} or \dQuote{imgur_gallery_image}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{\code{\link{get_image}}}
\examples{
\dontrun{
plot(get_image("vSXfU46"))
}
}
