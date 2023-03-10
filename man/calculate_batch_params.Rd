% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfdtk.R
\name{calculate_batch_params}
\alias{calculate_batch_params}
\title{Calculate batch indexing parameters}
\usage{
calculate_batch_params(
  total_cells,
  batch_size,
  batch_start_number = 1,
  batch_limit = NA,
  silent = FALSE
)
}
\arguments{
\item{total_cells}{Total number of cells in extract}

\item{batch_size}{Size of each batch}

\item{batch_start_number}{The batch number to start from (if not supplied, then all batches will be processed, i.e. the first batch will be 1)}

\item{batch_limit}{Maximum number of batches to process (if not supplied, then all batches will be processed)}

\item{silent}{Suppress any logging output}
}
\value{
A named list with calculated batch paramaters for the given inputs. Named elements are:
\code{batch_start}: a vector with the starting cell of each batch;
\code{batch_end}: a vector with the ending cell of each batch;
\code{total_cells_in_batches}: total number of cells that will processed;
\code{batch_size}: size of each batch
\code{batch_start_number}: batch number to start from
\code{batch_limit}: the defined batch limit (if any);
\code{num_batches}: number of batches that will be processed.
}
\description{
Calculate batch indexing parameters
}
\examples{
\donttest{
target_cells_lookup <- readRDS('examples/target_cells_lookup_bom_forecast_districts.rds')
cells_to_process <- lookup_cells_for_domain(target_cells_lookup, 'AUS-50')
calculate_batch_params(total_cells = length(cells_to_process), batch_size = 100)
calculate_batch_params(total_cells = length(cells_to_process), batch_size = 100, batch_limit = 3)
}
}
