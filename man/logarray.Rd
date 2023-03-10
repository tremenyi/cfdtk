% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfdtk.R
\name{logarray}
\alias{logarray}
\title{Quickly convert an array to a comma separated string for logging}
\usage{
logarray(array, collapse = ", ")
}
\arguments{
\item{array}{Array to log}

\item{collapse}{Character string to separate the results. Default is ' ,' (comma with a space)}
}
\value{
Values of the array concatenated into a single string, with the elements being separated by the value of \code{collapse}.
}
\description{
This function is a convenience wrapper for the \code{paste} function with a default \code{collapse} parameter set.
}
\examples{
array_to_log <- c('this', 'that', 'other')
loginfo(glue::glue("The values are: {logarray(array_to_log)}"))
loginfo(paste0("The values are: ", logarray(array_to_log)))
}
