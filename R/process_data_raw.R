#' Process data-raw
#'
#' Process's the Roxygen header on the csv files in data-raw into R files for each data set into
#'  data folder and R folder
#' @export
process_data_raw <- function() {
  olddatafils <- list.files("data")
  if(length(olddatafils)!=0){
    file.remove(file.path("data", olddatafils))
    file.remove(file.path("R", stringr::str_replace(olddatafils, "[.]rda", ".R")))
  }
  fils <- list.files("data-raw")
  for(fil in fils){
    filpath <- file.path("data-raw", fil)
    thetext <- readLines(filpath)
    isheader <- stringr::str_sub(thetext, 1, 2) == "#'"
    headr <- thetext[isheader]
    dataname <- stringr::str_replace_all(stringr::str_sub(headr[1], 4), " ","-")
    footr <- paste0("#' @name ", dataname, "\n",
                    "#' @docType data\n", "NULL\n")
    cat(headr, sep="\n", footr, file=file.path("R", paste0(dataname, ".R")))
    out <- read.csv(filpath, skip=sum(isheader))
    save(out, file=file.path("data", paste0(dataname, ".rda")))
  }
}
