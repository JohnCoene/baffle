% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set.R
\name{b_set}
\alias{b_set}
\title{Set}
\usage{
b_set(b, char = NULL, speed = NULL, ...)
}
\arguments{
\item{b}{An object of class \code{baffle} as returned \code{\link{b_affle}}.}

\item{char}{Characters to baffle.}

\item{speed}{Speed of blaffling.}

\item{...}{Any opther option from \url{https://github.com/camwiegert/baffle#options}.}
}
\description{
Set baffle options.
}
\examples{
b_affle("Baffling") \%>\%
  b_set("+#-•=~*") \%>\%
  b_start(2000) \%>\%
  b_reveal(5000)

}
