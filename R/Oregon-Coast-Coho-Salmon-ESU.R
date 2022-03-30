#' Oregon Coast Coho Salmon ESU
#'
#' @description Spawner counts and fraction wild data.
#'
#' @details Downloaded from the SPS Master Oracle 2013-2014 Database on
#' January 28, 2016
#' 
#' @source 
#' 
#' @references
#' 
#' @author Monica Diaz (NOAA/NWFSC)
#' 
#' 
#' @format A csv file.
#' \describe{
#' \item{NMFS_POPID}{NWFSC id for the population.}
#' \item{ESU}{ESU or DPS name. Constrained to [ESU_DPS_names()].}
#' \item{SPECIES}{Species name.}
#' \item{RUN_TIMING}{Run timing (fall, winter, spring, etc). If missing, see the ESU/DPS name or may not be applicable for the species.}
#' \item{MAJOR_POPULATION_GROUP}{Major population group within the ESU or DPS.}
#' \item{COMMON_POPULATION_NAME}{Population name.}
#' \item{YEAR}{Integer in XXXX format. The year that the count was made. See details for ESU or DPS specific comments.}
#' \item{NUMBER_OF_SPAWNERS}{Total spawners or escapement count. -99 means missing count. May be integer or decimal.}
#' \item{FRACWILD}{Decimal between 0 and 1. Fraction wild or natural. -99 means missing information.}
#' }
#' 
#' @name Oregon-Coast-Coho-Salmon-ESU
#' @docType data
#' @examples
#' data('Oregon-Coast-Coho-Salmon-ESU')
#' library(ggplot2)
#' out$NUMBER_OF_SPAWNERS[out$NUMBER_OF_SPAWNERS==-99] <- NA
#' ggplot(out, aes(x=YEAR, y=NUMBER_OF_SPAWNERS)) + geom_point(na.rm = TRUE) +
#'   ggtitle('Oregon-Coast-Coho-Salmon-ESU') +
#'   facet_wrap(~COMMON_POPULATION_NAME)
NULL

