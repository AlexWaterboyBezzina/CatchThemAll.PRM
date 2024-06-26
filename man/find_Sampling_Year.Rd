% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find_Sampling_Year.R
\name{find_Sampling_Year}
\alias{find_Sampling_Year}
\title{Find Sampling Year}
\usage{
find_Sampling_Year(dates, wet_season_split = 7)
}
\arguments{
\item{dates}{A date vector of sampling dates. Must be in yyyy-mm-dd format.}

\item{wet_season_split}{The first month of the sampling year in numeric
e.g. July = 7.  July (7) is used as the default as this is the
first month of the Queensland wet season.}
}
\value{
A factored character vector
}
\description{
Find Sampling Year
}
\examples{
dates <- as.Date(c("2014-03-04", "2014-12-30", "2015-06-12"))
sampling_years <- find_Sampling_Year(dates) #cut of date
}
