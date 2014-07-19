\name{block_sender}
\alias{block_sender}
\title{Block a user}
\description{Block a user from sending messages}
\usage{
block_sender(username, ...)
}
\arguments{
  \item{username}{A character string containing an Imgur username.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{Block an Imgur user from sending messages.}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
tkn <- imgur_login()
block_sender("thosjleeper", token = tkn)
}
}
