% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/match.R
\name{matchAphiaRecordsByNames}
\alias{matchAphiaRecordsByNames}
\title{Match scientific names.}
\usage{
matchAphiaRecordsByNames(scientificnames, marine_only = FALSE,
  verbose = FALSE)
}
\arguments{
\item{marine_only}{Marine only flag.}

\item{verbose}{Print HTTP response information.}

\item{scientificname}{Scientific names.}
}
\value{
List of matching Aphia records for each input name.
}
\description{
Match scientific names.
}
\examples{
matchAphiaRecordsByNames(c("Buccinum fusiforme", "Abra alba"))
}

