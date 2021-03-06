\name{seglist}
\alias{as.seglist}
\alias{as.seglist.igraph}
\alias{seglist}
\title{Make/convert neuron connectivity information into a seglist object}
\usage{
seglist(...)

as.seglist(x, ...)

\method{as.seglist}{igraph}(x, origin = NULL, Verbose = FALSE, ...)
}
\arguments{
  \item{...}{for \code{seglist} integer vectors to convert
  to a seglist}

  \item{x}{object passed to be converted to seglist}

  \item{origin}{The origin of the tree (see details)}

  \item{Verbose}{Whether to print progress updates to
  console (default FALSE)}
}
\value{
A \code{list} with additional class \code{seglist}.

a \code{list} with one entry for each unbranched segment.
}
\description{
\code{seglist} makes a seglist object from a list of
integer vectors of raw vertex ids. As a convenience if a
vector of numeric ids are passed these are assumed to
specify a neuron with 1 segment.

\code{as.seglist.igraph} will convert a fully connected
acyclic ngraph or igraph object into a seglist consisting
of exactly one subtree.
}
\details{
see \code{\link{neuron}} for further information about
seglists.

If the graph vertices have \code{vid} attributes, typically
defining the original vertex ids of a graph that was then
decomposed into subgraphs, then the origin is assumed to
refer to one of these vids not a raw vertex id of the
current graph. The returned seglist will also contain these
original vertex ids.
}
\examples{
sl=seglist(c(1:2),c(2:6))
}
\seealso{
\code{\link{neuron}}

\code{\link{ngraph},\link{igraph}}
}

