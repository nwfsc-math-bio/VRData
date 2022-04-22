#' Clean up before reprocessing data files
#' 
#' Cleans the data folder of all entries. Cleans R of all files except those
#' for that are data R files. Cleans up the pkgdown docs folder also.
#' 
#' @keywords internal
clean_up <- function(){
  # Clean the data folder
  olddatafils <- list.files("data")
  if(length(olddatafils)!=0) file.remove(file.path("data", olddatafils))

  # Clean the R folder
  oldRfils <- list.files("R")
  oldRfils <- oldRfils[!oldRfils %in% c("describe_text.R", "process_data_raw.R", "create_vignette.R", "clean_up.R", "data_out.R")]
  if(length(oldRfils)!=0) file.remove(file.path("R", oldRfils))
  
  # Clean the vignettes folder
  oldvignettes <- list.files("vignettes")
  if(length(oldvignettes)!=0) file.remove(file.path("vignettes", oldvignettes))

  # Clean the docs data folder
  olddatafils <- list.files(file.path("docs", "data"))
  olddatafils <- olddatafils[!olddatafils %in% c("lib")]
  if(length(olddatafils)!=0) file.remove(file.path("docs", "data", olddatafils))
  
  # css file for the raw data files
  file.copy(file.path(here::here(), "pkgdown", "div.css"), file.path(here::here(), "docs", "data"))
}