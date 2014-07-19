\name{create_album}
\alias{create_album}
\title{Create album}
\description{Create an album}
\usage{
create_album(id = NULL,
             title = NULL, description = NULL,
             privacy = NULL, layout = NULL, cover_id = NULL, ...)
}
\arguments{
  \item{id}{A vector of one or more image IDs to add to the album or a list of objects of class \dQuote{imgur_image}.}
  \item{title}{Optionally, an album title.}
  \item{description}{Optionally, an album description.}
  \item{privacy}{The privacy for the album. One of \dQuote{public}, \dQuote{hidden}, or \dQuote{secret}.}
  \item{layout}{The layout for the album. One of \dQuote{blog}, \dQuote{grid}, \dQuote{horizontal}, or \dQuote{vertical}.)}
  \item{cover_id}{An image ID or an object of class \dQuote{imgur_image}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Creates an Imgur album with the specified images and metadata. All options are are optional. Images can only be added to anonymous albums with \code{create_album}, not after the fact. Albums created with an OAuth2.0 authentication token can be modified in any way.}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{update_album}}

\code{\link{add_album_images}}

\code{\link{remove_album_images}}

\code{\link{set_album_images}}
}
\examples{
\dontrun{
i <- imgur()
hist(rnorm(20))
img <- imgur_off(i)
create_album(id = img,
             title = 'My first Imgur album',
             description = 'A simple album',
             privacy = 'hidden',
             layout = 'grid',
             cover_id = img)
}
}
