% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfdtk.R
\name{get_cells_for_region_with_domain}
\alias{get_cells_for_region_with_domain}
\alias{lookup_cells_for_region_with_domain}
\title{Lookup cells in a specific domain for a region}
\usage{
get_cells_for_region_with_domain(
  cell_orog_lookup,
  target_cells_lookup,
  region,
  domain
)

lookup_cells_for_region_with_domain(target_cells_lookup, region, domain)
}
\arguments{
\item{cell_orog_lookup}{Cell orography lookup, as created by \code{create_cell_orography_lookup}}

\item{target_cells_lookup}{Pre-calculated lookup listing the cells that exist in each region for each domain}

\item{region}{Can be the numerical index or the name of the list element}

\item{domain}{Domain to lookup, e.g. 'VIC-5'}
}
\value{
Vector of cells for \code{lookup_*} functions, tibble with cell orography data for \code{get_*} functions
}
\description{
Retrieve the cells in a specific domain for a region
}
