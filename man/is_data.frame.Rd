% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assert-is-type-base.R, R/is-type-base.R
\name{assert_is_data.frame}
\alias{assert_is_data.frame}
\alias{is_data.frame}
\title{Is the input is a data.frame?}
\usage{
assert_is_data.frame(x, severity = getOption("assertive.severity", "stop"))

is_data.frame(x, .xname = get_name_in_parent(x))
}
\arguments{
\item{x}{Input to check.}

\item{severity}{How severe should the consequences of the assertion be?
Either \code{"stop"}, \code{"warning"}, \code{"message"}, or \code{"none"}.}

\item{.xname}{Not intended to be used directly.}
}
\value{
\code{is_data.frame} wraps \code{is.data.frame}, 
providing more information on failure.  \code{assert_is_data.frame} 
returns nothing but throws an error if \code{is_data.frame} 
returns \code{FALSE}.
}
\description{
Is the input is a data.frame?
}
\examples{
assert_is_data.frame(data.frame())
assert_is_data.frame(datasets::CO2)
}
\seealso{
\code{\link[base]{is.data.frame}}.
}

