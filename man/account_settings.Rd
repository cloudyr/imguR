\name{account_settings}
\alias{account_settings}
\title{Retrieve and modify account settings}
\description{Retrieve and modify account settings}
\usage{
account_settings(bio = NULL,
                 public_images = NULL,
                 messaging_enabled = NULL,
                 album_privacy = NULL,
                 accepted_gallery_terms = NULL,
                 ...)
}
\arguments{
  \item{bio}{The biography of user, which is displayed in the gallery profile page.}
  \item{public_images}{A logical indicating whether images public by default.}
  \item{messaging_enabled}{A logical indicating whether private messages are allowed.}
  \item{album_privacy}{The default privacy for albums. One of \dQuote{public}, \dQuote{hidden}, or \dQuote{secret}.}
  \item{accepted_gallery_terms}{A logical indicating whether the user agrees to the Imgur gallery terms.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{If none of the named arguments (other than \code{token}) are specified, this retrieves settings of the account. If any of the named arguments are specified, those parameters are modified.}
\value{If not modifying settings, an object of \dQuote{imgur_account_settings}, otherwise an object of \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

%\seealso{}
\examples{
\dontrun{
tkn <- imgur_login()

# retrieve settings
account_settings(token = tkn)

# set albums to default to public
account_settings(album_privacy = 'public', token = tkn)
}
}
