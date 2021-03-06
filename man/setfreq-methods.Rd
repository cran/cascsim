% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FitDist.R
\docType{methods}
\name{setfreq<-}
\alias{setfreq<-}
\alias{setfreq<-,FitDist,character-method}
\alias{setfreq,ANY-method}
\title{Set the data frequency.}
\usage{
setfreq(this, ...) <- value

\S4method{setfreq}{FitDist,character}(this) <- value
}
\arguments{
\item{this}{FitDist Object}

\item{...}{Additional function arguments}

\item{value}{A character string: "Annual" or "Monthly"}
}
\description{
Set the data frequency.
}
\examples{
library(cascsim)
data(claimdata)

#frequecy fitting example
findex <- new("Index", startDate = as.Date("2012-01-01"), tabulate=TRUE, monthlyIndex = c(rep(1,11),
cumprod(c(1,rep(1.5^(1/12),11))),cumprod(c(1.5,rep((1.3/1.5)^(1/12),11))),
cumprod(c(1.3,rep((1.35/1.3)^(1/12),11))),cumprod(c(1.35,rep((1.4/1.35)^(1/12),11))),1.4))
rawdata <- as.data.frame(as.Date(claimdata[(claimdata[,"LoB"]=="Auto" & 
claimdata[,"Type"]=="H"),]$occurrenceDate))
colnames(rawdata)<-"occurrenceDate"
xFit <- new("FitDist", observation=rawdata, trend=findex,startDate = as.Date("2012-01-01"),
method="mle",ifreq=TRUE,idate=TRUE, freq="Annual")
setfreq(xFit) <- "Monthly"
xFit@freq
}
