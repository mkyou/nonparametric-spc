% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cusum_ex.R
\name{cusum_ex}
\alias{cusum_ex}
\title{CUSUM Control Chart for Grouped Data based on Exceedance}
\usage{
cusum_ex(
  X,
  Y,
  r = round(length(X)/2, 0),
  k = 0.5,
  h = 5,
  group_by_col = F,
  plot = T,
  side = "two.sided"
)
}
\arguments{
\item{X}{The reference value.}

\item{Y}{The data matrix or vector to be compared.}

\item{r}{The starting point for the reference value
(default is round(length(X)/2, 0)).}

\item{k}{The drift value for the CUSUM calculation
(default is 0.5).}

\item{h}{The control limit for the control chart.}

\item{group_by_col}{A logical value indicating whether to treat
columns as separate groups. Default is FALSE.}

\item{plot}{A logical value indicating whether to plot the control chart.
Default is TRUE.}

\item{side}{The side of the control chart,
can be "two.sided", "lower", or "upper".}
}
\value{
If `plot` is set to TRUE,
the function will generate a control chart plot.
If `plot` is set to FALSE,
the function will return the first out-of-control point (index)
based on the specified `side`.
}
\description{
This function generates a CUSUM Control Chart for grouped data based on exceedance statistics.
It compares a set of data points to a reference value and plots the control chart.
}
\examples{
# Generate CUSUM Control Chart for Grouped Data
X <- 10
Y <- matrix(rnorm(100), nrow = 10, ncol = 10)
cusum_ex(X, Y, r = 5, k = 0.5, h = 3, plot = TRUE, side = 'two.sided')

}
