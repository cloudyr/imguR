\name{get_reddit_gallery}
\alias{get_reddit_gallery}
\title{Get gallery}
\description{Get gallery details and metadata}
\usage{
get_reddit_gallery(subreddit, sort = 'time', page = 0, window = 'day', ...)
}
\arguments{
  \item{subreddit}{A character string containing the name of a sub-reddit.}
  \item{sort}{One of \dQuote{time} (the default) or \dQuote{top}.}
  \item{page}{A page number of results between 0 and 50.}
  \item{window}{If \code{sort == 'top'}, one of \dQuote{day} (the default), \dQuote{week}, \dQuote{month}, \dQuote{year}, or \dQuote{all}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Get gallery image details and metadata for a sub-reddit gallery.}
\value{An object of class \dQuote{imgur_image}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{search_gallery}}

\code{\link{get_gallery}}

\code{\link{get_random_images}}
}
\examples{
\dontrun{
get_reddit_gallery('dataisbeautiful')
}
}
