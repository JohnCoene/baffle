% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/actions.R
\name{triggers}
\alias{triggers}
\alias{b_once}
\alias{b_start}
\alias{b_reveal}
\alias{b_stop}
\title{Trigger}
\usage{
b_once(b, delay = 0)

b_start(b, delay = 0)

b_reveal(b, delay = 3000)

b_stop(b, delay = 3000)
}
\arguments{
\item{b}{An object of class \code{baffle} as returned \code{\link{b_affle}}.}

\item{delay}{Delay in milliseconds before action is triggered.}
}
\description{
Trigger baffling
}
\examples{
b_affle("Baffle this") \%>\%
  b_set("Baffling") \%>\%
  b_start() \%>\%
  b_reveal()

}
