\name{imguRupload}
\alias{imguRupload}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
imguRupload(filename, title = NULL, caption = NULL, name = basename(filename), apikey = "4feb29d00face5bc1b9dae536e15c373")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{filename}{
%%     ~~Describe \code{filename} here~~
}
  \item{title}{
%%     ~~Describe \code{title} here~~
}
  \item{caption}{
%%     ~~Describe \code{caption} here~~
}
  \item{name}{
%%     ~~Describe \code{name} here~~
}
  \item{apikey}{
%%     ~~Describe \code{apikey} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(filename, title=NULL, caption=NULL, name=basename(filename), apikey="4feb29d00face5bc1b9dae536e15c373") {
    require(RCurl)
    require(RJSONIO)
    if (length(filename)>1) stop("'filename' must be length 1.")
    if (!file.exists(filename)) stop(filename, "does not exist!")
    params <- list(key=apikey, image=fileUpload(filename), name=filename)
    if (!is.null(title)) params[["title"]] <- title
    if (!is.null(caption)) params[["caption"]] <- caption
    fromJSON(rawToChar(postForm("http://api.imgur.com/2/upload.json", .params=params)))$upload
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
