#' Process data-raw
#'
#' Process's the Roxygen header on the csv files in data-raw into R files for each data set into
#'  data folder and R folder
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
    if(file.info(filpath)$isdir) next
    # Read in the data
    # Can have a header to it marked with #'
    thetext <- readLines(filpath)
    isheader <- stringr::str_sub(thetext, 1, 2) == "#'"
    thecols <- read.csv(text=thetext[min(which(!isheader))])
    thecols <- colnames(thecols)
    headr <- thetext[isheader]
    datar <- read.csv(text=thetext[!isheader])
    colnames(datar) <- tolower(colnames(datar))
    
    # Error checking
    ESU <- unique(datar$esu)
    if(length(ESU)!=1) stop(paste(fil, "data problem. Each file should have only one ESU."))

    # Create parts needed for the R file Roxygen2 header
    # dataname <- stringr::str_replace_all(stringr::str_sub(headr[1], 4), " ","-")
    dataname <- stringr::str_replace_all(ESU, ",", "")
    yearname <- ifelse(any(colnames(datar)=="brood_year"), "BROOD_YEAR", "YEAR")
    headr <- c(paste0("#' ", dataname, "\n#' \n"), headr)
    footr <- paste0("#' @name ", dataname, "\n",
                    "#' @docType data\n",
                    "#' @examples\n",
                    "#' data('", dataname, "')\n",
                    "#' library(ggplot2)\n",
                    "#' out$NUMBER_OF_SPAWNERS[out$NUMBER_OF_SPAWNERS==-99] <- NA\n",
                    "#' ggplot(out, aes(x=", yearname, ", y=NUMBER_OF_SPAWNERS)) + geom_point(na.rm = TRUE) +\n",
                    "#'   ggtitle('", dataname, "') +\n",
                    "#'   facet_wrap(~COMMON_POPULATION_NAME)\n",
                    "#' \n",
                    "#' out$FRACWILD[out$FRACWILD == -99] <- NA\n",
                    "#' ggplot(out, aes(x=", yearname, ", y=FRACWILD)) +\n",
                    "#'  geom_point(na.rm = TRUE) +\n",
                    "#'  ggtitle('Fraction Wild') +\n",
                    "#'  ylim(0,1) +\n",
                    "#'  facet_wrap(~COMMON_POPULATION_NAME)\n",
                    "NULL\n"
    )

    citation <- "#' @references\n #' Salmon Population Summaries (SPS) Database: \\url{https://www.fisheries.noaa.gov/resource/tool-app/salmon-population-summaries-sps}\n#' \n"
    if(length(unique(datar$citation))==1){
      citation <- paste0(citation, "#' Original source: ", unique(datar$citation))
    }
    contributor <- NULL
    if(length(unique(datar$contributor))>1) contributor <- "#' \n#' @source\n"
    if(length(unique(datar$contributor))==1){
      contributor <- paste0("#' \n#' @source ", unique(datar$contributor))
    }
    meth <- c()
    for(i in unique(datar$population_name)){
      if(length(unique(datar$contributor))>1){
        contributor <- c(contributor, paste0("#' * ",i,": ", unique(subset(datar, population_name==i)$contributor)))
      }
      if(length(unique(datar$citation))>1){
        citation <- c(citation, paste0("#' * ",i,": ", unique(subset(datar, population_name==i)$citation)))
      }
      if(length(unique(datar$method))==1){
        meth <- paste0("Method: ", unique(datar$method))
      }else{
        meth <- c(meth, paste0("\n#' * ",i,": ", unique(subset(datar, population_name==i)$method)))
      }
    }
    middlr <- paste0("#' @description Spawner and fraction wild data. Species: ", unique(datar$species), ". ", meth)
    cat(headr, describe_text(thecols), sep="\n", middlr, "#' ", contributor, "#' ", citation, "#' ", footr, file=file.path("R", paste0(dataname, ".R")))

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
library(VRData)
data('", dataname, "')
```

# Spawners plot

```{r, echo = FALSE}
out$NUMBER_OF_SPAWNERS[out$NUMBER_OF_SPAWNERS == -99] <- NA
ggplot2::ggplot(out, ggplot2::aes(x=.data$", yearname, ", y=.data$NUMBER_OF_SPAWNERS)) +
   ggplot2::geom_point(na.rm = TRUE) +
   ggplot2::ggtitle('Spawner Counts') +
   ggplot2::facet_wrap(~COMMON_POPULATION_NAME)
```

# Fraction wild plot

```{r, echo = FALSE}
out$FRACWILD[out$FRACWILD == -99] <- NA
ggplot2::ggplot(out, ggplot2::aes(x=.data$", yearname, ", y=.data$FRACWILD)) +
   ggplot2::geom_point(na.rm = TRUE) +
   ggplot2::ggtitle('Fraction Wild') +
   ggplot2::ylim(0,1) +
   ggplot2::facet_wrap(~COMMON_POPULATION_NAME)
```

# Raw data table

```{r, echo=FALSE}
knitr::kable(out)
```

")
    cat(headr, file=file.path("vignettes", paste0(dataname, ".Rmd")), sep="")

    # Make the data files
    out <- read.csv(filpath, skip=sum(isheader))
    save(out, file=file.path("data", paste0(dataname, ".rda")))
  }
}
