% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Common.R
\name{dtweibull}
\alias{dtweibull}
\alias{ptweibull}
\alias{qtweibull}
\alias{rtweibull}
\title{Density function of Truncated Weibull Distribution}
\usage{
dtweibull(x, shape, scale, min = 0, max = 1e+09)

ptweibull(q, shape, scale, min = 0, max = 1e+09)

qtweibull(p, shape, scale, min = 0, max = 1e+09)

rtweibull(n, shape, scale, min = 0, max = 1e+09)
}
\arguments{
\item{x}{Value of the variable after deductible and limit max(0,min(claim,limit)-deductible)}

\item{shape}{Shape parameter}

\item{scale}{Scale parameter}

\item{min}{Left truncation deductible}

\item{max}{Right truncation limit}

\item{q}{Value of the variable after deductible and limit max(0,min(claim,limit)-deductible)}

\item{p}{Value of the probability}

\item{n}{Number of samples}
}
\description{
Density function of Truncated Weibull Distribution

Cumulative probability function of Truncated Weibull Distribution

Quantile function of Truncated Weibull Distribution max(0,min(claim,limit)-deductible)

Random generation of Truncated Weibull Distribution max(0,min(claim,limit)-deductible)
}
\examples{
dtweibull(2.5,2,3)
ptweibull(2.5,2,3)
qtweibull(0.5,2,3)
rtweibull(100,2,3)
}
