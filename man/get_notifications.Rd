\name{get_notifications}
\alias{get_notifications}
\title{Get notifications}
\description{Get a specific notification or all notifications}
\usage{
get_notifications(id = NULL, only_new = FALSE, ...)
}
\arguments{
  \item{id}{A conversation ID. If \code{NULL}, all notifications (or all new notifications, depending on \code{only_new}) are returned.}
  \item{only_new}{A logical indicating whether only new notifications should be returned. Default is \code{FALSE}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{Retrieves a named notifications, possibly returned by \code{\link{get_notifications}}, or all (new) notifications.}
\value{An object of class \dQuote{imgur_notification}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{mark_notification}}
}
\examples{
\dontrun{
tkn <- imgur_login()
get_notifications(only_new = TRUE, token = tkn)
}
}
