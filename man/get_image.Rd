\name{get_image}
\alias{get_image}
\title{Get image}
\description{Get image details and metadata}
\usage{
get_image(id, ...)
}
\arguments{
  \item{id}{An image ID or object of class \dQuote{imgur_image}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Get image details and metadata.}
\value{An object of class \dQuote{imgur_image}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{plot.imgur_image}}


}
\examples{
\dontrun{
get_image("vSXfU46")
}
}
