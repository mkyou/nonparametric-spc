% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shewhart_mw_arl_calc.R
\name{shewhart_mw_arl_calc}
\alias{shewhart_mw_arl_calc}
\title{ARL Calculation for EWMA Control Chart Based on Signed-Ranks Statistic}
\usage{
shewhart_mw_arl_calc(m, n, cl, t = 10000, n_sim = 1000, side = "two.sided")
}
\arguments{
\item{n}{The sample size.}

\item{t}{The number of samples (lower values are problematic).}

\item{n_sim}{The number of simulations to perform.}

\item{side}{The side of the control chart, can be "two.sided",
"lower", or "upper".}

\item{lambda}{The smoothing parameter for the EWMA calculation.
Default is 0.05.}

\item{L}{The control limit multiplier for the UCL and LCL calculation.}
}
\value{
The average run length (ARL) for the EWMA Control Chart.
}
\description{
This function calculates the Average Run Length (ARL)
for the EWMA Control Chart based on the signed-ranks statistic.
}
\examples{
# Calculate the ARL for EWMA Control Chart based on signed-ranks statistic
ewma_sr_arl_calc(n = 10, lambda = 0.1, L = 2.794,
                 n_sim = 100, side = "two.sided")

}
