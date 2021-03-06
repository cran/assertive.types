% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assert-is-a-type.R, R/assert-is-type-base.R, R/is-a-type.R, R/is-type-base.R
\name{assert_is_a_raw}
\alias{assert_is_a_raw}
\alias{assert_is_raw}
\alias{is_a_raw}
\alias{is_raw}
\title{Is the input raw?}
\usage{
assert_is_a_raw(x, severity = getOption("assertive.severity", "stop"))

assert_is_raw(x, severity = getOption("assertive.severity", "stop"))

is_a_raw(x, .xname = get_name_in_parent(x))

is_raw(x, .xname = get_name_in_parent(x))
}
\arguments{
\item{x}{Input to check.}

\item{severity}{How severe should the consequences of the assertion be?
Either \code{"stop"}, \code{"warning"}, \code{"message"}, or \code{"none"}.}

\item{.xname}{Not intended to be used directly.}
}
\value{
\code{is_raw} wraps \code{is.raw}, providing more 
information on failure. \code{is_a_raw} returns \code{TRUE} if the 
input is raw and scalar.  The \code{assert_*} functions return nothing but
throws an error if the corresponding \code{is_*} function returns 
\code{FALSE}.
}
\description{
Checks to see if the input is raw.
}
\examples{
assert_is_raw(as.raw(1:10))
assert_is_a_raw(as.raw(255))
#These examples should fail.
assertive.base::dont_stop(assert_is_raw(c(TRUE, FALSE)))
assertive.base::dont_stop(assert_is_a_raw(as.raw(1:10)))
assertive.base::dont_stop(assert_is_a_raw(raw()))
}
\seealso{
\code{\link[base]{is.raw}} and \code{\link{is_scalar}}.
}

