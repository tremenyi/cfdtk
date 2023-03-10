% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfdtk.R
\name{aus_borders_as_sf}
\alias{aus_borders_as_sf}
\title{Get Australian country or state borders as an sf object}
\usage{
aus_borders_as_sf(database)
}
\arguments{
\item{database}{'australia' or a state in lower_case_with_underscores format}
}
\value{
Object of class sf
}
\description{
Get Australian country or state borders as an sf object
}
\examples{
\donttest{
ggplot() +
  geom_sf(data = aus_borders_as_sf('new_south_wales'),
  fill = NA, colour = 'firebrick3')
}
}
