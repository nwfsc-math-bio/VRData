#' Process data-raw
#'
#' Process's the Roxygen header on the csv files in data-raw into R files for each data set into
#'  data folder and R folder
#'
#' @keywords internal
#' @export
process_data_raw <- function() {

  # Clean up prior data files and their R and vignette files
  olddatafils <- list.files("data")
  if(length(olddatafils)!=0){
    file.remove(file.path("data", olddatafils))
    file.remove(file.path("R", stringr::str_replace(olddatafils, "[.]rda", ".R")))
    file.remove(file.path("vignettes", stringr::str_replace(olddatafils, "[.]rda", ".Rmd")))
    file.remove(file.path("vignettes", stringr::str_replace(olddatafils, "[.]rda", ".R")))
    file.remove(file.path("vignettes", stringr::str_replace(olddatafils, "[.]rda", ".html")))
  }

  # Go through each data file
  fils <- list.files("data-raw")
  for(fil in fils){
    filpath <- file.path("data-raw", fil)
    thetext <- readLines(filpath)
    isheader <- stringr::str_sub(thetext, 1, 2) == "#'"

    # Create the R file for the data file
    headr <- thetext[isheader]
    dataname <- stringr::str_replace_all(stringr::str_sub(headr[1], 4), " ","-")
    footr <- paste0("#' @name ", dataname, "\n",
                    "#' @docType data\n",
                    "#' @examples\n",
                    "#' data('", dataname, "')\n",
                    "#' library(ggplot2)\n",
                    "#' ggplot(out, aes(x=BROOD_YEAR, y=SPAWNERS)) + geom_point(na.rm = TRUE) +\n",
                    "#'   ggtitle('", dataname, "')\n",
                    "NULL\n")
    cat(headr, sep="\n", footr, file=file.path("R", paste0(dataname, ".R")))

    # Create the vignette file
    headr <- c("---
title: ", dataname, "
output: rmarkdown::html_vignette
vignette: >
  %\\VignetteIndexEntry{", dataname, "}
  %\\VignetteEngine{knitr::rmarkdown}
  %\\VignetteEncoding{UTF-8}
---

# To load data

```{r}
library(testdata)
data('", dataname, "')
```

# Raw data table

```{r, echo=FALSE}
knitr::kable(out)
```

# Spawners plot

```{r, echo = FALSE}
ggplot2::ggplot(out, ggplot2::aes(x=.data$BROOD_YEAR, y=.data$SPAWNERS)) +
   ggplot2::geom_point(na.rm = TRUE) +
   ggplot2::ggtitle('Spawner Counts')
```

")
    cat(headr, file=file.path("vignettes", paste0(dataname, ".Rmd")), sep="")

    # Make the data files
    out <- read.csv(filpath, skip=sum(isheader))
    save(out, file=file.path("data", paste0(dataname, ".rda")))
  }
}
