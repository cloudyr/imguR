\name{update_album}
\alias{update_album}
\title{Update album}
\description{Update album metadata}
\usage{
update_album(album, id = NULL,
             title = NULL, description = NULL,
             privacy = NULL, layout = NULL, cover_id = NULL, ...)
}
\arguments{
  \item{album}{An album ID or object of class \dQuote{imgur_album}. If no \code{token} is supplied, \code{album} must be a deletehash from the original \code{\link{create_album}} response.}
  \item{id}{A vector of one or more image IDs to add to the album or a list of objects of class \dQuote{imgur_image}.}
  \item{title}{Optionally, an album title.}
  \item{description}{Optionally, an album description.}
  \item{privacy}{The privacy for the album. One of \dQuote{public}, \dQuote{hidden}, or \dQuote{secret}.}
  \item{layout}{The layout for the album. One of \dQuote{blog}, \dQuote{grid}, \dQuote{horizontal}, or \dQuote{vertical}.)}
  \item{cover_id}{An image ID or an object of class \dQuote{imgur_image}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Updates the images or metadata of an album. All options are are optional. To anonymously update an album, \code{album} must be the deletehash value from \code{\link{create_album}}.}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{create_album}}

\code{\link{add_album_images}}

\code{\link{remove_album_images}}

\code{\link{set_album_images}}
}
\examples{
\dontrun{
# update using a deletehash, anonymously
i <- imgur()
hist(rnorm(20))
img <- imgur_off(i)
a1 <-
create_album(id = img,
             title = 'My first Imgur album',
             description = 'A simple album',
             privacy = 'hidden',
             layout = 'grid',
             cover_id = img)
update_album(a1$deletehash, title = 'My second Imgur album')

# update using an OAuth token
tkn <- imgur_login()
a2 <-
create_album(id = img,
             title = 'My first Imgur album',
             description = 'A simple album',
             privacy = 'hidden',
             layout = 'grid',
             cover_id = img,
             token = tkn)
update_album(a2, title = 'My second Imgur album')
}
}
