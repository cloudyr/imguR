\name{delete_image}
\alias{delete_image}
\title{Delete image}
\description{Delete an image}
\usage{
delete_image(id, ...)
}
\arguments{
  \item{id}{An image ID or object of class \dQuote{imgur_image}. If no \code{token} is supplied, \code{id} must be a deletehash from the original \code{\link{upload_image}} response.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Deletes an image.}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{upload_image}}

\code{\link{update_image}}
}
\examples{
\dontrun{
# using a deletehash, anonymously
u <- upload_image('file.png')
delete_image(u$deletehash)

# using an OAuth token
tkn <- imgur_login()
u <- upload_image('file.png', token = tkn)
delete_image(u, token = tkn)
}
}
