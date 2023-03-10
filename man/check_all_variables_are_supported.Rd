% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfdtk.R
\name{check_all_variables_are_supported}
\alias{check_all_variables_are_supported}
\title{Check all variables are supported for extraction}
\usage{
check_all_variables_are_supported(target_variables)
}
\arguments{
\item{target_variables}{Vector of variables to check}
}
\description{
The "\code{build_data_table}" family of functions contain code to handle extraction of different types of variables.
For example, sometimes temperature will be stored in the source as Kelvin and sometimes it will be stored as Celcius.
Depending on the requirements of the project, the source data may need to be converted.
How each variable is converted must be handled manually.
This function notifies the user of the package if they are attempting to extract an unknown variable.
}
\details{
Unknown variables are extracted as-is from the source files with no conversions.

To handle a new variable with special requirements, code must be added to \code{build_data_table_for_cells} to perform any conversions on the source data, and the SUPPORTED_VARIABLES list in this function must be altered.
}
\examples{
target_variables <- c('tasmax', 'tasmin', 'pr')
check_all_variables_are_supported(target_variables)
}
