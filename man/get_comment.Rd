\name{get_comment}
\alias{get_comment}
\title{Get a comment}
\description{Get a comment (and, optionally, its replies).}
\usage{
get_comment(comment, replies = FALSE, ...)
}
\arguments{
  \item{comment}{A comment ID, perhaps returned by \code{\link{create_comment}}.}
  \item{replies}{A logical indicating whether to return replies to the comment, in addition to the comment itself.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Retrivies a comment and, optionally, any replies to that comment.}
\value{An object of class \dQuote{imgur_comment}}
%\references{}
\author{Thomas J. Leeper}
\seealso{
\code{\link{create_comment}}

\code{\link{delete_comment}}
}
%\examples{}
