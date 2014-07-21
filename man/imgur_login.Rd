\name{imgur_login}
\alias{imgur_login}
\title{Login to Imgur}
\description{Complete an interactive login to Imgur to generate an OAuth2.0 token}
\usage{
imgur_login(client_id = "1babd0decbb90f2",
            secret = "06eed15f8e3662c20d7ff95a62853266400aae5a",
            cache = TRUE)
}
\arguments{
  \item{client_id}{A graphics device function. Default is \code{png}.}
  \item{secret}{Name of the file to be uploaded to imgur.com}
  \item{cache}{A logical indicating whether to cache the OAuth2.0 token for use later on. If \code{TRUE}, OAuth2.0 token is automatically cached in a file called \dQuote{.httr-oauth} in the working directory.}
}
\details{Most operations in the package can be performed anonymously using the default package API key. In order to perform most account-specific operations it is necessary to use OAuth authentication, which can only be performed interactively via a web browser. \code{imgur_login} returns an OAuth2.0 reference class object that can be passed as the \code{token} argument to all other functions in the package.

The OAuth token is moderately long lived; the response object contains a timestamp indicating its expiration time. The token can be subsequently refreshed using the \code{refresh()} method. 

If \code{cache = TRUE}, the OAuth2.0 token is automatically cached in a file called \dQuote{.httr-oauth} in the working directory. This token will then be loaded automatically the next time \code{imgur_login} is called (even in a new R session). To override an existing cache, set \code{cache = FALSE}.}
\value{An OAuth2.0 reference class object, returned by \code{\link{oauth2.0_token}}.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
# login interactively
tkn <- imgur_login()
# use token in the `imgur` device
i <- imgur('png', token = tkn)
hist(rnorm(20))
imgur_off(i)

# reload previous token
rm(tkn)
# OAuth token is automatically stored by 
# `imgur_login` if `cache = TRUE` (the default)
# It is reloaded by calling `imgur_login`
tkn <- imgur_login()
token$refresh() # refresh token
}
}
