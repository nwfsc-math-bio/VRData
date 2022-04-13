#' Puget Sound-PSchinook2020
#' 

#' 
#' @format A csv file.
#' \describe{
#' \item{SERIES}{For certain populations, there are multiple types of spawner count data. For example survey and model counts that are based on different methods. In this case, the 'Series' column gives a name for the dataset to distinguish it from other data sets of the same population.}
#' \item{ESU}{ESU or DPS name.}
#' \item{SPECIES}{Species name.}
#' \item{METHOD}{Method for the spawner count. Survey refers to a spawning ground survey; the count itself is an expansion. See the SPS (database link in sources below) for the details for the data. LadderCount is a weir or dam count. Model  refers to the DABOM model that expands from PIT tag data. GSI is an expansion based on the BOXCAR model, which uses GSI to allocate fish sampled at Lower Granite Dam.}
#' \item{MAJOR_POPULATION_GROUP}{Major population group within the ESU or DPS.}
#' \item{NMFS_POPID}{NWFSC id for the population.}
#' \item{POPULATION_NAME}{Long population name.}
#' \item{COMMON_POPULATION_NAME}{Shorter population name used in Viability Report figures and tables.}
#' \item{RUN_TIMING}{Run timing (fall, winter, spring, etc). If missing, see the ESU/DPS name or may not be applicable for the species.}
#' \item{YEAR}{Integer in XXXX format. The year that the count was made. See details for ESU or DPS specific comments.}
#' \item{NUMBER_OF_SPAWNERS}{Total spawners or escapement count. -99 means missing count. May be integer or decimal.}
#' \item{FRACWILD}{Decimal between 0 and 1. Fraction wild or natural. -99 means missing information.}
#' \item{CONTRIBUTOR}{Data contributor. Listed under Source below.}
#' \item{COMPILER}{NWFSC staff who compiled the data file: Katie Barnes}
#' \item{CITATION}{Data citation. Listed under References below.}
#' }
#' 
#' @description Spawner and fraction wild data. Species: Chinook. Method: Survey. \href{../data/Puget Sound-PSchinook2020.html}{View raw data} or \href{../data/Puget Sound-PSchinook2020.csv}{Download raw data}
#' 
#' 
#' @source

#' * North Fork Nooksack Chinook: WDFW, Stillaguamish Tribe
#' * South Fork Nooksack Chinook: WDFW, Muckleshoot Tribe
#' * Lower Skagit Chinook: WDFW, Skagit River System Coop
#' * Upper Skagit Chinook: WDFW, Jamestown S'Klallam Tribe
#' * Upper Cascade Chinook (Skagit): WDFW, Nooksack Tribe, Lummi Nation
#' * Lower Sauk Chinook (Skagit): WDFW, Skagit River System Coop
#' * Upper Sauk Chinook (Skagit): WDFW, Skagit River System Coop
#' * Suiattle Chinook (Skagit): WDFW, Skagit River System Coop
#' * North Fork Stillaguamish Chinook: WDFW, Stillaguamish Tribe
#' * South Fork Stillaguamish Chinook: WDFW, Stillaguamish Tribe, Tulalip Tribe
#' * Skykomish Chinook (Snohomish): WDFW, Tulalip Tribe
#' * Snoqualmie Chinook (Snohomish): WDFW, Tulalip Tribe
#' * Sammamish Chinook: WDFW, Muckleshoot Tribe
#' * Cedar Chinook: WDFW, Muckleshoot Tribe
#' * Green River Chinook: WDFW, Muckleshoot Tribe
#' * White River Chinook: WDFW, Muckleshoot Tribe, Puyallup Tribe
#' * Puyallup Chinook: WDFW, Muckleshoot Tribe, Puyallup Tribe
#' * Nisqually Chinook: WDFW, Nisqually Tribe
#' * Skokomish Chinook: WDFW, Jamestown S'klallam Tribe, Point No Point Treaty COuncil, Port Gamble S'klallam Tribe, Skokomish Tribe
#' * Mid-Hood Canal Chinook: WDFW, Skokomish Tribe, Point No Point Treaty COuncil, Port Gamble S'klallam Tribe Jamestown S'klallam Tribe
#' * Dungeness Chinook: WDFW, Jamestown S'Klallam Tribe
#' * Elwha Chinook: WDFW, Elwha Tribe
#' 
#' @references
 #' Ford, M.J., editor. 2022. Biological Viability Assessment Update for Pacific Salmon and Steelhead Listed Under the Endangered Species Act: Pacific Northwest. U.S. Department of Commerce, NOAA Technical Memorandum NMFS-NWFSC-171. https://doi.org/10.25923/kq2n-ke70
#'
#'
#' Salmon Population Summaries (SPS) Database: \url{https://www.fisheries.noaa.gov/resource/tool-app/salmon-population-summaries-sps}
#' 
#' Original source: 
#' * North Fork Nooksack Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1984-2018). Spawner abundance data. Stillaguamish Tribe and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * South Fork Nooksack Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1984-2018). Spawner abundance data. Muckleshoot Tribe and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Lower Skagit Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1952-2018). Spawner abundance data. Skagit River System Coop and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Upper Skagit Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1952-2018). Spawner abundance data. Jamestown S'klallam Tribe and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Upper Cascade Chinook (Skagit): Puget Sound Chinook Natural Origin Spawner Abundance (1984-2018). Spawner abundance data. Lummi Nation, Nooksack Tribe, and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Lower Sauk Chinook (Skagit): Puget Sound Chinook Natural Origin Spawner Abundance (1952-2018). Spawner abundance data. Skagit River System Coop and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Upper Sauk Chinook (Skagit): Puget Sound Chinook Natural Origin Spawner Abundance (1952-2018). Spawner abundance data. Skagit River System Coop and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Suiattle Chinook (Skagit): Puget Sound Chinook Natural Origin Spawner Abundance (1952-2018). Spawner abundance data. Skagit River System Coop and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * North Fork Stillaguamish Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1974-2019). Spawner abundance data. Stillaguamish Tribe and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * South Fork Stillaguamish Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1974-2019). Spawner abundance data. Stillaguamish Tribe, Tulalip Tribe, and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Skykomish Chinook (Snohomish): Puget Sound Chinook Natural Origin Spawner Abundance (1965-2019). Spawner abundance data. Tulalip Tribe and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Snoqualmie Chinook (Snohomish): Puget Sound Chinook Natural Origin Spawner Abundance (1965-2019). Spawner abundance data. Tulalip Tribe and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Sammamish Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1983-2019). Spawner abundance data. Muckleshoot Tribe and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Cedar Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1965-2019). Spawner abundance data. Muckleshoot Tribe and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Green River Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1968-2019). Spawner abundance data. Muckleshoot Tribe and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * White River Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1965-2019). Spawner abundance data. Muckleshoot Tribe, Puyallup Tribe, and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Puyallup Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1968-2019). Spawner abundance data. Muckleshoot Tribe, Puyallup Tribe, and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Nisqually Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1968-2018). Spawner abundance data. Nisqually Tribe and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Skokomish Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1968-2018). Spawner abundance data. Jamestown S'klallam Tribe, Point No Point Treaty Council, Port Gamble S'klallam Tribe, Skokomish Tribe, and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Mid-Hood Canal Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1968-2018). Spawner abundance data. Jamestown S'klallam Tribe, Point No Point Treaty Council, Port Gamble S'klallam Tribe, Skokomish Tribe, and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Dungeness Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1968-2018). Spawner abundance data. Jamestown S'klallam Tribe and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' * Elwha Chinook: Puget Sound Chinook Natural Origin Spawner Abundance (1986-2018). Spawner abundance data. Elwha Tribe and Washington Department of Fish and Wildlife. Personal communication with Mindy Rowse 2020.
#' 
#' @name Puget Sound-PSchinook2020
#' @docType data
#' @examples
#' data('Puget Sound-PSchinook2020')
#' library(ggplot2)
#' out$NUMBER_OF_SPAWNERS[out$NUMBER_OF_SPAWNERS==-99] <- NA
#' ggplot(out, aes(x=YEAR, y=NUMBER_OF_SPAWNERS)) + 
#'   geom_point(na.rm = TRUE) +
#'   ggtitle('Puget Sound-PSchinook2020') +
#'   facet_wrap(~COMMON_POPULATION_NAME) +
#'   theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1), strip.text.x = element_text(size = 6))
#' 
#' out$FRACWILD[out$FRACWILD == -99] <- NA
#' ggplot(out, aes(x=YEAR, y=FRACWILD)) +
#'   geom_point(na.rm = TRUE) +
#'   ggtitle('Fraction Wild') +
#'   ylim(0,1) +
#'   facet_wrap(~COMMON_POPULATION_NAME) +
#'   theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1), strip.text.x = element_text(size = 6))
NULL

