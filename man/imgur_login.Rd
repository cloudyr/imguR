\name{imgur_login}
\alias{imgur_login}
\title{Login to Imgur}
\description{Complete an interactive login to Imgur to generate an OAuth2.0 token}
\usage{
imgur_login(client_id = "1babd0decbb90f2",
            secret = "06eed15f8e3662c20d7ff95a62853266400aae5a")
}
\arguments{
  \item{client_id}{A graphics device function. Default is \code{png}.}
  \item{secret}{Name of the file to be uploaded to imgur.com}
}
\details{Most operations in the package can be performed anonymously using the default package API key. In order to perform most account-specific operations it is necessary to use OAuth authentication, which can only be performed interactively via a web browser. \code{imgur_login} returns an OAuth2.0 reference class object that can be passed as the \code{token} argument to all other functions in the package. The OAuth token is moderately long lived; the response object contains a timestamp indicating its expiration time. The token can be subsequently refreshed using the \code{refresh()} method. See examples.}
\value{An OAuth2.0 reference class object, returned by \code{\link{oauth2.0_token}}.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
# login interactively
token <- imgur_login()

# use token in the `imgur` device
i <- imgur('png', token = token)
hist(rnorm(20))
imgur_off(i)

# store token in local directory and reload
save(token, file = 'imgur_token.Rdata')
rm(token)
load('imgur_token.Rdata')

# refresh token
token$refresh()
}
}
