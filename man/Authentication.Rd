\name{Authentication}
\alias{Authentication}
\title{Imgur API Authentication}
\description{Description of Imgur API authentication options}
%\usage{}
%\arguments{}
\details{All calls to the Imgur.com API must be authenticated. imguR provides two authentication methods: anonymous API key authentication (the default) and OAuth2.0 authentication.

By default, all calls are made anonymously. Most operations can be performed in this way. The package provides an API key for performing operations in this way. This default key can be overridden by passing \code{key} argument through any function. This may be useful if you intend to make a large number of anonymous requests using your own registered application.

Alternatively, calls can be made with a user-specific OAuth2.0 token. This token is generated using \code{\link{imgur_login}} in an interactive session. The token allows calls to be made to a specific Imgur.com user account, which eases making subsequent changes to uploaded images (e.g., updating their metadata, adding images to an album, or deleting images). The token can then be passed using the \code{token} argument to any function.

Note: if both \code{key} and \code{token} arguments are supplied to a function, the \code{token} argument always takes precedence.}
%\value{}
\references{\url{https://api.imgur.com/oauth2}}
%\author{}

\seealso{
\code{\link{imgur_login}}
}
\examples{
\dontrun{
# OAuth2.0-authenticated use

# interactive OAuth login
tkn <- imgur_login()

# upload a simple graph
i <- imgur(token = tkn)
hist(rnorm(100))
u <- imgur_off(i)

# pass the `imgur_image` object to `update_image`:
update_image(u, title = 'My graph', description = 'A simple graph', token = tkn)

# or, pass just the image id:
update_image(u$id, title = 'My graph', description = 'A simple graph', token = tkn)

# periodically refresh token
tkn$refresh()
}

\dontrun{
# anonymous use

# upload a simple graph
i <- imgur()
hist(rnorm(100))
u <- imgur_off(i)

# pass just the image deletehash:
update_image(u$deletehash, title = 'My graph', description = 'A simple graph')
}

}
