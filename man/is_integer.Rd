% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assert-is-a-type.R, R/assert-is-type-base.R, R/is-a-type.R, R/is-type-base.R
\name{assert_is_an_integer}
\alias{assert_is_an_integer}
\alias{assert_is_integer}
\alias{is_an_integer}
\alias{is_integer}
\title{Is the input an integer?}
\usage{
assert_is_an_integer(x, severity = getOption("assertive.severity", "stop"))

assert_is_integer(x, severity = getOption("assertive.severity", "stop"))

is_an_integer(x, .xname = get_name_in_parent(x))

is_integer(x, .xname = get_name_in_parent(x))
}
\arguments{
\item{x}{Input to check.}

\item{severity}{How severe should the consequences of the assertion be?
Either \code{"stop"}, \code{"warning"}, \code{"message"}, or \code{"none"}.}

\item{.xname}{Not intended to be used directly.}
}
\value{
\code{is_integer} wraps \code{is.integer}, providing more 
information on failure. \code{is_an_integer} returns \code{TRUE} if the 
input is an integer and scalar.  The \code{assert_*} functions return 
nothing but throw an error if the corresponding \code{is_*} function
returns \code{FALSE}.
}
\description{
Checks to see if the input is an integer.
}
\examples{
assert_is_integer(1:10)
assert_is_an_integer(99L)
#These examples should fail.
assertive.base::dont_stop(assert_is_integer(c(1, 2, 3)))
assertive.base::dont_stop(assert_is_an_integer(1:10))
assertive.base::dont_stop(assert_is_an_integer(integer()))
}
\seealso{
\code{\link[base]{is.integer}} and \code{\link{is_scalar}}.
}

