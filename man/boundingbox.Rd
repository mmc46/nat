\name{boundingbox}
\alias{boundingbox}
\alias{boundingbox.default}
\alias{boundingbox.im3d}
\title{Get the bounding box of an im3d volume or other compatible object}
\usage{
boundingbox(x, ...)

\method{boundingbox}{im3d}(x, dims = dim(x), ...)

\method{boundingbox}{default}(x, dims, input = c("boundingbox", "bounds"),
  ...)
}
\arguments{
  \item{x}{A vector or matrix specifying a bounding box, an
  \code{im3d} object or, for \code{boundingbox.character},
  a character vector specifying a file.}

  \item{input}{Whether \code{x} defines the boundingbox or
  bounds of the image (see details).}

  \item{...}{Additional arguments for methods}

  \item{dims}{The number of voxels in each dimension when x
  is a BoundingBox matrix.}
}
\description{
Get the bounding box of an im3d volume or other compatible
object
}
\details{
The bounding box is defined as the position of the voxels
at the two opposite corners of the cuboid encompassing an
image, \emph{when each voxel is assumed to have a single
position (sometimes thought of as its centre) \strong{and
no physical extent.}} When written as a vector it should
look like: \code{c(x0,x1,y0,y1,z0,z1)}. When written as a
matrix it should look like:
\code{rbind(c(x0,y0,z0),c(x1,y1,z1))} where x0,y0,z0 is the
position of the origin.
}
\examples{
boundingbox(c(x0=0,x1=10,y0=0,y1=20,z0=0,z1=30))
}
\seealso{
Other im3d: \code{\link{im3d-io}}, \code{\link{read.im3d}},
\code{\link{write.im3d}}; \code{\link{im3d}};
\code{\link{voxdims}}, \code{\link{voxdims.default}}
}
