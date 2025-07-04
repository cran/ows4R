#' CSWGetRecordById
#'
#' @docType class
#' @export
#' @keywords OGC CSW GetRecordById
#' @return Object of \code{\link[R6]{R6Class}} for modelling a CSW GetRecordById request
#' @format \code{\link[R6]{R6Class}} object.
#' 
#' @note Class used internally by \pkg{ows4R} to trigger a CSW GetRecordById request
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
CSWGetRecordById <- R6Class("CSWGetRecordById",
    inherit = OWSHttpRequest,
    private = list(
      xmlElement = "GetRecordById",
      xmlNamespacePrefix = "CSW",
      defaultAttrs = list(
        service = "CSW",
        version = "2.0.2",
        outputSchema= "http://www.opengis.net/cat/csw"
      )
    ),
    public = list(
      #'@field Id record Id property for request XML encoding
      Id = NA,
      #'@field ElementSetName element set name property for XML encoding
      ElementSetName = "full",
      
      #'@description Initializes a \link{CSWGetRecordById} service request
      #'@param capabilities an object of class \link{CSWCapabilities}
      #'@param op object of class \link{OWSOperation} as retrieved from capabilities
      #'@param url url
      #'@param serviceVersion serviceVersion. Default is "2.0.2
      #'@param user user
      #'@param pwd password
      #'@param token token
      #'@param headers headers
      #'@param config config
      #'@param id record id
      #'@param elementSetName element set name. Default is "full"
      #'@param logger logger
      #'@param ... any parameter to pass to the service request
      initialize = function(capabilities, op, url, serviceVersion = "2.0.2",
                            user = NULL, pwd = NULL, token = NULL, headers = headers, config = httr::config(),
                            id, elementSetName = "full", logger = NULL, ...) {
        self$Id = id
        allowedElementSetNames <- c("full", "brief", "summary")
        if(!(elementSetName %in% allowedElementSetNames)){
          stop(sprintf("elementSetName value should be among following values: [%s]",
                       paste(allowedElementSetNames, collapse=",")))
        }
        self$ElementSetName = elementSetName
        
        nsVersion <- ifelse(serviceVersion=="3.0.0", "3.0", serviceVersion)
        private$xmlNamespacePrefix = paste(private$xmlNamespacePrefix, gsub("\\.", "_", nsVersion), sep="_")
        
        super$initialize(element = private$xmlElement, namespacePrefix = private$xmlNamespacePrefix,
                         capabilities, op, "POST", url, request = "GetRecordById",
                         user = user, pwd = pwd, token = token, headers = headers, config = config,
                         contentType = "text/xml", mimeType = "text/xml",
                         logger = logger, ...)
        
        self$attrs <- private$defaultAttrs
        
        #serviceVersion
        self$attrs$version = serviceVersion
        
        #output schema
        self$attrs$outputSchema = paste(self$attrs$outputSchema, nsVersion, sep="/")
        outputSchema <- list(...)$outputSchema
        if(!is.null(outputSchema)){
          self$attrs$outputSchema = outputSchema
        }
        
        #execute
        self$execute()
        
        #check response in case of ISO
        ns <- getOWSNamespace(private$xmlNamespacePrefix)
        outputSchema <- self$attrs$outputSchema
        isoSchemas <- c(
          "http://www.isotc211.org/2005/gmd",
          "http://standards.iso.org/iso/19115/-3/mdb/2.0",
          "http://www.isotc211.org/2005/gfc",
          "http://standards.iso.org/iso/19110/gfc/1.1"
        )
        if(outputSchema %in% isoSchemas){
          xmltxt <- as(private$response, "character")
          isMetadata <- regexpr("MD_Metadata", xmltxt)>0
          isFeatureCatalogue <- regexpr("FC_FeatureCatalogue", xmltxt)>0
          if(isMetadata && outputSchema == isoSchemas[3]){
            outputSchema <- isoSchemas[1]
            message(sprintf("Metadata detected! Switch to schema '%s'!", outputSchema))
          }
          if(isMetadata && outputSchema == isoSchemas[4]){
            outputSchema <- isoSchemas[2]
            message(sprintf("Metadata detected! Switch to schema '%s'!", outputSchema))
          }
          if(isFeatureCatalogue && outputSchema == isoSchemas[1]){
            outputSchema <- isoSchemas[3]
            message(sprintf("FeatureCatalogue detected! Switch to schema '%s'!", outputSchema))
          }
          if(isFeatureCatalogue && outputSchema == isoSchemas[2]){
            outputSchema <- isoSchemas[4]
            message(sprintf("FeatureCatalogue detected! Switch to schema '%s'!", outputSchema))
          }
        }
        
        #bindings
        private$response <- switch(outputSchema,
          "http://www.isotc211.org/2005/gmd" = {
            out <- NULL
            xmlObjs <- getNodeSet(private$response, "//ns:MD_Metadata", c(ns = outputSchema))
            if(length(xmlObjs)>0){
              xmlObj <- xmlObjs[[1]]
              geometa::setMetadataStandard("19139")
              out <- geometa::ISOMetadata$new()
              out$decode(xml = xmlObj)
            }
            out
          },
          "http://standards.iso.org/iso/19115/-3/mdb/2.0" = {
            out <- NULL
            xmlObjs <- getNodeSet(private$response, "//ns:MD_Metadata", c(ns = outputSchema))
            if(length(xmlObjs)>0){
              xmlObj <- xmlObjs[[1]]
              geometa::setMetadataStandard("19115-3")
              out <- geometa::ISOMetadata$new()
              out$decode(xml = xmlObj)
            }
            out
          },
          "http://www.isotc211.org/2005/gfc" = {
            out <- NULL
            xmlObjs <- getNodeSet(private$response, "//ns:FC_FeatureCatalogue", c(ns = outputSchema))
            if(length(xmlObjs)>0){
              xmlObj <- xmlObjs[[1]]
              geometa::setMetadataStandard("19139")
              out <- geometa::ISOFeatureCatalogue$new()
              out$decode(xml = xmlObj)
            }
            out
          },
          "http://standards.iso.org/iso/19110/gfc/1.1" = {
            out <- NULL
            xmlObjs <- getNodeSet(private$response, "//ns:FC_FeatureCatalogue", c(ns = outputSchema))
            if(length(xmlObjs)>0){
              xmlObj <- xmlObjs[[1]]
              geometa::setMetadataStandard("19115-3")
              out <- geometa::ISOFeatureCatalogue$new()
              out$decode(xml = xmlObj)
            }
            out
          },
          "http://www.opengis.net/cat/csw/2.0.2" = {
            out <- NULL
            warnMsg <- sprintf("R Dublin Core binding not yet supported for '%s'", outputSchema)
            warnings(warnMsg)
            self$WARN(warnMsg)
            self$WARN("Dublin Core returned as R list...")
            recordsXML <- getNodeSet(private$response, "//csw:Record", unlist(ns$getDefinition()))
            if(length(recordsXML)>0){
              recordXML <- recordsXML[[1]]
              children <- xmlChildren(recordXML)
              out <- lapply(children, xmlValue)
              names(out) <- names(children)
            }
            out
          },
          "http://www.opengis.net/cat/csw/3.0" = {
            out <- NULL
            warnMsg <- sprintf("R Dublin Core binding not yet supported for '%s'", outputSchema)
            warnings(warnMsg)
            self$WARN(warnMsg)
            self$WARN("Dublin Core returned as R list...")
            recordsXML <- getNodeSet(private$response, "//csw30:Record", unlist(ns$getDefinition()))
            if(length(recordsXML)>0){
              recordXML <- recordsXML[[1]]
              children <- xmlChildren(recordXML)
              out <- lapply(children, xmlValue)
              names(out) <- names(children)
            }
            out
          },
          "http://www.w3.org/ns/dcat#" = {
            warnings(sprintf("R binding not yet supported for '%s'", outputSchema))
            private$response
          }
        )
      }
    )
)