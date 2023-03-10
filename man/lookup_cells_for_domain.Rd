% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfdtk.R
\name{get_cells_for_domain}
\alias{get_cells_for_domain}
\alias{lookup_cells_for_domain}
\title{Get target cell indices for a domain from lookup object}
\usage{
get_cells_for_domain(cell_orog_lookup, target_cells_lookup, target_domain)

lookup_cells_for_domain(target_cells_lookup, target_domain)
}
\arguments{
\item{cell_orog_lookup}{Cell orography lookup, as created by \code{create_cell_orography_lookup}}

\item{target_cells_lookup}{Pre-calculated lookup listing the cells that exist in each region for each domain}

\item{target_domain}{The domain in the lookup object to get the matching cells for}
}
\value{
Vector of cells for \code{lookup_*} functions, tibble with cell orography data for \code{get_*} functions
}
\description{
Return the cells in the specified domain that cover all of the regions in the target cells lookup
}
\details{
Duplicate cells (i.e. cells that exist in multiple regions) will be listed only once.
}
