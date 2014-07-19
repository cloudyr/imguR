\name{account_comments}
\alias{account_comments}
\alias{account_comment_count}
\title{Retrieve user albums}
\description{Retrieve details of a user's albums}
\usage{
account_comments(account = 'me', ids = TRUE, ...)

account_comment_count(account = 'me', ...)
}
\arguments{
  \item{account}{A username, by default the current user (if \code{token} is supplied).}
  \item{ids}{A logical indicating whether to only return album IDs.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{\code{account_comments} retrieves details of a user's comments. By default (and if a \code{token} argument is supplied), the current user's comments are returned. Specifying another username is also possible with or without a \code{token}. \code{account_comment_count} returns just the number of comments, which is useful for handling pagination of the results.}
\value{For \code{account_comments}, an object of class \dQuote{imgur_comment}. For \code{account_comment_count}, a number.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
account_comments('thosjleeper')
}
}
