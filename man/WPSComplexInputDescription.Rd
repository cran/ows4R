% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WPSComplexInputDescription.R
\docType{class}
\name{WPSComplexInputDescription}
\alias{WPSComplexInputDescription}
\title{WPSComplexInputDescription}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} modelling a WPS process complex input description
}
\description{
WPSComplexInputDescription

WPSComplexInputDescription
}
\note{
Class used internally by \pkg{ows4R}
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{OGC}
\keyword{Process}
\keyword{WPS}
\keyword{complex}
\keyword{description}
\keyword{input}
\section{Super classes}{
\code{\link[ows4R:OGCAbstractObject]{ows4R::OGCAbstractObject}} -> \code{\link[ows4R:WPSParameter]{ows4R::WPSParameter}} -> \code{\link[ows4R:WPSDescriptionParameter]{ows4R::WPSDescriptionParameter}} -> \code{\link[ows4R:WPSInputDescription]{ows4R::WPSInputDescription}} -> \code{WPSComplexInputDescription}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-WPSComplexInputDescription-new}{\code{WPSComplexInputDescription$new()}}
\item \href{#method-WPSComplexInputDescription-clone}{\code{WPSComplexInputDescription$clone()}}
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
<li><span class="pkg-link" data-pkg="ows4R" data-topic="WPSParameter" data-id="getAbstract"><a href='../../ows4R/html/WPSParameter.html#method-WPSParameter-getAbstract'><code>ows4R::WPSParameter$getAbstract()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="WPSParameter" data-id="getIdentifier"><a href='../../ows4R/html/WPSParameter.html#method-WPSParameter-getIdentifier'><code>ows4R::WPSParameter$getIdentifier()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="WPSParameter" data-id="getTitle"><a href='../../ows4R/html/WPSParameter.html#method-WPSParameter-getTitle'><code>ows4R::WPSParameter$getTitle()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="WPSDescriptionParameter" data-id="getDataType"><a href='../../ows4R/html/WPSDescriptionParameter.html#method-WPSDescriptionParameter-getDataType'><code>ows4R::WPSDescriptionParameter$getDataType()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="WPSDescriptionParameter" data-id="getFormats"><a href='../../ows4R/html/WPSDescriptionParameter.html#method-WPSDescriptionParameter-getFormats'><code>ows4R::WPSDescriptionParameter$getFormats()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="WPSInputDescription" data-id="asDataFrame"><a href='../../ows4R/html/WPSInputDescription.html#method-WPSInputDescription-asDataFrame'><code>ows4R::WPSInputDescription$asDataFrame()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="WPSInputDescription" data-id="getMaxOccurs"><a href='../../ows4R/html/WPSInputDescription.html#method-WPSInputDescription-getMaxOccurs'><code>ows4R::WPSInputDescription$getMaxOccurs()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ows4R" data-topic="WPSInputDescription" data-id="getMinOccurs"><a href='../../ows4R/html/WPSInputDescription.html#method-WPSInputDescription-getMinOccurs'><code>ows4R::WPSInputDescription$getMinOccurs()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSComplexInputDescription-new"></a>}}
\if{latex}{\out{\hypertarget{method-WPSComplexInputDescription-new}{}}}
\subsection{Method \code{new()}}{
Initializes a \link{WPSComplexInputDescription}
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSComplexInputDescription$new(xml = NULL, version, logger = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{xml}}{object of class \link[XML]{XMLInternalNode-class} from \pkg{XML}}

\item{\code{version}}{WPS service version}

\item{\code{logger}}{logger}

\item{\code{...}}{any other parameter}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSComplexInputDescription-clone"></a>}}
\if{latex}{\out{\hypertarget{method-WPSComplexInputDescription-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSComplexInputDescription$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
