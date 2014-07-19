\name{favorite_album}
\alias{favorite_album}
\title{Favorite album}
\description{Favorite an album}
\usage{
favorite_album(album, ...)
}
\arguments{
  \item{album}{An album ID or object of class \dQuote{imgur_album}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Favorites an album.}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
tkn <- imgur_login()
favorite_album("cVsXX", token = tkn)
}
}
