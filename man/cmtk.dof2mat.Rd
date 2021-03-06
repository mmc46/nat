\name{cmtk.dof2mat}
\alias{cmtk.dof2mat}
\title{Convert CMTK registration to homogeneous affine matrix with dof2mat}
\usage{
cmtk.dof2mat(reg, Transpose = TRUE, version = FALSE)
}
\arguments{
  \item{reg}{Path to input registration file or 5x3 matrix
  of CMTK parameters.}

  \item{Transpose}{ouput matrix so that form on disk
  matches R's convention.}

  \item{version}{Whether to return CMTK version string}
}
\value{
4x4 transformation matrix
}
\description{
Convert CMTK registration to homogeneous affine matrix with
dof2mat
}
\details{
Transpose is true by default since this results in the
orientation of cmtk output files matching the orientation
in R. Do not change this unless you're sure you know what
you're doing!
}
\seealso{
Other cmtk-commandline: \code{\link{cmtk.mat2dof}}

Other cmtk-geometry: \code{\link{affmat2cmtkparams}};
\code{\link{cmtk.mat2dof}}; \code{\link{cmtkparams2affmat}}
}

