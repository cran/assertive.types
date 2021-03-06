% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assert-is-date.R, R/is-date.R
\name{assert_is_date}
\alias{assert_is_date}
\alias{assert_is_posixct}
\alias{assert_is_posixlt}
\alias{is_date}
\alias{is_posixct}
\alias{is_posixlt}
\title{Is the input a date?}
\usage{
assert_is_date(x, severity = getOption("assertive.severity", "stop"))

assert_is_posixct(x, severity = getOption("assertive.severity", "stop"))

assert_is_posixlt(x, severity = getOption("assertive.severity", "stop"))

is_date(x, .xname = get_name_in_parent(x))

is_posixct(x, .xname = get_name_in_parent(x))

is_posixlt(x, .xname = get_name_in_parent(x))
}
\arguments{
\item{x}{Input to check.}

\item{severity}{How severe should the consequences of the assertion be?
Either \code{"stop"}, \code{"warning"}, \code{"message"}, or \code{"none"}.}

\item{.xname}{Not intended to be used directly.}
}
\value{
The \code{is_*} functions return \code{TRUE} or \code{FALSE} 
depending upon whether or not the input is a datetime object.

The \code{assert_*} functions return nothing but throw an error if the 
corresponding \code{is_*} function returns \code{FALSE}.
}
\description{
Checks to see if the input is a Date or POSIXt object.
}
\examples{
is_date(Sys.Date())
is_posixct(Sys.time())

# These examples should fail.
assertive.base::dont_stop(assert_is_date(Sys.time()))
}

