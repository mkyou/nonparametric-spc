% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ewma_ex.R
\name{ewma_ex}
\alias{ewma_ex}
\title{EWMA SN Control Chart for Grouped Data based on Exceedance Statistic}
\usage{
ewma_ex(
  X,
  Y,
  lambda = 0.05,
  L = 2.447,
  r = round(length(X)/2, 0),
  far = 0.0027,
  group_by_col = FALSE,
  plot = T,
  side = "two.sided"
)
}
\arguments{
\item{X}{A matrix or data frame containing the grouped data.}

\item{lambda}{The smoothing parameter for the EWMA calculation.
Default is 0.05.}

\item{L}{The control limit multiplier for the UCL and LCL calculation.}

\item{group_by_col}{A logical value indicating whether to treat
columns as separate groups. Default is FALSE.}

\item{plot}{A logical value indicating whether to plot the control chart.
Default is TRUE.}

\item{side}{The side of the control chart,
can be "two.sided", "lower", or "upper".}

\item{med}{The median value to be used for the SN calculation.
Default is 0.}
}
\value{
If `plot` is set to TRUE,
the function will generate a control chart plot.
If `plot` is set to FALSE,
the function will return the first out-of-control point (index)
based on the specified `side`.
}
\description{
This function calculates the Exponentially Weighted Moving Average
(EWMA) control chart based on the signs (SN) statistic for grouped data.
}
\examples{
# Generate random grouped data
X <- matrix(rnorm(100), nrow = 10)
# Create the EWMA SN control chart
ewma_ex(X)

}
