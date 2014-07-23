\name{memes}
\alias{get_memes_gallery}
\alias{get_meme}
\alias{default_memes}
\title{Memes}
\description{View memes and meme templates}
\usage{
default_memes(...)

get_memes_gallery(sort = 'viral', page = 0, window = NULL, ...)

get_meme(id, ...)
}
\arguments{
  \item{sort}{One of \dQuote{viral} (the default), \dQuote{time}, or \dQuote{top}.}
  \item{page}{A page number of results between 0 and 50.}
  \item{window}{One of \dQuote{day}, \dQuote{week}, \dQuote{month}, \dQuote{year}, or \dQuote{all}.}
  \item{id}{An image ID, perhaps returned by \code{get_memes_gallery}.}
  \item{...}{Other arguments passed to HTTP request functions, for example: \code{token} (an OAuth2.0 token) or \code{key} (an API key, used by default).}
}
\details{
\code{default_memes} returns a list of default memes available on Imgur. \code{get_memes_gallery} returns a list of trending memes. \code{get_meme} returns a specific meme image.
}
\value{A list of objects of class \dQuote{imgur_image} or \dQuote{imgur_gallery_image}.}
%\references{}
\author{Thomas J. Leeper}
%\seealso{}
\examples{
\dontrun{
default_memes()
get_memes_gallery('viral', page = 1)
}
}
