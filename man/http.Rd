\name{http}
\alias{imgurGET}
\alias{imgurPOST}
\alias{imgurPUT}
\alias{imgurDELETE}
\title{Workhorse HTTP functions}
\description{Basic workhorse HTTP method functions for executing Imgur.com API calls}
\usage{
imgurGET(endpoint, 
         base_url = "https://api.imgur.com/3/", 
         key = "1babd0decbb90f2",
         token = NULL,
         ...)
}
\arguments{
  \item{endpoint}{A named API endpoint.}
  \item{base_url}{The base URL for the API (by default the v3 API URL).}
  \item{key}{An API key (by default, the imguR package API key). The API key for version of imguR < 1.0.0 was \dQuote{4feb29d00face5bc1b9dae536e15c373}. Either \code{key} or \code{token} must be specified.}
  \item{token}{Optionally, an OAuth2.0 token (returned by \code{\link{imgur_login}}. Either \code{key} or \code{token} must be specified.}
  \item{...}{Other arguments passed to analogous HTTP method functions from httr.}
}
\details{These are the basic workhorse functions for the package, which users should not need to access directly (except perhaps for debugging).}
\value{Generally, a list. For \code{imgurDELETE}, an empty character string.}
%\references{}
\author{Thomas J. Leeper}
\seealso{\link{Authentication}}
%\examples{}
