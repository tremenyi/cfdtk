% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfdtk.R
\name{make_time_dataframe_from_nc_files}
\alias{make_time_dataframe_from_nc_files}
\title{Make time data frame from time dimension of a list of NetCDF files}
\usage{
make_time_dataframe_from_nc_files(nc_files)
}
\arguments{
\item{nc_files}{List of NetCDF files}
}
\value{
A data frame with the described fields
}
\description{
Fields produced are: year, month, day, day_of_year, Austral_season_year, Austral_season_month, Austral_day_of_season
}
\examples{
\donttest{
nc_files <- dir(path = "/path/to/nc/files/", pattern = "*.nc", full.names = TRUE)
make_time_dataframe_from_nc_files(nc_files)
}
}
