#' Ozette Lake Sockeye Salmon ESU
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
#' \item{ESU}{ESU or DPS name.}
#' \item{SPECIES}{Species name.}
#' \item{RUN_TIMING}{Run timing (fall, winter, spring, etc). If missing, see the ESU/DPS name or may not be applicable for the species.}
#' \item{MAJOR_POPULATION_GROUP}{Major population group within the ESU or DPS.}
#' \item{COMMON_POPULATION_NAME}{Population name.}
#' \item{YEAR}{The year that the count was made.}
#' \item{NUMBER_OF_SPAWNERS}{Spawners count. -99 means missing count.}
#' \item{FRACWILD}{Fraction wild. -99 means missing information.}
#' }
#' 
#' @name Ozette-Lake-Sockeye-Salmon-ESU
#' @docType data
#' @examples
#' data('Ozette-Lake-Sockeye-Salmon-ESU')
#' library(ggplot2)
#' out$NUMBER_OF_SPAWNERS[out$NUMBER_OF_SPAWNERS==-99] <- NA
#' ggplot(out, aes(x=YEAR, y=NUMBER_OF_SPAWNERS)) + geom_point(na.rm = TRUE) +
#'   ggtitle('Ozette-Lake-Sockeye-Salmon-ESU') +
#'   facet_wrap(~COMMON_POPULATION_NAME)
NULL

