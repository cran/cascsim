% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DevFac.R
\docType{methods}
\name{setXname<-}
\alias{setXname<-}
\alias{setXname<-,DevFac,vector-method}
\alias{setXname,ANY-method}
\title{Set additional explanatory variable names.}
\usage{
setXname(this, ...) <- value

\S4method{setXname}{DevFac,vector}(this) <- value
}
\arguments{
\item{this}{DevFac Object}

\item{...}{Additional function arguments}

\item{value}{Character Vector}
}
\description{
\code{setXname<-} sets explanatory variable names in addition to "Intercept","DevelopmentYear","IncurredLoss", and "OSRatio". Additional variable names must match exactly with claim data. The xname vector is only used when ibnerfModel == TRUE.
}
\examples{
xIBNERFactor <- new("DevFac")
setID(xIBNERFactor)<-"IF1"
setFacModel(xIBNERFactor)<-TRUE
setFun(xIBNERFactor)<-"identity"
setXname(xIBNERFactor)<- c("x1","x2","x3")
setParas(xIBNERFactor)<-c(0.6,-0.2,0.01,-0.3,0.02,0.03,0.01,0.02)
xIBNERFactor<-setDevFac(xIBNERFactor)
xIBNERFactor
}
