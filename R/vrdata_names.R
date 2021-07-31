#' VRData names
#'
#' @description Allowed values for data columns.
#'#' 
#' @author Eli Holmes (NOAA)
#' 
#' @format A vector of names.
#' #' \describe{
#' \item{esu_dps}{Allowed ESU or DPS names.}
#' \item(species}{Allowed species names.}
#' \item(run_timing}{Allowed run timings. May be blank.}
#' }
#' 
#' @name vrdata_names
#' @docType data
#' @examples
#' data('vrdata_names')
#' cat(c("ESU and DPS", esu_dps), sep="\n")
#' cat(c("\n", "Species", species), sep="\n")
#' cat(c("\n", "Run Timing", run_timing), sep="\n")
NULL
