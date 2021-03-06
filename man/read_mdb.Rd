% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read-mdb.R
\name{read_mdb}
\alias{read_mdb}
\title{Read a table as data frame}
\usage{
read_mdb(
  file,
  table = NULL,
  stdout = tempfile(),
  delim = ",",
  quote = "\\"",
  quote_escape = "\\"",
  col_names = TRUE,
  date_format = "\%Y-\%m-\%d \%H:\%M:\%S",
  col_types = mdb_schema(file, table),
  ...
)
}
\arguments{
\item{file}{Path to the Microsoft Access file.}

\item{table}{Name of the table, use \code{mdb_tables()}.}

\item{stdout}{Where to save the exported text; accepted options are \code{TRUE},
which creates a character vector in memory, or a file path to write
(defaults to \code{\link[=tempfile]{tempfile()}}).}

\item{delim}{Single character used to separate fields within a record.}

\item{quote}{Single character used to quote strings. Defaults to \verb{"}.}

\item{quote_escape}{A single character (or empty string) to escape double
quotes with text columns. Defaults to doubling although backslashes are
also used.}

\item{col_names}{Whether or not to suppress column names from the table.}

\item{date_format}{The format in which date columns are converted. MDB Tools
uses the \code{strftime(3)} format, similar to \code{\link[readr:parse_datetime]{readr::parse_date()}}. No need to
specify whole string. Defaults to ISO8601.}

\item{col_types}{One of \code{NULL}, a \code{\link[readr:cols]{readr::cols()}} specification, or a string.
See \code{vignette("readr")} for more details. A generic \code{\link[readr:cols]{readr::cols()}}
specification can be made by \code{\link[=mdb_schema]{mdb_schema()}} via the \code{mdb-schema} utility.}

\item{...}{Additional arguments passed to \code{\link[readr:read_delim]{readr::read_delim()}}.}
}
\value{
A data frame.
}
\description{
Convert a table to a temporary text file pass to \code{\link[readr:read_delim]{readr::read_delim()}}.
}
\examples{
\dontrun{
read_mdb(mdb_example(), "Flights")
}
}
