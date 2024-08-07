% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WPSParameter.R
\docType{class}
\name{WPSParameter}
\alias{WPSParameter}
\title{WPSParameter}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} modelling a WPS parameter
}
\description{
WPSParameter

WPSParameter
}
\note{
Abstract class used internally by \pkg{ows4R}
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{OGC}
\keyword{Parameter}
\keyword{WPS}
\section{Super class}{
\code{\link[ows4R:OGCAbstractObject]{ows4R::OGCAbstractObject}} -> \code{WPSParameter}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-WPSParameter-new}{\code{WPSParameter$new()}}
\item \href{#method-WPSParameter-getIdentifier}{\code{WPSParameter$getIdentifier()}}
\item \href{#method-WPSParameter-getTitle}{\code{WPSParameter$getTitle()}}
\item \href{#method-WPSParameter-getAbstract}{\code{WPSParameter$getAbstract()}}
\item \href{#method-WPSParameter-clone}{\code{WPSParameter$clone()}}
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
\if{html}{\out{<a id="method-WPSParameter-new"></a>}}
\if{latex}{\out{\hypertarget{method-WPSParameter-new}{}}}
\subsection{Method \code{new()}}{
Initializes an object of class \link{WPSParameter}
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSParameter$new(xml = NULL, version, logger = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{xml}}{an object of class \link[XML]{XMLInternalNode-class} to initialize from XML}

\item{\code{version}}{WPS service version}

\item{\code{logger}}{logger}

\item{\code{...}}{any additional parameter}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSParameter-getIdentifier"></a>}}
\if{latex}{\out{\hypertarget{method-WPSParameter-getIdentifier}{}}}
\subsection{Method \code{getIdentifier()}}{
Get identifier
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSParameter$getIdentifier()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
object of class \code{character}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSParameter-getTitle"></a>}}
\if{latex}{\out{\hypertarget{method-WPSParameter-getTitle}{}}}
\subsection{Method \code{getTitle()}}{
Get title
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSParameter$getTitle()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
object of class \code{character}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSParameter-getAbstract"></a>}}
\if{latex}{\out{\hypertarget{method-WPSParameter-getAbstract}{}}}
\subsection{Method \code{getAbstract()}}{
Get abstract
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSParameter$getAbstract()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
object of class \code{character}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSParameter-clone"></a>}}
\if{latex}{\out{\hypertarget{method-WPSParameter-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSParameter$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
