#' Create vignette
#'
#' Create the vignette for the data
#' 
#' @param dataname Name of the data
#' @param yearname YEAR or BROOD_YEAR
#' 
#' @keywords internal
#' @export
create_vignette <- function(dataname, yearname){
# Create the vignette file
headr <- c("---
title: ", dataname, "
output: rmarkdown::html_vignette
vignette: >
  %\\VignetteIndexEntry{", dataname, "}
  %\\VignetteEngine{knitr::rmarkdown}
  %\\VignetteEncoding{UTF-8}
---

# Data

```{r}
data('", dataname, "', package='VRData')
```

### [View raw data](../data/", dataname, ".html) &#8212; [Download raw data](../data/", dataname, ".csv)

```{r, echo = FALSE}
out$NUMBER_OF_SPAWNERS[out$NUMBER_OF_SPAWNERS == -99] <- NA
ggplot2::ggplot(out, ggplot2::aes(x=.data$", yearname, ", y=.data$NUMBER_OF_SPAWNERS)) +
   ggplot2::geom_point(na.rm = TRUE) +
   ggplot2::ggtitle('Spawner Counts') +
   ggplot2::facet_wrap(~COMMON_POPULATION_NAME)
```

```{r, echo = FALSE}
out$FRACWILD[out$FRACWILD == -99] <- NA
ggplot2::ggplot(out, ggplot2::aes(x=.data$", yearname, ", y=.data$FRACWILD)) +
   ggplot2::geom_point(na.rm = TRUE) +
   ggplot2::ggtitle('Fraction Wild') +
   ggplot2::ylim(0,1) +
   ggplot2::facet_wrap(~COMMON_POPULATION_NAME)
```

# Common Metrics



")
cat(headr, file=file.path("vignettes", paste0(dataname, ".Rmd")), sep="")
}