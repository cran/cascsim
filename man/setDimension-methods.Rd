% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Copula.R
\docType{methods}
\name{setDimension<-}
\alias{setDimension<-}
\alias{setDimension<-,CopulaObj,numeric-method}
\alias{setDimension,ANY-method}
\title{Set the dimension of the copula.}
\usage{
setDimension(this, ...) <- value

\S4method{setDimension}{CopulaObj,numeric}(this) <- value
}
\arguments{
\item{this}{Copula Object}

\item{...}{Additional function arguments}

\item{value}{The dimension of the copula. It can also be set by providing marginal distributions}
}
\description{
Set the dimension of the copula.
}
\examples{
library(cascsim)
dist1<-new("Pareto",p1=20,p2=3)
dist2<-new("Normal",p1=5,p2=3,min=0,max=20,truncated=TRUE)
cop <- new("CopulaObj", param=c(0.5),marginal=list(dist1=dist1,dist2=dist2),dimension=2)
dist3<-new("Pareto",p1=10,p2=3)
setDimension(cop) <- 3
setMarginal(cop) <- list(dist1=dist1,dist2=dist2,dist3=dist3)
}
