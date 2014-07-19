\name{delete_conversation}
\alias{delete_conversation}
\title{Delete conversation}
\description{Delete a conversation}
\usage{
delete_conversation(id, ...)
}
\arguments{
  \item{id}{A conversation ID, possibly returned by \code{\link{get_conversations}}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{Deletes a conversation}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{get_conversations}}

\code{\link{create_message}}

\code{\link{delete_conversation}}
}
%\examples{}
