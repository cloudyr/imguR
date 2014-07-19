\name{vote_comment}
\alias{vote_comment}
\title{Vote on a comment}
\description{Vote a comment up or down.}
\usage{
vote_comment(comment, vote = 'up', ...)
}
\arguments{
  \item{comment}{A comment ID, perhaps returned by \code{\link{create_comment}}.}
  \item{vote}{A character string indicating the direction of the vote, one of \dQuote{up} or \dQuote{down}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{Votes a comment up or down.}
\value{An object of class \dQuote{imgur_basic}}
%\references{}
\author{Thomas J. Leeper}
\seealso{
\code{\link{get_comment}}

\code{\link{report_comment}}
}
%\examples{}
