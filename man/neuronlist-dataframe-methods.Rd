\name{neuronlist-dataframe-methods}
\alias{droplevels.neuronlist}
\alias{head.neuronlist}
\alias{neuronlist-dataframe-methods}
\alias{with.neuronlist}
\title{Methods for working with the dataframe attached to a neuronlist}
\usage{
\method{droplevels}{neuronlist}(x, except, ...)

\method{with}{neuronlist}(data, expr, ...)

\method{head}{neuronlist}(x, ...)
}
\arguments{
  \item{data}{A neuronlist object}

  \item{expr}{The expression to evaluate}

  \item{x}{A neuronlist object}

  \item{...}{Further arguments passed to default methods
  (and usually ignored)}

  \item{except}{indices of columns from which \emph{not} to
  drop levels}
}
\value{
the attached dataframe with levels dropped (NB \strong{not}
the neuronlist)
}
\description{
\code{droplevels} Remove redundant factor levels in
dataframe attached to neuronlist

\code{with} Evaluate expression in the context of dataframe
attached to a neuronlist

\code{head} Return the first part dataframe attached to
neuronlist
}
\seealso{
droplevels

with

head
}

