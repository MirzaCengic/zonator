% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/ZCurvesDataFrame-methods.R,
%   R/ZGroupCurvesDataFrame-methods.R, R/zresults-methods.R,
%   R/zvariant-methods.R
\docType{methods}
\name{curves}
\alias{curves}
\alias{curves,ZCurvesDataFrame-method}
\alias{curves,ZGroupCurvesDataFrame-method}
\alias{curves,Zresults-method}
\alias{curves,Zvariant-method}
\alias{curves,Zresults-method}
\title{Get curves results data of a Z* object.}
\usage{
curves(x, cols = NULL, groups = FALSE, lost.lower = 0, lost.upper = 1)

\S4method{curves}{ZCurvesDataFrame}(x, cols = NULL)

\S4method{curves}{ZGroupCurvesDataFrame}(x, cols = NULL)

\S4method{curves}{Zresults}(x, cols = NULL, groups = FALSE,
  lost.lower = 0, lost.upper = 1)

\S4method{curves}{Zvariant}(x, cols = NULL, groups = FALSE,
  lost.lower = 0, lost.upper = 1)
}
\arguments{
\item{x}{Z* object.}

\item{cols}{numeric or character vector of columns to be returned}

\item{groups}{logical indicating whether group curves data should be
returned.}

\item{lost.lower}{numeric defining the lower limit of pr_lost to be included
[0.0, 0.99] (default: 0.0)}

\item{lost.upper}{numeric defining the upper limit of pr_lost to be included
[0.01, 1.0] (default: 1.0)}
}
\value{
\code{\link{ZCurvesDataFrame}} or \code{\link{ZGroupCurvesDataFrame}}
  containing the (selected) curves file data. If column names are provided,
  but none are found, return NA.
}
\description{
pr_lost is always included in the returned data, but other columns can be
specified using \code{cols} argument.
}
\details{
Arguments \code{upper} and \code{lower} can be used to define a specific
range of pr_lost to be returned.

Method implementation in class \code{\link{Zvariant}} is just a thin
wrapper for passing the argumets to variant's code{\link{Zresults}} object.
}
\seealso{
\code{\link{Zresults-class}} \code{\link{Zvariant-class}}
\code{\link{read_curves}} \code{\link{read_grp_curves}}
}
\author{
Joona Lehtomaki \email{joona.lehtomaki@gmail.com}
}
\keyword{results}
