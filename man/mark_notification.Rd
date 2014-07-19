\name{mark_notification}
\alias{mark_notification}
\title{Mark notification read}
\description{Mark a notification as read}
\usage{
mark_notification(id, ...)
}
\arguments{
  \item{id}{A notification ID.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token), which is required.}
}
\details{Marks a named notification as read so that it does not show in future \code{\link{get_notifications}} results.}
\value{An object of class \dQuote{imgur_basic}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{get_notifications}}
}
%\examples{}
