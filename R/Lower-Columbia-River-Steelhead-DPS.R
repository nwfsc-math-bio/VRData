#' Lower Columbia River Steelhead DPS
#'
#' Spawner counts and fraction wild data.
#'
#' @format A csv file.
#' \describe{
#'   \item{NMFS_POPID}{NWFSC id for the population.}
#'   \item{ESU}{}
#'   \item{SPECIES}{}
#'   \item{RUN_TIMING}{}
#'   \item{MAJOR_POPULATION_GROUP}{}
#'   \item{COMMON_POPULATION_NAME}{}
#'   \item{BROOD_YEAR}{The year that the count was made.}
#'   \item{NUMBER_OF_SPAWNERS}{Spawners count. -99 means missing count.}
#'   \item{FRACWILD}{Fraction wild. -99 means missing information.}
#' }
#' @details Downloaded from the SPS Master Oracle 2013-2014 Database on
#' January 28, 2016
#' @name Lower-Columbia-River-Steelhead-DPS
#' @docType data
#' @examples
#' data('Lower-Columbia-River-Steelhead-DPS')
#' library(ggplot2)
#' out$NUMBER_OF_SPAWNERS[out$NUMBER_OF_SPAWNERS==-99] <- NA
#' ggplot(out, aes(x=BROOD_YEAR, y=NUMBER_OF_SPAWNERS)) + geom_point(na.rm = TRUE) +
#'   ggtitle('Lower-Columbia-River-Steelhead-DPS') +
#'   facet_wrap(~COMMON_POPULATION_NAME)
NULL

