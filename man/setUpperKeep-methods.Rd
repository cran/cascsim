% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CTriangle.R
\docType{methods}
\name{setUpperKeep}
\alias{setUpperKeep}
\alias{setUpperKeep,Triangle,data.frame-method}
\alias{setUpperKeep,ANY-method}
\title{Set up the upper triangle for non-simulated data.}
\usage{
setUpperKeep(object, data, ...)

\S4method{setUpperKeep}{Triangle,data.frame}(object, data,
  evaluationDate = as.Date("2016-12-31"), lob = "Total",
  ctype = "Total")
}
\arguments{
\item{object}{Triangle Object}

\item{data}{Claim Data}

\item{...}{Additional function arguments.}

\item{evaluationDate}{Evaluation Date;}

\item{lob}{Line of Business;}

\item{ctype}{Claim Type.}
}
\description{
\code{setUpperKeep} sets up the upper triangle for non-simulated data.
}
\examples{
library(cascsim)
data(claimdata)
xTri <- new("Triangle", triID = "TRI1", type = "reportedCount", startDate=as.Date("2012-01-01"),
frequency="yearly", sim=1, percentile=50, iRBNER=TRUE, iROPEN=TRUE)
xTri<-setUpperTriangle(xTri,claimdata)
xTri<-setUpperKeep(xTri,claimdata)
xTri@upperkeep

xTri <- new("Triangle", triID = "TRI1", type = "closedCount", startDate=as.Date("2012-01-01"),
frequency="quarterly", sim=1, percentile=50, iRBNER=FALSE, iROPEN=TRUE)
xTri<-setUpperTriangle(xTri,claimdata)
xTri<-setUpperKeep(xTri,claimdata)
xTri@upperkeep

xTri <- new("Triangle", triID = "TRI1", type = "incurredLoss", startDate=as.Date("2012-01-01"),
frequency="yearly", sim=1, percentile=50, iRBNER=TRUE, iROPEN=FALSE)
xTri<-setUpperTriangle(xTri,claimdata)
xTri<-setUpperKeep(xTri,claimdata,lob="Auto",ctype="H")
xTri@upperkeep

}
