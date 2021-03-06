\name{read.neuron.swc}
\alias{read.neuron.swc}
\title{Read a neuron in swc file format}
\usage{
read.neuron.swc(f, ...)
}
\arguments{
  \item{f}{path to file}

  \item{...}{Additional arguments passed to
  \code{as.neuron()} and then on to \code{neuron()}}
}
\description{
This function should normally only be called from
read.neuron and is not designed for use by end users.
}
\section{SWC Format}{
  According to
  \url{http://www.soton.ac.uk/~dales/morpho/morpho_doc} SWC
  file format has a radius not a diameter specification
}

