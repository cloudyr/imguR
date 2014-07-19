\name{rate_limit}
\alias{rate_limit}
\title{API rate limits}
\description{Check user- and package-level rate limits}
\usage{
rate_limit(...)
}
\arguments{
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{This function returns a list detailing user- and package-level API rate limits. All calls to the API deduct one unit from rate limits, except for \code{\link{upload_image}}, which deducts 10. Rate limits are lower for anonymous requests than for authenticated requests. Limits exist at the user level and at the package level. The user-level rate limit are automatically reset periodically. The response object documents when that limit will be reset.

Rate limits are automatically checked during each request. Options can be set for low remaining usage warnings. By default (when the package is loaded) those options are: \code{options(imgur_user_rate_warning = 20)} and \code{options(imgur_client_rate_warning = 100)}.
}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
# rate limit for anonymous requests
rate_limit()

# rate limit for authenticated requests
tkn <- imgur_login()
rate_limit(token = tkn)
}
}
