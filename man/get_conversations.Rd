\name{get_conversations}
\alias{get_conversations}
\title{Get conversations}
\description{Get a specific conversation or all conversations}
\usage{
get_conversations(id = NULL, ...)
}
\arguments{
  \item{id}{A conversation ID. If \code{NULL}, all conversations are returned.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{Retrieves a named conversation, possibly returned by \code{\link{get_conversations}}, or all conversations.}
\value{An object of class \dQuote{imgur_message}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{create_message}}

\code{\link{delete_conversation}}
}
\examples{
\dontrun{
tkn <- imgur_login()
get_conversations(token = tkn)
}
}
