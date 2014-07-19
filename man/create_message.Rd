\name{create_message}
\alias{create_message}
\title{Create a comments}
\description{Create a comment on an image}
\usage{
create_message(recipient, body, ...)
}
\arguments{
  \item{recipient}{A character string containing the recipient's Imgur username.}
  \item{body}{A character string containing the message.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{Send a message to another Imgur user.}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{get_conversations}}

\code{\link{delete_conversation}}
}
\examples{
\dontrun{
tkn <- imgur_login()
create_message("thosjleeper", "This is a test comment from imguR", token = tkn)
}
}
