#' Salmon chum (Hood Canal summer-run ESU)
#' 

#' 
#' @format A csv file.
#' \describe{
#' \item{Citation}{Data citation.}
#' \item{Contributor}{Data contributor.}
#' \item{NMFS_POPID}{NWFSC id for the population.}
#' \item{ESU}{ESU or DPS name.}
#' \item{Species}{Species name.}
#' \item{MAJOR_POPULATION_GROUP}{Major population group within the ESU or DPS.}
#' \item{COMMON_POPULATION_NAME}{Population name.}
#' \item{RUN_TIMING}{Run timing (fall, winter, spring, etc). If missing, see the ESU/DPS name or may not be applicable for the species.}
#' \item{YEAR}{Integer in XXXX format. The year that the count was made. See details for ESU or DPS specific comments.}
#' \item{NUMBER_OF_SPAWNERS}{Total spawners or escapement count. -99 means missing count. May be integer or decimal.}
#' \item{FRACWILD}{Decimal between 0 and 1. Fraction wild or natural. -99 means missing information.}
#' }
#' 
#' @description Spawner and fraction wild data. Species: Summer Chum. 
#' 
#' 
#' @source WDFW, Point No Point Treaty Council
#' 
#' @references
 #' Salmon Population Summaries (SPS) Database: \url{https://www.fisheries.noaa.gov/resource/tool-app/salmon-population-summaries-sps}
#' 

#' 
#' @name Salmon chum (Hood Canal summer-run ESU)
#' @docType data
#' @examples
#' data('Salmon chum (Hood Canal summer-run ESU)')
#' library(ggplot2)
#' out$NUMBER_OF_SPAWNERS[out$NUMBER_OF_SPAWNERS==-99] <- NA
#' ggplot(out, aes(x=YEAR, y=NUMBER_OF_SPAWNERS)) + geom_point(na.rm = TRUE) +
#'   ggtitle('Salmon chum (Hood Canal summer-run ESU)') +
#'   facet_wrap(~COMMON_POPULATION_NAME)
#' 
#' out$FRACWILD[out$FRACWILD == -99] <- NA
#' ggplot(out, aes(x=YEAR, y=FRACWILD)) +
#'  geom_point(na.rm = TRUE) +
#'  ggtitle('Fraction Wild') +
#'  ylim(0,1) +
#'  facet_wrap(~COMMON_POPULATION_NAME)
NULL

