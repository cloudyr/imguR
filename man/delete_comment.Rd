\name{delete_comment}
\alias{delete_comment}
\title{Delete a comment}
\description{Delete a comment from an image}
\usage{
delete_comment(comment, ...)
}
\arguments{
  \item{comment}{A comment ID, perhaps returned by \code{\link{create_comment}}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{Delete a comment.}
\value{An object of class \dQuote{imgur_basic}}
%\references{}
\author{Thomas J. Leeper}
\seealso{
\code{\link{get_comment}}

\code{\link{create_comment}}
}
\examples{
\dontrun{
tkn <- imgur_login()
cmt <- create_comment("vSXfU46", comment = 'This is a test comment.')
delete_comment(cmt, token = tkn)
}
}
