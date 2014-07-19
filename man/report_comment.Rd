\name{report_comment}
\alias{report_comment}
\title{Report a comment}
\description{Report a comment as inappropriate.}
\usage{
report_comment(comment, ...)
}
\arguments{
  \item{comment}{A comment ID, perhaps returned by \code{\link{create_comment}} or \code{\link{get_comment}}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Reports a comment as inappropriate.}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}
\seealso{
\code{\link{get_comment}}

\code{\link{vote_comment}}
}
%\examples{}
