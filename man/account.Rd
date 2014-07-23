\name{account}
\alias{account}
\alias{account_verified}
\alias{send_verification}
\title{Retrieve user account details}
\description{Retrieve details of a user's account}
\usage{
account(account = 'me', ...)

account_verified(...)

send_verification(...)
}
\arguments{
  \item{account}{A username, by default the current user (if \code{token} is supplied). \code{account_verified} and \code{send_verification} require a \code{token} argument.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{\code{account} returns basic details of a user account. \code{account_verified} indicates whether one's user account has been email-verified. \code{send_verification} sends a verification email to the user's email account.}
\value{An object of class \dQuote{imgur_account}.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
# get account details for a user account
account('thosjleeper')

# check account verification
tkn <- imgur_login()
if(!account_verified(token = tkn))
    send_verification(token = tkn)
account(token = tkn)
}
}
