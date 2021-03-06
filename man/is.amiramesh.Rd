\name{is.amiramesh}
\alias{is.amiramesh}
\title{Check if file is amiramesh format}
\usage{
is.amiramesh(f)
}
\arguments{
  \item{f}{Path to one or more files to be tested
  \strong{or} an array of raw bytes, for one file only.}
}
\value{
logical
}
\description{
Check if file is amiramesh format
}
\details{
Tries to be as fast as possible by reading only first 11
bytes and checking if they equal "# AmiraMesh"
}
\seealso{
Other amira: \code{\link{amiratype}}; \code{\link{hxsurf}},
\code{\link{read.hxsurf}};
\code{\link{read.amiralandmarks}},
\code{\link{write.amiralandmarks}};
\code{\link{read.amiramesh}},
\code{\link{read.amiramesh.header}};
\code{\link{write.hxsurf}}
}

