#' Process data-raw
#'
#' Process a data file in data-raw and create an documentation R file
#' in the R directory with an Roxygen header. This also creates files
#' in docs/data so that user can download the raw data.
#' 
#' 1. Delete all files in R dir except the R files need to process data files
#' 2. Delete all data in data dir
#' 3. Delete all vignettes in vignettes dir
#' 
#' @keywords internal
#' @export
process_data_raw <- function() {
  
  # Clean up prior data files and their R and vignette files
  olddatafils <- list.files("data")
  oldRfils <- list.files("R")
  oldRfils <- oldRfils[!oldRfils %in% c("describe_text.R", "process_data_raw.R", "create_vignette.R")]
  oldvignettes <- list.files("vignettes")
  if(length(olddatafils)!=0) file.remove(file.path("data", olddatafils))
  if(length(oldvignettes)!=0) file.remove(file.path("vignettes", oldvignettes))
  if(length(oldRfils)!=0) file.remove(file.path("R", oldRfils))
  olddatafils <- list.files(file.path("docs", "data"))
  if(length(olddatafils)!=0) file.remove(file.path("docs", "data", olddatafils))
  # css file for the raw data files
  file.copy(file.path(here::here(), "inst", "extdata", "div.css"), file.path(here::here(), "docs", "data"))
  
  # Go through each data file in data-raw
  fils <- list.files("data-raw", pattern = "[.]csv")
  for(fil in fils){
    filpath <- file.path("data-raw", fil)
    if(file.info(filpath)$isdir) next
    
    # Read in the data
    # Can have a header to it marked with #'
    thetext <- readLines(filpath, warn = FALSE)
    isheader <- stringr::str_sub(thetext, 1, 2) == "#'"
    thecols <- read.csv(text=thetext[min(which(!isheader))])
    thecols <- colnames(thecols)
    headr <- thetext[isheader]
    datar <- read.csv(text=thetext[!isheader])
    colnames(datar) <- tolower(colnames(datar))
    
    # Error checking
    ESU <- unique(datar$esu)
    if(length(ESU)!=1) stop(paste(fil, "data problem. Each file should have only one ESU."))
    if("series" %in% colnames(datar)){
      series <- unique(datar$series)
      if(length(series)!=1) stop(paste(fil, "data problem. Each file should have only one value in the Series column."))
      series <- ifelse(series!="", paste0("-", series), "")
    }else{
      series <- ""
    }
    
    # Create parts needed for the R file Roxygen2 header
    # dataname <- stringr::str_replace_all(stringr::str_sub(headr[1], 4), " ","-")
    dataname <- paste0(stringr::str_replace_all(ESU, ",", ""), series, collapse = "-")
    dataname <- stringr::str_replace_all(dataname, "/", "-")
    yearname <- ifelse(any(colnames(datar)=="brood_year"), "BROOD_YEAR", "YEAR")
    
    ## Header and footer for the Roxygen2 header
    ## Footer also creates a generic example
    headr <- c(paste0("#' ", dataname, "\n#' \n"), headr)
    footr <- paste0("#' @name ", dataname, "\n",
                    "#' @docType data\n",
                    "#' @examples\n",
                    "#' data('", dataname, "')\n",
                    "#' library(ggplot2)\n",
                    "#' out$NUMBER_OF_SPAWNERS[out$NUMBER_OF_SPAWNERS==-99] <- NA\n",
                    "#' ggplot(out, aes(x=", yearname, ", y=NUMBER_OF_SPAWNERS)) + \n",
                    "#'   geom_point(na.rm = TRUE) +\n",
                    "#'   ggtitle('", dataname, "') +\n",
                    "#'   facet_wrap(~COMMON_POPULATION_NAME) +\n",
                    "#'   theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)",
                    ifelse(dplyr::n_distinct(datar$common_population_name)>10, ", strip.text.x = element_text(size = 6))\n", ")\n"),                    "#' \n",
                    "#' out$FRACWILD[out$FRACWILD == -99] <- NA\n",
                    "#' ggplot(out, aes(x=", yearname, ", y=FRACWILD)) +\n",
                    "#'   geom_point(na.rm = TRUE) +\n",
                    "#'   ggtitle('Fraction Wild') +\n",
                    "#'   ylim(0,1) +\n",
                    "#'   facet_wrap(~COMMON_POPULATION_NAME) +\n",
                    "#'   theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)",
                    ifelse(dplyr::n_distinct(datar$common_population_name)>10, ", strip.text.x = element_text(size = 6))\n", ")\n"),
                    "NULL\n"
    )
    
    ## Record the compiler in the data file
    compiler <- ifelse("compiler" %in% colnames(datar), datar$compiler[1], "")
    
    ## Create the citation section. If there is citation information, 
    ## then a section with info for each population be created.
    citation <- "#' @references\n #' Ford, M.J., editor. 2022. Biological Viability Assessment Update for Pacific Salmon and Steelhead Listed Under the Endangered Species Act: Pacific Northwest. U.S. Department of Commerce, NOAA Technical Memorandum NMFS-NWFSC-171. https://doi.org/10.25923/kq2n-ke70\n#'\n#'\n#' Salmon Population Summaries (SPS) Database: \\url{https://www.fisheries.noaa.gov/resource/tool-app/salmon-population-summaries-sps}\n#' \n"
    if("citation" %in% colnames(datar)){
      citation <- paste0(citation, "#' Original source: ")
    } 
    if(("citation" %in% colnames(datar)) && length(unique(datar$citation))==1){
      citation <- paste0(citation, unique(datar$citation), ". ")
    }
    if(("citation" %in% colnames(datar)) && stringr::str_detect(datar$citation, "CAX")){
      citation <- paste0(citation, "Citations with the format CAXMMDDYYYY indicate that the data are from the Coordinated Assessments Partnership (CAP) database and were downloaded on on MM-DD-YYYY. \\url{https://www.streamnet.org/home/data-maps/fish-hlis/}.")
    }
    
    ## Similarly for contributor section. Create entry for each population
    ## if needed
    contributor <- NULL
    if(("contributor" %in% colnames(datar)) && length(unique(datar$contributor))>1) contributor <- "#' \n#' @source\n"
    if(("contributor" %in% colnames(datar)) && length(unique(datar$contributor))==1){
      contributor <- paste0("#' \n#' @source ", unique(datar$contributor))
    }
    meth <- ifelse("method" %in% colnames(datar), "Method: ", "")
    if(("method" %in% colnames(datar)) && length(unique(datar$method))==1){
      meth <- paste0(meth, unique(datar$method))
    }
    for(i in unique(datar$population_name)){
      if(("contributor" %in% colnames(datar)) && length(unique(datar$contributor))>1){
        contributor <- c(contributor, paste0("#' * ",i,": ", unique(subset(datar, population_name==i)$contributor)))
      }
      if(("citation" %in% colnames(datar)) && length(unique(datar$citation))>1){
        citation <- c(citation, paste0("#' * ",i,": ", unique(subset(datar, population_name==i)$citation)))
      }
      
      ## Same for method
      if(("method" %in% colnames(datar)) && length(unique(datar$method))>1){
        meth <- c(meth, paste0("\n#' * ",i,": ", unique(subset(datar, population_name==i)$method)))
      }
    }
    
    ## Very minimal description section
    middlr <- paste0("#' @description Spawner and fraction wild data. Species: ", 
        unique(datar$species), ". ", meth, ". \\href{../data/", dataname, ".html}{View raw data} or \\href{../data/", dataname, ".csv}{Download raw data}")
    
    
    # Assemble all the pieces into an R file
    cat(headr, 
        describe_text(thecols, compiler=compiler), sep="\n", 
        middlr, "#' ", contributor, "#' ", citation, "#' ", footr, 
        file=file.path("R", paste0(dataname, ".R")))
    
    # Create the vignette
    create_vignette(dataname, yearname)
    
    # Make the data files
    out <- read.csv(filpath, skip=sum(isheader))
    save(out, file=file.path("data", paste0(dataname, ".rda")))
    
    # Save html of data
    ## First clean up the data by removing the AGE and CATCH columns
    if(any(stringr::str_detect(colnames(out), "AGE_"))){
      out <- out %>% dplyr::select(-starts_with("AGE_"))
    }
    if("CATCH" %in% colnames(out)){
      out <- out %>% dplyr::select(-CATCH)
    }
    ## Create an html table
    x = out %>%
      mutate_all( ~paste0("<div>", ., "</div>")) %>%
      kableExtra::kbl() %>%
      row_spec(0, background = "yellow") %>%
      kableExtra::kable_styling(
        bootstrap_options = c("striped"),
        full_width = FALSE,
        fixed_thead = TRUE) %>%
      kableExtra::save_kable(
        file=file.path("docs", "data", paste0(dataname, ".html")), 
        self_contained = FALSE, 
        extra_dependencies = '<link href="div.css" rel="stylesheet" />')
    ## This weird part is because I couldn't stop save_kable from 
    ## trashing the < and >
    a <- readLines(file.path("docs", "data", paste0(dataname, ".html")))
    a <- stringr::str_replace_all(a, "&lt;", "<")
    a <- stringr::str_replace_all(a, "&gt;", ">")
    cat(a, file=file.path("docs", "data", paste0(dataname, ".html")), sep="\n")
    
    
    # Write the data to a csv file for the user to download
    ## Store in data dir for website for easy download.
    write.csv(out, row.names=FALSE, file.path("docs", "data", paste0(dataname, ".csv")))
    
  }
}
