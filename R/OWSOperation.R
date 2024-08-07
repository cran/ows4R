#' OWSOperation
#'
#' @docType class
#' @export
#' @keywords OGC OWS operation
#' @return Object of \code{\link[R6]{R6Class}} for modelling an OGC Operation
#' @format \code{\link[R6]{R6Class}} object.
#' 
#' @note Internal class used internally by \pkg{ows4R} when reading capabilities documents
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
OWSOperation <-  R6Class("OWSOperation",
  private = list(
    name = NA,
    parameters = list()
  ),
  public = list(
    
    #'@description Initializes an object of class \link{OWSOperation}. 
    #'@param xmlObj object of class \link[XML]{XMLInternalNode-class} from \pkg{XML}
    #'@param owsVersion OWS version
    #'@param serviceVersion service version
    initialize = function(xmlObj, owsVersion, serviceVersion){
      namespaces <- OWSUtils$getNamespaces(xmlDoc(xmlObj))
      namespaces <- as.data.frame(namespaces)
      namespaceURI <- NULL
      if(any(sapply(namespaces$uri, endsWith, "ows"))){
        namespaceURI <- paste(namespaces[which(sapply(namespaces$uri, endsWith, "ows")), "uri"], owsVersion, sep ="/")
      }else{
        namespaceURI <- paste(namespaces[1L, "uri"])
      }
      ns <- OWSUtils$findNamespace(namespaces, uri = namespaceURI)
      if(is.null(ns)) ns <- OWSUtils$findNamespace(namespaces, id = "ows")
      private$name <- xmlGetAttr(xmlObj, "name")
      paramXML <- getNodeSet(xmlDoc(xmlObj), "//ns:Parameter", ns)
      private$parameters <- lapply(paramXML, function(x){
        valuesXpath <- switch(owsVersion,
          "1.1" = "//ns:Value",
          "2.0" = "//ns:AllowedValues/ns:Value"
        )
        param <- unique(xpathSApply(xmlDoc(x), valuesXpath, fun = xmlValue, namespaces = ns))
        return(param)
      })
      names(private$parameters) <- sapply(paramXML, xmlGetAttr, "name")
    },
    
    #'@description Get operation name
    #'@return an object of class \code{character}
    getName = function(){
      return(private$name)
    },
    
    #'@description Get parameters
    #'@return the parameters
    getParameters = function(){
      return(private$parameters)
    },
    
    #'@description Get parameter
    #'@param name name
    #'@return the parameter
    getParameter = function(name){
      return(private$parameters[[name]])
    }
  )
)