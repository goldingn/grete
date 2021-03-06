% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/overloaded.R, R/operators.R, R/functions.R,
%   R/extract_replace_combine.R
\name{overloaded}
\alias{overloaded}
\alias{\%*\%}
\alias{chol2inv}
\alias{cov2cor}
\alias{identity}
\alias{colMeans}
\alias{rowMeans}
\alias{colSums}
\alias{rowSums}
\alias{sweep}
\alias{backsolve}
\alias{forwardsolve}
\alias{apply}
\alias{tapply}
\alias{eigen}
\alias{rdist}
\alias{abind}
\alias{diag}
\title{Functions overloaded by greta}
\usage{
x \%*\% y

chol2inv(x, size = NCOL(x), LINPACK = FALSE)

cov2cor(V)

identity(x)

colMeans(x, na.rm = FALSE, dims = 1L)

rowMeans(x, na.rm = FALSE, dims = 1L)

colSums(x, na.rm = FALSE, dims = 1L)

rowSums(x, na.rm = FALSE, dims = 1L)

sweep(x, MARGIN, STATS, FUN = "-", check.margin = TRUE, ...)

backsolve(r, x, k = ncol(r), upper.tri = TRUE, transpose = FALSE)

forwardsolve(l, x, k = ncol(l), upper.tri = FALSE, transpose = FALSE)

apply(X, MARGIN, FUN, ...)

tapply(X, INDEX, FUN, ...)

eigen(x, symmetric, only.values, EISPACK)

rdist(x1, x2 = NULL, compact = FALSE)

abind(
  ...,
  along = N,
  rev.along = NULL,
  new.names = NULL,
  force.array = TRUE,
  make.names = use.anon.names,
  use.anon.names = FALSE,
  use.first.dimnames = FALSE,
  hier.names = FALSE,
  use.dnns = FALSE
)

diag(x = 1, nrow, ncol)
}
\arguments{
\item{x, y, size, LINPACK, V, na.rm, dims, MARGIN, STATS, FUN, check.margin, \dots, r, k, upper.tri, transpose, l, X, INDEX, symmetric, only.values, EISPACK, x1, x2, compact, along, rev.along, new.names, force.array, make.names, use.anon.names, use.first.dimnames, hier.names, use.dnns, nrow, ncol}{arguments as in original documentation}
}
\description{
greta provides a wide range of methods to apply common R
functions and operations to \code{greta_array} objects. A few of these
functions and operators are not associated with a class system, so they are
overloaded here. This should not affect normal use of these functions, but
they need to be documented to satisfy CRAN's check.
}
\details{
Note that, since R 3.1, the LINPACK argument is defunct and silently ignored.
The argument is only included for compatibility with the base functions
that call it.

To find the original help file for these overloaded functions, search for
the function, e.g., \code{?cov2cor} and select the non-greta function.
}
