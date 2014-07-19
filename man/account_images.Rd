\name{account_images}
\alias{account_images}
\alias{account_image_count}
\title{Retrieve user images}
\description{Retrieve details of a user's images}
\usage{
account_images(account = 'me', page = NULL, ids = TRUE, ...)

account_image_count(account = 'me', ...)
}
\arguments{
  \item{account}{A username, by default the current user (if \code{token} is supplied).}
  \item{page}{Optionally, a page of results to return.}
  \item{ids}{A logical indicating whether to only return image IDs.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{\code{account_images} retrieves details of a user's images. By default (and if a \code{token} argument is supplied), the current user's images are returned. Specifying another username is also possible with or without a \code{token}. \code{account_image_count} returns just the number of images, which is useful for handling pagination of the results.}
\value{For \code{account_images}, an object of class \dQuote{imgur_image}. For \code{account_image_count}, a number.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
account_images('thosjleeper')
}
}
