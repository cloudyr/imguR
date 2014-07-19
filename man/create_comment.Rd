\name{create_comment}
\alias{create_comment}
\title{Create a comments}
\description{Create a comment on an image}
\usage{
create_comment(id, comment, parent = NULL, ...)
}
\arguments{
  \item{id}{An image ID or an object of class \dQuote{imgur_image}.}
  \item{comment}{A character string containing the comment.}
  \item{parent}{An optional comment ID to reply to.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{\code{account_favorites} retrieves details of a user's favoriates. By default (and if a \code{token} argument is supplied), the current user's favorites are returned. Specifying another username is also possible with or without a \code{token}.}
\value{For \code{account_favorites}, an object of class \dQuote{imgur_gallery_image} or \dQuote{imgur_gallery_album}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{get_comment}}

\code{\link{delete_comment}}
}
\examples{
\dontrun{
tkn <- imgur_login()

# comment on an image
cmt <- create_comment("vSXfU46", "This is a test comment", token = tkn)

# create a reply comment
create_comment("vSXfU46", "This is a test comment", parent = cmt, token = tkn)
}
}
