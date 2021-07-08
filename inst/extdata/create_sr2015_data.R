# Create the SR2015 csv files
library(dplyr)
required <- c("NMFS_POPID",
  "ESU", "SPECIES", "RUN_TIMING",
  "MAJOR_POPULATION_GROUP", "COMMON_POPULATION_NAME",
  "BROOD_YEAR", "NUMBER_OF_SPAWNERS", "FRACWILD"
)
df <- read.csv("inst/extdata/Copy of SPS_Master_Oracle2013_2014_StatusReview_JH_01282016.csv")
df <- df[,required]
df <- dplyr::rename(df, YEAR = BROOD_YEAR)

for(esu in unique(df$ESU)){
  dat <- subset(df, ESU==esu)
  esuname <- stringr::str_replace_all(esu, "/", "-")
  outfil <- file.path("data-raw",
                      paste0(stringr::str_replace_all(esuname, " ", "_"), ".csv"))
  cat(add_headr(esuname), sep="\n", file=outfil)
  write.table(dat, file=outfil, append=TRUE, sep=", ", row.names=FALSE)
}
