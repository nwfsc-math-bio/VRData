esu_dps <- read.table("inst/extdata/esudpsnames.txt", sep="\n")[,1]
species <- c("Chinook", "coho", "sockeye", "chum")
run_timing <- c("early", "early and late", "fall", "late", "late fall", "spring", "spring/summer", "summer", "summer and winter", "winter")
save(esu_dps, species, run_timing, file="data/vrdata_names.rda")