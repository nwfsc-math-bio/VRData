#' Purple Fish River
#'
#' Redd counts from upper Blue Fish Creek.
#'
#' @format A csv file.
#' \describe{
#'   \item{BROOD_YEAR}{The year that the redd count was made.}
#'   \item{SPAWNERS}{Spawners estimated from the redd counts. See details.}
#'   \item{FRACWILD}{Fracwild wild. This is assumed to be 1 for this population due to the lack of any nearby hatcheries.}
#' }
#' @author{Jenny John}
#' @details Here are all the details.
#' @name Purple-Fish-River
#' @docType data
#' @examples
#' data('Purple-Fish-River')
#' library(ggplot2)
#' ggplot(out, aes(x=BROOD_YEAR, y=SPAWNERS)) + geom_point(na.rm = TRUE) +
#'   ggtitle('Purple-Fish-River')
NULL

