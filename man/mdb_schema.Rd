% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mdb-schema.R
\name{mdb_schema}
\alias{mdb_schema}
\title{Create a cols() spec from schema}
\usage{
mdb_schema(file, table = NULL, condense = FALSE)
}
\arguments{
\item{file}{Path to the Microsoft Access file.}

\item{table}{Name of the table, use \code{\link[=mdb_tables]{mdb_tables()}}.}

\item{condense}{Should \code{\link[readr:spec]{readr::cols_condense()}} be called on the spec?}
}
\value{
A readr cols specification list.
}
\description{
Used to determine the column types for \code{\link[=read_mdb]{read_mdb()}}.
}
\examples{
\dontrun{
mdb_schema(mdb_example(), "Flights", condense = TRUE)
}
}
