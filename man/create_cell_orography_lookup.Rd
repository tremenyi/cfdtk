% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfdtk.R
\name{create_cell_orography_lookup}
\alias{create_cell_orography_lookup}
\title{Create cell orography lookup for a domain from a file}
\usage{
create_cell_orography_lookup(
  domain,
  file,
  surface_height_variable_name = "Surface.height",
  proj4string = common_defaults$proj4string
)
}
\arguments{
\item{domain}{Name of domain to create orography lookup for}

\item{file}{Raster file (e.g. NetCDF file) to use as source}

\item{surface_height_variable_name}{If this variable name is present, the values will be extracted from the raster and stored in the surface_height column of the orography lookup. Defaults to 'Surface.height', the value for CCAM orog NetCDF files.}

\item{proj4string}{A proj4string describing coordinate reference system to be used (set to "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs +towgs84=0,0,0" by default}
}
\value{
Dataframe with \code{lat} and \code{lon} values for each \code{cell}, and \code{surface_height} if available
}
\description{
Create cell orography lookup for a domain from a file
}
\examples{
\donttest{
nc_orog_file <- '/path/to/orog_file.nc'
create_cell_orography_lookup('DOMAIN-10', nc_orog_file)
}
}
