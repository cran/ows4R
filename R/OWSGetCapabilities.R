#' OWSGetCapabilities
#'
#' @docType class
#' @export
#' @keywords OGC GetCapabilities
#' @return Object of \code{\link[R6]{R6Class}} for modelling a GetCapabilities request
#' @format \code{\link[R6]{R6Class}} object.
#' 
#' @note Class used internally by \pkg{ows4R} to trigger a OWS GetCapabilities request
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
OWSGetCapabilities <- R6Class("OWSGetCapabilities",
  inherit = OWSHttpRequest,
  private = list(
    xmlElement = "GetCapabilities",
    xmlNamespacePrefix = "OWS_1_1"
  ),
  public = list(
    
    #'@description Initializes an \link{OWSGetCapabilities} service request
    #'@param element element
    #'@param namespacePrefix namespace prefix
    #'@param url url
    #'@param service service name
    #'@param version service version
    #'@param user user
    #'@param pwd password
    #'@param token token
    #'@param headers headers
    #'@param config config
    #'@param ... any other parameter to pass to the request
    initialize = function(element = NULL, namespacePrefix = NULL, url, service, version, 
                          user = NULL, pwd = NULL, token = NULL, headers = c(), config = httr::config(),
                          ...) {
      if(!is.null(element)) private$xmlElement <- element
      if(!is.null(namespacePrefix)) private$xmlNamespacePrefix <- namespacePrefix
      namedParams <- list(service = service, version = version)
      super$initialize(element = private$xmlElement, namespacePrefix = private$xmlNamespacePrefix,
                       capabilities = NULL, op = NULL, type = "GET", url = url, request = "GetCapabilities",
                       user = user, pwd = pwd, token = token, headers = headers, config = config,
                       namedParams = namedParams, mimeType = "text/xml", ...)
      self$execute()
    }
  )
)