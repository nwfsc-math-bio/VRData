#' Red Fish River
#'
#' Redd counts taken at the weir below Green Fish Creek.
#'
#' @format A csv file.
#' \describe{
#'   \item{BROOD_YEAR}{The year that the redd count was made.}
#'   \item{SPAWNERS}{Spawners estimated from the redd counts. See details.}
#'   \item{FRACWILD}{Fracwild wild. This is assumed to be 1 for this population due to the lack of any nearby hatcheries.}
#' }
#' @author{Jenny Johnson jenny@nooa.gov}
#' @details Here are all the details.
#' @name Red-Fish-River
#' @docType data
#' @examples
#' data('Red-Fish-River')
#' library(ggplot2)
#' ggplot(out, aes(x=BROOD_YEAR, y=SPAWNERS)) + geom_point(na.rm = TRUE) +
#'   ggtitle('Red-Fish-River')
NULL

