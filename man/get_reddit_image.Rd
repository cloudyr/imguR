\name{get_reddit_image}
\alias{get_reddit_image}
\title{Get reddit image}
\description{Get sub-reddit gallery image details and metadata}
\usage{
get_reddit_image(subreddit, id, ...)
}
\arguments{
  \item{subreddit}{A character string containing the name of a sub-reddit.}
  \item{id}{An image ID or object of class \dQuote{imgur_image} or \dQuote{imgur_gallery_image}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Get sub-reddit gallery image details and metadata. This is basically the same as \code{\link{get_gallery_image}} or \code{\link{get_image}}.}
\value{An object of class \dQuote{imgur_gallery_image}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{get_reddit_gallery}}

\code{\link{get_gallery_image}}

\code{\link{get_image}}
}
\examples{
\dontrun{
g <- get_reddit_gallery('dataisbeautiful')
get_reddit_image('dataisbeautiful', g[[1]])
get_image(g[[1]])
}
}
