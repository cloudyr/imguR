\name{account_favorites}
\alias{account_favorites}
\title{Retrieve user favorites}
\description{Retrieve details of a user's favorite images}
\usage{
account_favorites(account = 'me', gallery = FALSE, ...)
}
\arguments{
  \item{account}{A username, by default the current user (if \code{token} is supplied).}
  \item{gallery}{A logical indicating whether to only return gallery favorites.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{\code{account_favorites} retrieves details of a user's favoriates. By default (and if a \code{token} argument is supplied), the current user's favorites are returned. Specifying another username is also possible with or without a \code{token}.}
\value{For \code{account_favorites}, an object of class \dQuote{imgur_gallery_image} or \dQuote{imgur_gallery_album}.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
account_favorites('thosjleeper')
}
}
