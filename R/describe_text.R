#' describe_text
#'
#' Adds the format code for the Roxygen data header by reading in the 
#' columns names and only adding the needed items.
#' 
#' @param thecols the column names from the file
#' @keywords internal
describe_text <- function(thecols){
key <- matrix(c(
"NMFS_POPID", "NWFSC id for the population.",
"POPID", "NWFSC id for the population.",
"POP_ID", "NWFSC id for the population.",
"ESU", "ESU or DPS name.",
"DPS", "ESU or DPS name.",
"MAJOR_POPULATION_GROUP", "Major population group within the ESU or DPS.",
"MPG", "Major population group within the ESU or DPS.",
"COMMON_POPULATION_NAME", "Population name.",
"SPECIES", "Species name.",
"RUN_TIMING", "Run timing (fall, winter, spring, etc). If missing, see the ESU/DPS name or may not be applicable for the species.",
"YEAR", "Integer in XXXX format. The year that the count was made. See details for ESU or DPS specific comments.",
"BROOD_YEAR", "Integer in XXXX format. The year that the count was made. See details for ESU or DPS specific comments.",
"NUMBER_OF_SPAWNERS", "Total spawners or escapement count. -99 means missing count. May be integer or decimal.",
"FRACWILD", "Decimal between 0 and 1. Fraction wild or natural. -99 means missing information.",
"FRACTION_WILD", "Decimal between 0 and 1. Fraction wild or natural. -99 means missing information.",
"CITATION", "Data citation.",
"SOURCE", "Data source.",
"CONTRIBUTOR", "Data contributor."),ncol=2, byrow = TRUE)

thetext <- c("#' \n#' @format A csv file.\n#' \\describe{")

for(i in thecols){
  loc <- match(stringr::str_to_lower(i), stringr::str_to_lower(key[,1]))
  if(is.na(loc)) next
  thetext <- c(thetext, paste0("#' \\item{", i, "}{", key[loc,2], "}"))
}
thetext <- c(thetext, "#' }\n#' ")

return(thetext) 
}