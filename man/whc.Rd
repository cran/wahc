\name{whc}
\alias{whc}
\title{Fitting the fixed effect panel data model with heteroskedasticity and autocorrelation correction}
\usage{
whc(formula, data,n,t,...)
}
\arguments{
  \item{formula}{an object of class \code{\link{formula}}}

  \item{data}{the dataframe}

  \item{n}{the number of section}

  \item{t}{the time per section}

  \item{...}{not used}
}
\description{
Fitting the fixed effect panel data model with
heteroskedasticity and autocorrelation correction
}
\examples{
# Create data
pib<-as.matrix(c(12,3,4,0.4,0.7,5,0.7,0.3,0.6,89,7,8,45,7,4,5,0.5,5),nrows=18,ncols=1)
tir<-as.matrix(c(12,0.3,4,0.4,7,12,3.0,6.0,45,7.0,0.8,44,65,23,4,6,76,9),nrows=18,ncols=1)
inf<-as.matrix(c(1.2,3.6,44,1.4,0.78,54,0.34,0.66,12,0.7,8.0,12,65,43,5,76,65,8),nrows=18,ncols=1)
npl<-as.matrix(c(0.2,3.8,14,2.4,1.7,43,0.2,0.5,23,7.8,88,36,65,3,44,65,7,34),nrows=18,ncols=1)
#create a data frame
mdata<-data.frame(p=pib,t=tir,int=inf,np=npl)
#fit the model
fx<-whc(p~int+t,mdata,n=6,t=3)
summary(fx)
}

