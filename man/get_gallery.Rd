\name{get_gallery}
\alias{get_gallery}
\title{Get gallery}
\description{Get gallery details and metadata}
\usage{
get_gallery(section = 'hot', sort = 'viral', page = 0, 
            window = 'day', showViral = TRUE, ...)
}
\arguments{
  \item{section}{One of \dQuote{hot} (the default), \dQuote{top}, or \dQuote{user}.}
  \item{sort}{One of \dQuote{viral} (the default) or \dQuote{time}.}
  \item{page}{A page number of results between 0 and 50.}
  \item{window}{If \code{section == 'top'}, one of \dQuote{day} (the default), \dQuote{week}, \dQuote{month}, \dQuote{year}, or \dQuote{all}.}
  \item{showViral}{If \code{section == 'user'}, a logical indicating whether show viral images.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{Get gallery image details and metadata.}
\value{An object of class \dQuote{imgur_image}.}
%\references{}
\author{Thomas J. Leeper}

\seealso{
\code{\link{search_gallery}}

\code{\link{get_gallery_image}}

\code{\link{get_random_images}}
}
\examples{
\dontrun{
get_gallery()

get_gallery('top', window = 'week')
}
}
