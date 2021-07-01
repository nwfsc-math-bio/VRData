#' Blue Fairy River
#'
#' Redd counts from upper Blue Fairy Creek.
#'
#' @format A csv file.
#' \describe{
#'   \item{BROOD_YEAR}{The year that the redd count was made.}
#'   \item{SPAWNERS}{Spawners estimated from the redd counts. See details.}
#'   \item{FRACWILD}{Fracwild wild. This is assumed to be 1 for this population due to the lack of any nearby hatcheries.}
#' }
#' @author{Jenny J.}
#' @details Here are all the details.
#' @name Blue-Fairy-River
#' @docType data
#' @examples
#' data('Blue-Fairy-River')
#' library(ggplot2)
#' ggplot(out, aes(x=BROOD_YEAR, y=SPAWNERS)) + geom_point(na.rm = TRUE) +
#'   ggtitle('Blue-Fairy-River')
NULL

