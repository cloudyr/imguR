\name{account_gallery}
\alias{account_gallery}
\title{User gallery profile}
\description{Retrieve details of a user's gallery profile}
\usage{
account_gallery(account = 'me', ...)
}
\arguments{
  \item{account}{A username, by default the current user (if \code{token} is supplied). \code{account_verified} and \code{send_verification} require a \code{token} argument.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{\code{account_gallery} returns basic details of a user's gallery profile, including counts of comments, likes, submissions, and trophies.}
\value{An object of class \dQuote{imgur_gallery_profile}.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
tkn <- imgur_login()
account_gallery(token = tkn)
}
}
