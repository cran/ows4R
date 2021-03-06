% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WFSFeatureType.R
\docType{class}
\name{WFSFeatureType}
\alias{WFSFeatureType}
\title{WFSFeatureType}
\format{\code{\link{R6Class}} object.}
\usage{
WFSFeatureType
}
\value{
Object of \code{\link{R6Class}} modelling a WFS feature type
}
\description{
WFSFeatureType
}
\note{
Abstract class used by \pkg{ows4R}
}
\section{Methods}{

\describe{
 \item{\code{new(xmlObj, capabilities, version, logger)}}{
   This method is used to instantiate a \code{WFSFeatureType} object
 }
 \item{\code{getName()}}{
   Get feature type name
 }
 \item{\code{getTitle()}}{
   Get feature type title
 }
 \item{\code{getAbstract()}}{
   Get feature type abstract
 }
 \item{\code{getKeywords()}}{
   Get feature type keywords
 }
 \item{\code{getDefaultCRS()}}{
   Get feature type default CRS
 }
 \item{\code{getBoundingBox()}}{
   Get feature type bounding box
 }
 \item{\code{getDescription(pretty)}}{
   Get feature type description. If \code{pretty} is TRUE,
   the output will be an object of class \code{data.frame}
 }
 \item{\code{getFeatures()}}{
   Get features
 }
}
}

\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{FeatureType}
\keyword{OGC}
\keyword{WFS}
