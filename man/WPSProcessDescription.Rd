% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WPSProcessDescription.R
\docType{class}
\name{WPSProcessDescription}
\alias{WPSProcessDescription}
\title{WPSProcessDescription}
\format{
\code{\link[R6]{R6Class}} object.
}
\value{
Object of \code{\link[R6]{R6Class}} modelling a WPS process description
}
\description{
WPSProcessDescription

WPSProcessDescription
}
\note{
Class used internally by \pkg{ows4R}
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{OGC}
\keyword{Process}
\keyword{ProcessDescription}
\keyword{WPS}
\section{Super class}{
\code{\link[ows4R:OGCAbstractObject]{ows4R::OGCAbstractObject}} -> \code{WPSProcessDescription}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-WPSProcessDescription-new}{\code{WPSProcessDescription$new()}}
\item \href{#method-WPSProcessDescription-getIdentifier}{\code{WPSProcessDescription$getIdentifier()}}
\item \href{#method-WPSProcessDescription-getTitle}{\code{WPSProcessDescription$getTitle()}}
\item \href{#method-WPSProcessDescription-getAbstract}{\code{WPSProcessDescription$getAbstract()}}
\item \href{#method-WPSProcessDescription-getVersion}{\code{WPSProcessDescription$getVersion()}}
\item \href{#method-WPSProcessDescription-isStatusSupported}{\code{WPSProcessDescription$isStatusSupported()}}
\item \href{#method-WPSProcessDescription-isStoreSupported}{\code{WPSProcessDescription$isStoreSupported()}}
\item \href{#method-WPSProcessDescription-getDataInputs}{\code{WPSProcessDescription$getDataInputs()}}
\item \href{#method-WPSProcessDescription-getProcessOutputs}{\code{WPSProcessDescription$getProcessOutputs()}}
\item \href{#method-WPSProcessDescription-asDataFrame}{\code{WPSProcessDescription$asDataFrame()}}
\item \href{#method-WPSProcessDescription-clone}{\code{WPSProcessDescription$clone()}}
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
\if{html}{\out{<a id="method-WPSProcessDescription-new"></a>}}
\if{latex}{\out{\hypertarget{method-WPSProcessDescription-new}{}}}
\subsection{Method \code{new()}}{
Initializes an object of class \link{WPSProcessDescription}
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSProcessDescription$new(xml, version, logger = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{xml}}{object of class \link[XML]{XMLInternalNode-class} from \pkg{XML}}

\item{\code{version}}{version}

\item{\code{logger}}{logger}

\item{\code{...}}{any other parameter}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSProcessDescription-getIdentifier"></a>}}
\if{latex}{\out{\hypertarget{method-WPSProcessDescription-getIdentifier}{}}}
\subsection{Method \code{getIdentifier()}}{
Get process identifier
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSProcessDescription$getIdentifier()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
the identifier, object of class \code{character}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSProcessDescription-getTitle"></a>}}
\if{latex}{\out{\hypertarget{method-WPSProcessDescription-getTitle}{}}}
\subsection{Method \code{getTitle()}}{
Get process title
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSProcessDescription$getTitle()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
the title, object of class \code{character}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSProcessDescription-getAbstract"></a>}}
\if{latex}{\out{\hypertarget{method-WPSProcessDescription-getAbstract}{}}}
\subsection{Method \code{getAbstract()}}{
Get process abstract
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSProcessDescription$getAbstract()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
the abstract, object of class \code{character}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSProcessDescription-getVersion"></a>}}
\if{latex}{\out{\hypertarget{method-WPSProcessDescription-getVersion}{}}}
\subsection{Method \code{getVersion()}}{
Get process version
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSProcessDescription$getVersion()}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{the}}{version, object of class \code{character}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSProcessDescription-isStatusSupported"></a>}}
\if{latex}{\out{\hypertarget{method-WPSProcessDescription-isStatusSupported}{}}}
\subsection{Method \code{isStatusSupported()}}{
Indicates if the status is supported
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSProcessDescription$isStatusSupported()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
\code{TRUE} if supported, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSProcessDescription-isStoreSupported"></a>}}
\if{latex}{\out{\hypertarget{method-WPSProcessDescription-isStoreSupported}{}}}
\subsection{Method \code{isStoreSupported()}}{
Indicates if the store is supported
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSProcessDescription$isStoreSupported()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
\code{TRUE} if supported, \code{FALSE} otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSProcessDescription-getDataInputs"></a>}}
\if{latex}{\out{\hypertarget{method-WPSProcessDescription-getDataInputs}{}}}
\subsection{Method \code{getDataInputs()}}{
Get data inputs
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSProcessDescription$getDataInputs()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
a \code{list} of objects extending \link{WPSInputDescription}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSProcessDescription-getProcessOutputs"></a>}}
\if{latex}{\out{\hypertarget{method-WPSProcessDescription-getProcessOutputs}{}}}
\subsection{Method \code{getProcessOutputs()}}{
Get process outputs
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSProcessDescription$getProcessOutputs()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
a \code{list} of objects extending \link{WPSOutputDescription}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSProcessDescription-asDataFrame"></a>}}
\if{latex}{\out{\hypertarget{method-WPSProcessDescription-asDataFrame}{}}}
\subsection{Method \code{asDataFrame()}}{
Convenience method to export a process description as \code{data.frame}
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSProcessDescription$asDataFrame()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
a \code{data.frame} giving the process description
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-WPSProcessDescription-clone"></a>}}
\if{latex}{\out{\hypertarget{method-WPSProcessDescription-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WPSProcessDescription$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
