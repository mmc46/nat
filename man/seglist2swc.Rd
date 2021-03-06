\name{seglist2swc}
\alias{seglist2swc}
\title{Recalculate Neurons's SWCData using SegList and point information}
\usage{
seglist2swc(x, d, RecalculateParents = TRUE, DefaultLabel = 2L,
  ReplaceLabel = FALSE)
}
\arguments{
  \item{x}{Neuron containing both the SegList and d fields
  or a plain seglist}

  \item{d}{SWC data block (only expected if x is a
  SegList)}

  \item{RecalculateParents}{Whether to recalculate parent
  points (default T)}

  \item{DefaultLabel}{Integer label to use for SWC data
  chunk}

  \item{ReplaceLabel}{Whether to replace Label column if it
  already exists}
}
\value{
A neuron if x was a neuron otherwise dataframe of swc data
}
\description{
Uses the SegList field (indices into point array) to
recalculate point numbers and parent points for SWC data
field (d). If Label column is missing (or
ReplaceLabel=TRUE) then it is set to the value of
DefaultLabel (2=Axon by default). Note that the order of
point indices in SegList must match those in SWC.
}

