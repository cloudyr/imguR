\name{get_replies}
\alias{get_replies}
\title{Get replies}
\description{Get replies}
\usage{
get_replies(only_new = FALSE, ...)
}
\arguments{
  \item{only_new}{A logical indicating whether only new notifications should be returned. Default is \code{FALSE}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{Retrieves replies.}
\value{An object of class \dQuote{imgur_notification}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{get_notifications}}
}
\examples{
\dontrun{
tkn <- imgur_login()
get_replies(only_new = TRUE, token = tkn)
}
}
