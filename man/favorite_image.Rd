\name{favorite_image}
\alias{favorite_image}
\title{Favorite image}
\description{Favorite an image}
\usage{
favorite_image(id, ...)
}
\arguments{
  \item{id}{An image ID or object of class \dQuote{imgur_image}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Favorites an image.}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
tkn <- imgur_login()
favorite_image("DgqMUeq", token = tkn)
}
}
