#' CSWDescribeRecord
#'
#' @docType class
#' @export
#' @keywords OGC CSW DescribeRecord
#' @return Object of \code{\link[R6]{R6Class}} for modelling a CSW DescribeRecord request
#' @format \code{\link[R6]{R6Class}} object.
#' 
#' @note Class used internally by \pkg{ows4R} to trigger a CSW DescribeRecord request
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
CSWDescribeRecord <- R6Class("CSWDescribeRecord",
   inherit = OWSHttpRequest,
   private = list(
     xmlElement = "DescribeRecord",
     xmlNamespacePrefix = "CSW",
     defaultNamespace = "csw:http://www.opengis.net/cat/csw/2.0.2"
   ),
   public = list(
      
     #'@description Initializes a \link{CSWDescribeRecord} service request
     #'@param capabilities an object of class \link{CSWCapabilities}
     #'@param op object of class \link{OWSOperation} as retrieved from capabilities
     #'@param url url
     #'@param version version
     #'@param namespace namespace
     #'@param user user
     #'@param pwd password
     #'@param token token
     #'@param headers headers
     #'@param config config
     #'@param logger logger
     #'@param ... any parameter to pass to the service request
     initialize = function(capabilities, op, url, version, namespace = NULL, 
                           user = NULL, pwd = NULL, token = NULL, headers = c(), config = httr::config(),
                           logger = NULL, ...) {
       namedParams <- list(service = "CSW", version = version)
       
       #default output schema
       if(is.null(namespace)){
         namespace <- private$defaultNamespace
       }
       
       #other default params
       #note: normally typeName not mandatory in DescribeRecord
       typeName <- switch(namespace,
                           "gmd:http://www.isotc211.org/2005/gmd" = "gmd:MD_Metadata",
                           "gfc:http://www.isotc211.org/2005/gfc" = "gfc:FC_FeatureCatalogue",
                           "csw:http://www.opengis.net/cat/csw/2.0.2" = "csw:Record",
                           "dcat:http://www.w3.org/ns/dcat#" = "dcat"
       )
       namedParams <- c(namedParams, namespace = namespace, typeName = typeName)
       
       super$initialize(element = private$xmlElement, namespacePrefix = private$xmlNamespacePrefix,
                        capabilities, op, "GET", url, request = private$name,
                        user = user, pwd = pwd, token = token, headers = headers, config = config,
                        namedParams = namedParams,
                        mimeType = "text/xml", logger = logger, ...)
       self$execute()
       
       #binding to XML schema
       xsdObjs <- getNodeSet(private$response, "//ns:schema", c(ns = "http://www.w3.org/2001/XMLSchema"))
       if(length(xsdObjs)>0){
         xsdObj <- xsdObjs[[1]]
         xmlNamespaces(xsdObj) <- c(as.vector(xmlNamespace(xsdObj)), gco = "http://www.isotc211.org/2005/gco")
         xmlNamespaces(xsdObj) <- xmlNamespaces(xmlObj)
         
         #post-process xs imports
         mainNamespace <- NULL
         getRemoteSchemaLocation <- function(import, useMainNamespace = FALSE){
           ns <- ifelse(useMainNamespace, mainNamespace, xmlGetAttr(import, "namespace"))
           if(is.null(mainNamespace)) mainNamespace <<- ns
           schemaLocation <- xmlGetAttr(import, "schemaLocation")
           schemaLocation.split <- unlist(strsplit(schemaLocation, "../", fixed = TRUE))
           n.dir <- length(unlist(regmatches(schemaLocation, gregexpr("\\.\\./", schemaLocation))))
           ns.split <- unlist(strsplit(ns, "/"))
           schemaLocation.new <- paste(
            paste(ns.split[1:(length(ns.split)-n.dir)], collapse="/"),
            schemaLocation.split[length(schemaLocation.split)],
            sep="/"
           )
           attrs <-c(schemaLocation = schemaLocation.new)
           #if(!useMainNamespace) attrs <- c(namespace = ns, attrs)
           xmlAttrs(import) <- attrs
         }
         invisible(sapply(xpathApply(xsdObj, "//xs:import"), getRemoteSchemaLocation))
         invisible(sapply(xpathApply(xsdObj, "//xs:include"), getRemoteSchemaLocation, TRUE))
         
         tempf = tempfile() 
         destfile = paste(tempf,".xsd",sep='')
         saveXML(xsdObj, destfile)
         private$response <- xmlSchemaParse(destfile)
       }else{
         private$response <- NULL
       }
     }
   )
)