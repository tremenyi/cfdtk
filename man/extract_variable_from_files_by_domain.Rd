% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfdtk.R
\name{extract_variable_from_files_by_domain}
\alias{extract_variable_from_files_by_domain}
\title{Extract values from cells matching a particular domain from a list of NetCDF files}
\usage{
extract_variable_from_files_by_domain(
  target_files,
  target_domain,
  target_cells_lookup,
  silent = FALSE
)
}
\arguments{
\item{target_files}{Vector of NetCDF files to extract values from}

\item{target_domain}{The domain in the lookup object to get the matching cells for}

\item{target_cells_lookup}{Pre-calculated lookup listing the cells that exist in each region for each domain}

\item{silent}{If TRUE, will not loginfo for each file as it is processed (default: FALSE)}
}
\description{
A wrapper for `extract_variable_from_files_by_cells` where the target cells are extracted from a lookup for a particular domain
}
