% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfdtk.R
\name{lookup_region_for_cell}
\alias{lookup_region_for_cell}
\title{Lookup region(s) that a cell is in}
\usage{
lookup_region_for_cell(
  target_cells_lookup,
  cell,
  highest_weighting_only = TRUE
)
}
\arguments{
\item{target_cells_lookup}{Pre-calculated lookup listing the cells that exist in each region for each domain}

\item{cell}{Cell number to lookup}

\item{highest_weighting_only}{If TRUE, then only return the region with the highest weighting, otherwise return all regions sorted in order of decreasing weight}
}
\value{
Character vector of regions
}
\description{
Lookup region(s) that a cell is in
}
