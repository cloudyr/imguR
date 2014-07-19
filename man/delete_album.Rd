\name{delete_album}
\alias{delete_album}
\title{Delete album}
\description{Delete an album}
\usage{
delete_album(album, ...)
}
\arguments{
  \item{album}{An album ID or object of class \dQuote{imgur_image}. If no \code{token} is supplied, \code{id} must be a deletehash from the original \code{\link{upload_image}} response.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Deletes an album.}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{create_album}}

\code{\link{favorite_album}}

\code{\link{update_album}}
}
\examples{
\dontrun{
# using an OAuth token
tkn <- imgur_login()
a <- account_albums(token = tkn)
delete_album(a[[1]], token = tkn)
}
}
