% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/baffle.R
\name{init}
\alias{init}
\alias{b_affle}
\alias{b_affle_this}
\title{Baffle}
\usage{
b_affle(char = NULL, width = NULL, height = NULL, elementId = NULL)

b_affle_this(elementId = NULL, width = NULL, height = NULL)
}
\arguments{
\item{char}{Characters to baffle.}

\item{width, height}{Must be a valid CSS unit (like \code{'100\%'},
\code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
string and have \code{'px'} appended.}

\item{elementId}{A valid CSS id.}
}
\description{
Baffle text.
}
\examples{
b_affle("Baffling") \%>\%
  b_set("+#-•=~*") \%>\%
  b_start(1000) \%>\%
  b_reveal(2000)

}
