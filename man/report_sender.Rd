\name{report_sender}
\alias{report_sender}
\title{Report a user}
\description{Report a user for inappropriate behavior}
\usage{
report_sender(username, ...)
}
\arguments{
  \item{username}{A character string containing an Imgur username.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{Report an Imgur user for inappropiate behavior.}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
tkn <- imgur_login()
block_sender("someuser", token = tkn)
}
}
