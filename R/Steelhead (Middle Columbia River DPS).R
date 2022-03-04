#' Steelhead (Middle Columbia River DPS)
#' 

#' 
#' @format A csv file.
#' \describe{
#' \item{Citation}{Data citation.}
#' \item{Contributor}{Data contributor.}
#' \item{NMFS_POPID}{NWFSC id for the population.}
#' \item{ESU}{ESU or DPS name.}
#' \item{MAJOR_POPULATION_GROUP}{Major population group within the ESU or DPS.}
#' \item{COMMON_POPULATION_NAME}{Population name.}
#' \item{SPECIES}{Species name.}
#' \item{RUN_TIMING}{Run timing (fall, winter, spring, etc). If missing, see the ESU/DPS name or may not be applicable for the species.}
#' \item{BROOD_YEAR}{Integer in XXXX format. The year that the count was made. See details for ESU or DPS specific comments.}
#' \item{NUMBER_OF_SPAWNERS}{Total spawners or escapement count. -99 means missing count. May be integer or decimal.}
#' \item{FRACWILD}{Decimal between 0 and 1. Fraction wild or natural. -99 means missing information.}
#' }
#' 
#' @description Spawner and fraction wild data. Species: Steelhead. Method: Survey
#' 
#' 
#' @source

#' * Klickitat River: Yakama Nation Fisheries
#' * Fifteenmile Creek: Yakama Nation Fisheries
#' * Deschutes River Westside: Oregon Department of Fish and Wildlife
#' * Deschutes River Eastside: Oregon Department of Fish and Wildlife
#' * Rock Creek: Yakama Nation Fisheries
#' * John Day River Lower Mainstem Tributaries: Oregon Department of Fish and Wildlife
#' * North Fork John Day River: Oregon Department of Fish and Wildlife
#' * Middle Fork John Day River: Oregon Department of Fish and Wildlife
#' * South Fork John Day River: Oregon Department of Fish and Wildlife
#' * John Day River Upper Mainstem: Oregon Department of Fish and Wildlife
#' * Satus Creek: Yakama Nation Fisheries
#' * Toppenish Creek: Yakama Nation Fisheries
#' * Naches River: Yakama Nation Fisheries
#' * Yakima River upper mainstem: Yakama Nation Fisheries
#' * Umatilla River: Oregon Department of Fish and Wildlife
#' * Walla Walla River: Oregon Department of Fish and Wildlife
#' * Touchet River: Washington Department of Fish and Wildlife
#' 
#' @references
 #' Salmon Population Summaries (SPS) Database: \url{https://www.fisheries.noaa.gov/resource/tool-app/salmon-population-summaries-sps}
#' 

#' * Klickitat River: CAX05262020
#' * Fifteenmile Creek: CAX05262020
#' * Deschutes River Westside: CAX05262020
#' * Deschutes River Eastside: CAX05262020
#' * Rock Creek: CAX05262020
#' * John Day River Lower Mainstem Tributaries: CAX05262020
#' * North Fork John Day River: CAX05262020
#' * Middle Fork John Day River: CAX05262020
#' * South Fork John Day River: CAX05262020
#' * John Day River Upper Mainstem: CAX05262020
#' * Satus Creek: CAX07012020
#' * Satus Creek: CAX07012020 5yr avg FracWild 2017 & 2018
#' * Toppenish Creek: CAX07012020
#' * Toppenish Creek: CAX07012020 5yr avg FracWild 2017 & 2018
#' * Naches River: CAX07012020
#' * Naches River: CAX07012020 5yr avg FracWild 2017 & 2018
#' * Yakima River upper mainstem: CAX07012020
#' * Yakima River upper mainstem: CAX07012020 5yr avg FracWild 2017 & 2018
#' * Umatilla River: CAX05262020
#' * Walla Walla River: CAX05262020
#' * Touchet River: CAX05262020
#' 
#' @name Steelhead (Middle Columbia River DPS)
#' @docType data
#' @examples
#' data('Steelhead (Middle Columbia River DPS)')
#' library(ggplot2)
#' out$NUMBER_OF_SPAWNERS[out$NUMBER_OF_SPAWNERS==-99] <- NA
#' ggplot(out, aes(x=BROOD_YEAR, y=NUMBER_OF_SPAWNERS)) + geom_point(na.rm = TRUE) +
#'   ggtitle('Steelhead (Middle Columbia River DPS)') +
#'   facet_wrap(~COMMON_POPULATION_NAME)
#' 
#' out$FRACWILD[out$FRACWILD == -99] <- NA
#' ggplot(out, aes(x=BROOD_YEAR, y=FRACWILD)) +
#'  geom_point(na.rm = TRUE) +
#'  ggtitle('Fraction Wild') +
#'  ylim(0,1) +
#'  facet_wrap(~COMMON_POPULATION_NAME)
NULL

