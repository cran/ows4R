#' WCSClient
#'
#' @docType class
#' @export
#' @keywords OGC WCS Coverage 
#' @return Object of \code{\link[R6]{R6Class}} with methods for interfacing an OGC
#' Web Coverage Service.
#' @format \code{\link[R6]{R6Class}} object.
#' 
#' @examples
#' \dontrun{
#'    wcs <- WCSClient$new("http://localhost:8080/geoserver/wcs", serviceVersion = "2.0.1")
#' }
#'
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
WCSClient <- R6Class("WCSClient",
   inherit = OWSClient,
   private = list(
     serviceName = "WCS"
   ),
   public = list(
     
     #'@description This method is used to instantiate a \link{WCSClient} with the \code{url} of the
     #'    OGC service. Authentication is supported using basic auth (using \code{user}/\code{pwd} arguments), 
     #'    bearer token (using \code{token} argument), or custom (using \code{headers} argument). By default, the \code{logger}
     #'    argument will be set to \code{NULL} (no logger). This argument accepts two possible 
     #'    values: \code{INFO}: to print only \pkg{ows4R} logs, \code{DEBUG}: to print more verbose logs
     #'@param url url
     #'@param serviceVersion WFS service version
     #'@param user user
     #'@param pwd password
     #'@param token token
     #'@param headers headers
     #'@param config config
     #'@param cas_url Central Authentication Service (CAS) URL
     #'@param logger logger
     initialize = function(url, serviceVersion = NULL, 
                           user = NULL, pwd = NULL, token = NULL, headers = c(), config = httr::config(), cas_url = NULL,
                           logger = NULL) {
       super$initialize(url, service = private$serviceName, serviceVersion = serviceVersion, 
                        user = user, pwd = pwd, token = token, headers = headers, config = config, cas_url = cas_url, 
                        logger = logger)
       self$capabilities = WCSCapabilities$new(self$url, self$version, 
                                               user = user, pwd = pwd, token = token, headers = headers, config = config,
                                               logger = logger)
       self$capabilities$setClient(self)
     },
     
     #'@description Get WCS capabilities
     #'@return an object of class \link{WCSCapabilities}
     getCapabilities = function(){
       return(self$capabilities)
     },
     
     #'@description Reloads WCS capabilities
     reloadCapabilities = function(){
       self$capabilities = WCSCapabilities$new(self$url, self$version, 
                                               user = self$getUser(), pwd = self$getPwd(), token = self$getToken(), 
                                               headers = self$getHeaders(), config = self$getConfig(),
                                               logger = self$loggerType)
     },
     
     #'@description Describes coverage
     #'@param identifier identifier
     #'@return an object of class \link{WCSCoverageDescription}
     describeCoverage = function(identifier){
       self$INFO(sprintf("Fetching coverageSummary description for '%s' ...", identifier))
       describeCoverage <- NULL
       cov <- self$capabilities$findCoverageSummaryById(identifier, exact = TRUE)
       if(is(cov, "WCSCoverageSummary")){
         describeCoverage <- cov$getDescription()
       }
       return(describeCoverage)
     },
     
     #'@description Get coverage
     #'@param identifier Coverage identifier. Object of class \code{character}
     #'@param bbox bbox. Object of class \code{matrix}. Default is \code{NULL}. eg. \code{OWSUtils$toBBOX(-180,180,-90,90)}
     #'@param crs crs. Object of class \code{character} giving the CRS identifier (EPSG prefixed code, or URI/URN). Default is \code{NULL}.
     #'@param time time. Object of class \code{character} representing time instant/period. Default is \code{NULL}
     #'@param elevation elevation. Object of class \code{character} or \code{numeric}. Default is \code{NULL}
     #'@param format format. Object of class \code{character} Default will be GeoTIFF, coded differently depending on the WCS version.
     #'@param rangesubset rangesubset. Default is \code{NULL}
     #'@param gridbaseCRS grid base CRS. Default is \code{NULL}
     #'@param gridtype grid type. Default is \code{NULL}
     #'@param gridCS grid CS. Default is \code{NULL}
     #'@param gridorigin grid origin. Default is \code{NULL}
     #'@param gridoffsets grid offsets. Default is \code{NULL}
     #'@param method method to get coverage, either 'GET' or 'POST' (experimental - under development). Object of class \code{character}.
     #'@param filename filename. Object of class \code{character}. Optional filename to download the coverage
     #'@param ... any other argument to \link{WCSGetCoverage}
     #'@return an object of class \code{SpatRaster} from \pkg{terra}
     getCoverage = function(identifier,
                            bbox = NULL, crs = NULL, time = NULL, format = NULL, rangesubset = NULL, 
                            gridbaseCRS = NULL, gridtype = NULL, gridCS = NULL, 
                            gridorigin = NULL, gridoffsets = NULL, 
                            method = "GET", filename = NULL, ...){
        self$INFO(sprintf("Fetching coverage for '%s'", identifier))
        coverage <- NULL
        cov <- self$capabilities$findCoverageSummaryById(identifier, exact = TRUE)
        if(is(cov, "WCSCoverageSummary")){
           coverage <- cov$getCoverage(bbox = bbox, crs = crs, time = time, format = format, rangesubset = rangesubset, 
                                       gridbaseCRS = gridbaseCRS, gridtype = gridtype, gridCS = gridCS, 
                                       gridorigin = gridorigin, gridoffsets = gridoffsets, method = method, filename = filename, ...)
        }else if(is(cov, "list")){
          if(length(identifier)==0){
            self$WARN(sprintf("No coverage for coverage name = '%s'", identifier))
            return(NULL)
          }
        }
        return(coverage)
     }
   )
)

