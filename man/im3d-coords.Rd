\name{im3d-coords}
\alias{ijkpos}
\alias{im3d-coords}
\alias{xyzpos}
\title{Interconvert pixel and physical coordinates}
\usage{
xyzpos(d, ijk)

ijkpos(d, xyz, roundToNearestPixel = TRUE)
}
\arguments{
  \item{d}{An \code{im3d} object defining a physical space}

  \item{ijk}{an Nx3 matrix of pixel coordinates
  (1-indexed)}

  \item{xyz}{Nx3 matrix of physical coordinates}

  \item{roundToNearestPixel}{Whether to round calculated
  pixel coordinates to nearest integer value (i.e. nearest
  pixel). default: \code{TRUE}}
}
\value{
Nx3 matrix of physica l or pixel coordinates
}
\description{
\code{xyzpos} converts pixel coordinates to physical
coordinates

\code{ijkpos} converts physical coordinates to pixel
coordinates
}
\examples{
# make an emty im3d
d=im3d(,dim=c(20,30,40),origin=c(10,20,30),voxdims=c(1,2,3))
# check round trip for origin
stopifnot(all.equal(ijkpos(d,xyzpos(d,c(1,1,1))), c(1,1,1)))
}
\seealso{
Other im3d: \code{\link{boundingbox}},
\code{\link{boundingbox.default}},
\code{\link{boundingbox.im3d}},
\code{\link{boundingbox<-}}; \code{\link{im3d-io}},
\code{\link{read.im3d}}, \code{\link{write.im3d}};
\code{\link{im3d}}; \code{\link{imexpand.grid}};
\code{\link{imslice}}; \code{\link{origin}};
\code{\link{projection}}; \code{\link{threshold}},
\code{\link{threshold.im3d}}; \code{\link{unmask}};
\code{\link{voxdims}}, \code{\link{voxdims.default}}
}

