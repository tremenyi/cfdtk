% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfdtk.R
\name{generate_spatial_coverage_plots_for_all_entities_in_lookup}
\alias{generate_spatial_coverage_plots_for_all_entities_in_lookup}
\title{Generate a suite of spatial coverage plots}
\usage{
generate_spatial_coverage_plots_for_all_entities_in_lookup(
  target_cells_lookup,
  cell_orog_lookup,
  spatial_coverage_figures_directory,
  bg_map_sf = NULL,
  cell_numbers = FALSE,
  domain = NULL,
  save_a4 = FALSE
)
}
\arguments{
\item{target_cells_lookup}{Pre-calculated lookup listing the cells that exist in each region for each domain}

\item{cell_orog_lookup}{Cell orography lookup, as created by \code{create_cell_orography_lookup}}

\item{spatial_coverage_figures_directory}{The base directory for spatial coverage plots to be saved. The base set of plots will be placed in the \code{cell_boundaries} subdirectory.}

\item{bg_map_sf}{If provided, then a set of spatial coverage plots will be created with this sf object as the background. These will be placed in the \code{cell_on_bg_map} subdirectory.}

\item{cell_numbers}{If TRUE, then a set of spatial coverage plots will be created with the cell numbers labelled. These will be placed in the \code{cell_nummbers} subdirectory.}

\item{domain}{Use a specific domain for the plots, otherwise the preferred domain will be used (or if only one domain is present, then that domain will be used)}

\item{save_a4}{Save an A4 ready version of each plot}
}
\description{
Creates a spatial coverage plot for all of the entities in a \code{target_cells_lookup} list.
Cell boundaries plots are always created. Depending on the presence/value of the \code{bg_map_sf}
and \code{cell_numbers} parameters, plots on a background map, and plots with cell numbers can also be created.
}
\details{
These plots are useful for visualising the extent of each region. An example output structure, if "verify_spatial_coverage" is the last subdirectory in the
\code{spatial_coverage_figures_directory} paramater and
\code{bg_map_sf} is supplied and \code{cell_numbers} is TRUE, would be:

\preformatted{
- verify_spatial_coverage
  - cell_boundaries
    - region_1.png
    - region_2.png
  - cell_nummbers
    - region_1.png
    - region_2.png
  - cells_on_bg_map
    - region_1.png
    - region_2.png}
}
