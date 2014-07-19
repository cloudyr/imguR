\name{account_albums}
\alias{account_albums}
\alias{account_album_count}
\title{Retrieve user albums}
\description{Retrieve details of a user's albums}
\usage{
account_albums(account = 'me', page = NULL, ids = TRUE, ...)

account_album_count(account = 'me', ...)
}
\arguments{
  \item{account}{A username, by default the current user (if \code{token} is supplied).}
  \item{page}{Optionally, a page of results to return.}
  \item{ids}{A logical indicating whether to only return album IDs.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{\code{account_albums} retrieves details of a user's albums. By default (and if a \code{token} argument is supplied), the current user's albums are returned. Specifying another username is also possible with or without a \code{token}. \code{account_album_count} returns just the number of albums, which is useful for handling pagination of the results.}
\value{For \code{account_albums}, an object of class \dQuote{imgur_albums}. For \code{account_album_count}, a number.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
account_albums('thosjleeper')
}
}
