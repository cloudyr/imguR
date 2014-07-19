\name{account}
\alias{account}
\title{Retrieve user acccount details}
\description{Retrieve details of a user's account}
\usage{
account(account = 'me', ...)
}
\arguments{
  \item{account}{A username, by default the current user (if \code{token} is supplied).}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Returns basic details of a user account.}
\value{An object of class \dQuote{imgur_account}.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
account('thosjleeper')
}
}
