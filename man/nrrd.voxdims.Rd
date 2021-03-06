\name{nrrd.voxdims}
\alias{nrrd.voxdims}
\title{Return voxel dimensions (by default absolute voxel dimensions)}
\usage{
nrrd.voxdims(file, ReturnAbsoluteDims = TRUE)
}
\arguments{
  \item{file}{path to nrrd/nhdr file or a list containing a
  nrrd header}

  \item{ReturnAbsoluteDims}{Defaults to returning absolute
  value of dims even if there are any negative space
  directions}
}
\value{
voxel dimensions as numeric vector
}
\description{
Return voxel dimensions (by default absolute voxel
dimensions)
}
\details{
NB Can handle off diagonal terms in space directions
matrix, BUT assumes that space direction vectors are
orthogonal.
}
\author{
jefferis
}
\seealso{
\code{\link{read.nrrd.header}}
}

