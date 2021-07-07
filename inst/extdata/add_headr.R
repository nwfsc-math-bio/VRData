add_headr <- function(title){
  paste0("#' ", title, "
#'
#' Spawner counts and fraction wild data.
#'
#' @format A csv file.
#' \\describe{
#'   \\item{NMFS_POPID}{NWFSC id for the population.}
#'   \\item{ESU}{}
#'   \\item{SPECIES}{}
#'   \\item{RUN_TIMING}{}
#'   \\item{MAJOR_POPULATION_GROUP}{}
#'   \\item{COMMON_POPULATION_NAME}{}
#'   \\item{BROOD_YEAR}{The year that the count was made.}
#'   \\item{NUMBER_OF_SPAWNERS}{Spawners count. -99 means missing count.}
#'   \\item{FRACWILD}{Fraction wild. -99 means missing information.}
#' }
#' @details Downloaded from the SPS Master Oracle 2013-2014 Database on
#' January 28, 2016"
  )
}
