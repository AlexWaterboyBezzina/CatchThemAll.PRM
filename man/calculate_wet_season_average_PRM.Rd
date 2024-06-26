% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate_wet_season_average_PRM.R
\name{calculate_wet_season_average_PRM}
\alias{calculate_wet_season_average_PRM}
\title{Calculate Wet Season Average Pesticide Risk Metric Values Using Multiple Imputation}
\usage{
calculate_wet_season_average_PRM(
  daily_PRM_data,
  PRM_group = "Total PRM",
  imputations = 1000,
  min_sampling_days = 12,
  wet_season_length = 182
)
}
\arguments{
\item{daily_PRM_data}{A data set of calculated daily average PRM values.
This data set should also include a "Date", "Sampling Year" and "Site Name" column.}

\item{PRM_group}{This specifies the name of the column to run the calculations on.
The daily average calculations gives PRM for each pesticide type and
total in different columns so this selects which to run. "Total" is set as
the default as it is the PRM of all pesticides.}

\item{imputations}{This sets the number of imputations to run.
The more imputations the greater the reliability,
however it also increases calculation time. You can increase imputations beyond 1000
however the improvement of the confidence interval on imputed values may not be
sufficient to warrant increased computing time. We recommend 1000 :)}

\item{min_sampling_days}{This is the minimum number of sampling days a site-year
combination must have to calculate a wet season average PRM.
No less than 12 is the default (1 for each month) for reliability but more is recommended.}

\item{wet_season_length}{The length of the wet season in days.}
}
\value{
A data frame
}
\description{
Calculate Wet Season Average Pesticide Risk Metric Values Using Multiple Imputation
}
\examples{
Canto_pesticides_LOR_treated <- treat_LORs_all_data(raw_data = Canto_pesticides,
pesticide_info = CalcThemAll.PRM::pesticide_info)
Canto_daily_PRM <- calculate_daily_average_PRM(LOR_treated_data = Canto_pesticides_LOR_treated)
Celestial_City_2019_2020_daily_PRM <- Canto_daily_PRM \%>\%
dplyr::filter(`Site Name` == "Celestial City" & `Sampling Year` == "2019-2020")
CC2019_2020_wet_season_PSII_PRM <- calculate_wet_season_average_PRM(daily_PRM_data =
Celestial_City_2019_2020_daily_PRM, PRM_group = "PSII Herbicide PRM")
CC2019_2020_wet_season_PSII_PRM

}
