% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/changes.R
\name{cqc_changes}
\alias{cqc_changes}
\title{Changes}
\usage{
cqc_changes(organisation_type = c("provider", "location"),
  start_date = "2000-01-01", end_date = Sys.Date(), verbose = TRUE,
  clean_names = TRUE)
}
\arguments{
\item{organisation_type}{One of "provider" or "location".}

\item{start_date}{The start of the date range, in \code{"YYYY-MM-DD"} format,
or any vector of character, integer or numeric that can be be parsed
with \link[anytime:anytime]{anytime::anytime}.}

\item{end_date}{The end of the date range, in \code{"YYYY-MM-DD"} format,
or any vector of character, integer or numeric that can be be parsed
with \link[anytime:anytime]{anytime::anytime}.}

\item{verbose}{If \code{TRUE} prints download progress to console if requesting
more than 1,000 records. Defaults to \code{TRUE}.}

\item{clean_names}{If \code{TRUE}, converts a column names to snake_case.
Defaults to \code{TRUE}.}
}
\value{
A tibble of all providers or locations that had reported changes in
the given period
}
\description{
Return ID's of CQC providers or locations that have reported changes in a
given time period.
}
\examples{
\donttest{
changes_location <- cqc_changes(
  organisation_type = "LoCAtiOn",
  start_date = "2019-03-10",
  end_date = "2019-03-12"
)
}

}
