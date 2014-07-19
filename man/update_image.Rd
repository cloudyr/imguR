\name{update_image}
\alias{update_image}
\title{Update image}
\description{Update image metadata}
\usage{
update_image(id, title = NULL, description = NULL, ...)
}
\arguments{
  \item{id}{An image ID or object of class \dQuote{imgur_image}. If no \code{token} is supplied, \code{id} must be a deletehash from the original \code{\link{upload_image}} response.}
  \item{title}{Optionally, an image title.}
  \item{description}{Optionally, an image description.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Update the title or description of an already-uploaded image.}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{upload_image}}

\code{\link{delete_image}}
}
\examples{
\dontrun{
# using a deletehash, anonymously
u <- upload_image('file.png')
update_image(u$deletehash, title = 'New Title')

# using an OAuth token
tkn <- imgur_login()
u <- upload_image('file.png', token = tkn)
update_image(u, title = 'New Title', token = tkn)
}
}
