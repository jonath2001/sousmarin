% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multivariate.r
\name{goe}
\alias{goe}
\title{Sample from the gaussian orthogonal ensemble}
\usage{
goe(n)
}
\arguments{
\item{n}{Size of the M(n x n) matrix to sample}
}
\value{
An n x n matrix sampled from the GOE
}
\description{
We first generate a matrix whose elements are independent variables taken from a univariate
standard normal distribution. We then symmetrize this matrix and the result is from
the GOE.
}
\examples{
g  <- goe(10)
g1 <- goe(100)
}
