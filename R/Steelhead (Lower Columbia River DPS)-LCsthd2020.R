#' Steelhead (Lower Columbia River DPS)-LCsthd2020
#' 

#' 
#' @format A csv file.
#' \describe{
#' \item{Series}{For certain populations, there are multiple types of spawner count data. For example survey and model counts that are based on different methods. In this case, the 'Series' column gives a name for the dataset to distinguish it from other data sets of the same population.}
#' \item{Method}{Method for the spawner count. Survey refers to a spawning ground survey of some type. See the SPS (database link in sources below) for the details for the data. LadderCount is a weir or dam count.}
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

#' * Coweeman Winter Steelhead: Washington Department of Fish and Wildlife
#' * North Fork Toutle Winter Steelhead: Washington Department of Fish and Wildlife
#' * South Fork Toutle Winter Steelhead: Washington Department of Fish and Wildlife
#' * Upper Cowlitz and Cispus Winter Steelhead: Washington Department of Fish and Wildlife
#' * Tilton Winter Steelhead: Washington Department of Fish and Wildlife
#' * Kalama Winter Steelhead: Washington Department of Fish and Wildlife
#' * East Fork Lewis Winter Steelhead: Washington Department of Fish and Wildlife
#' * Clackamas River: Oregon Department of Fish and Wildlife
#' * Sandy River: Oregon Department of Fish and Wildlife
#' * Washougal Winter Steelhead: Washington Department of Fish and Wildlife
#' * Upper Gorge (Columbia) Winter Steelhead: Washington Department of Fish and Wildlife
#' * Hood River: Oregon Department of Fish and Wildlife
#' * Kalama Summer Steelhead: Washington Department of Fish and Wildlife
#' * East Fork Lewis Summer Steelhead: Washington Department of Fish and Wildlife
#' * Washougal Summer Steelhead: Washington Department of Fish and Wildlife
#' * Wind River (Upper Gorge) Summer Steelhead: Washington Department of Fish and Wildlife
#' 
#' @references
 #' Salmon Population Summaries (SPS) Database: \url{https://www.fisheries.noaa.gov/resource/tool-app/salmon-population-summaries-sps}
#' 
#' Original source: CAX05262020. Citations with the format CAXMMDDYYYY indicate that the data are from the Coordinated Assessments Partnership (CAP) database and were downloaded on on MM-DD-YYYY. \url{https://www.streamnet.org/home/data-maps/fish-hlis/}.
#' 
#' @name Steelhead (Lower Columbia River DPS)-LCsthd2020
#' @docType data
#' @examples
#' data('Steelhead (Lower Columbia River DPS)-LCsthd2020')
#' library(ggplot2)
#' out$NUMBER_OF_SPAWNERS[out$NUMBER_OF_SPAWNERS==-99] <- NA
#' ggplot(out, aes(x=BROOD_YEAR, y=NUMBER_OF_SPAWNERS)) + 
#'   geom_point(na.rm = TRUE) +
#'   ggtitle('Steelhead (Lower Columbia River DPS)-LCsthd2020') +
#'   facet_wrap(~COMMON_POPULATION_NAME) +
#'   theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1), strip.text.x = element_text(size = 6))
#' 
#' out$FRACWILD[out$FRACWILD == -99] <- NA
#' ggplot(out, aes(x=BROOD_YEAR, y=FRACWILD)) +
#'   geom_point(na.rm = TRUE) +
#'   ggtitle('Fraction Wild') +
#'   ylim(0,1) +
#'   facet_wrap(~COMMON_POPULATION_NAME) +
#'   theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1), strip.text.x = element_text(size = 6))
NULL

