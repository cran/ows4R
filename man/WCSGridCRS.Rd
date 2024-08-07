% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WCSGridCRS.R
\docType{class}
\name{WCSGridCRS}
\alias{WCSGridCRS}
\title{WCSGridCRS}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} modelling a WCS grid CRS
}
\description{
WCSGridCRS

WCSGridCRS
}
\note{
Class used internally by ows4R.
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{Coverage}
\keyword{OGC}
\keyword{WCS}
\keyword{crs}
\keyword{grid}
\section{Super class}{
\code{\link[ows4R:OGCAbstractObject]{ows4R::OGCAbstractObject}} -> \code{WCSGridCRS}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{GridBaseCRS}}{grid base CRS}

\item{\code{GridType}}{grid type}

\item{\code{GridOrigin}}{grid origin}

\item{\code{GridOffsets}}{grid offsets}

\item{\code{GridCS}}{grid CS}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-WCSGridCRS-new}{\code{WCSGridCRS$new()}}
\item \href{#method-WCSGridCRS-clone}{\code{WCSGridCRS$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="OGCAbstractObject" data-id="ERROR"><a href='../../ows4R/html/OGCAbstractObject.html#method-OGCAbstractObject-ERROR'><code>ows4R::OGCAbstractObject$ERROR()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="OGCAbstractObject" data-id="INFO"><a href='../../ows4R/html/OGCAbstractObject.html#method-OGCAbstractObject-INFO'><code>ows4R::OGCAbstractObject$INFO()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="OGCAbstractObject" data-id="WARN"><a href='../../ows4R/html/OGCAbstractObject.html#method-OGCAbstractObject-WARN'><code>ows4R::OGCAbstractObject$WARN()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="OGCAbstractObject" data-id="encode"><a href='../../ows4R/html/OGCAbstractObject.html#method-OGCAbstractObject-encode'><code>ows4R::OGCAbstractObject$encode()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="OGCAbstractObject" data-id="getClass"><a href='../../ows4R/html/OGCAbstractObject.html#method-OGCAbstractObject-getClass'><code>ows4R::OGCAbstractObject$getClass()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="OGCAbstractObject" data-id="getClassName"><a href='../../ows4R/html/OGCAbstractObject.html#method-OGCAbstractObject-getClassName'><code>ows4R::OGCAbstractObject$getClassName()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="OGCAbstractObject" data-id="getNamespaceDefinition"><a href='../../ows4R/html/OGCAbstractObject.html#method-OGCAbstractObject-getNamespaceDefinition'><code>ows4R::OGCAbstractObject$getNamespaceDefinition()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="OGCAbstractObject" data-id="isFieldInheritedFrom"><a href='../../ows4R/html/OGCAbstractObject.html#method-OGCAbstractObject-isFieldInheritedFrom'><code>ows4R::OGCAbstractObject$isFieldInheritedFrom()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="OGCAbstractObject" data-id="logger"><a href='../../ows4R/html/OGCAbstractObject.html#method-OGCAbstractObject-logger'><code>ows4R::OGCAbstractObject$logger()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="OGCAbstractObject" data-id="print"><a href='../../ows4R/html/OGCAbstractObject.html#method-OGCAbstractObject-print'><code>ows4R::OGCAbstractObject$print()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WCSGridCRS-new"></a>}}
\if{latex}{\out{\hypertarget{method-WCSGridCRS-new}{}}}
\subsection{Method \code{new()}}{
Initializes an object of class \link{WCSGridCRS}
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WCSGridCRS$new(xmlObj, serviceVersion, owsVersion, logger = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{xmlObj}}{an object of class \link[XML]{XMLInternalNode-class} to initialize from XML}

\item{\code{serviceVersion}}{service version}

\item{\code{owsVersion}}{OWS version}

\item{\code{logger}}{logger}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WCSGridCRS-clone"></a>}}
\if{latex}{\out{\hypertarget{method-WCSGridCRS-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WCSGridCRS$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
