datapath <- file.path(here::here(), "data-raw", "SPSupload2020.csv")
datadir <- file.path(here::here(), "data-raw")

df <- read.csv(datapath, colClasses = "character")
colnames(df) <- toupper(colnames(df))
if(!("YEAR" %in% colnames(df))) df$YEAR <- df$BROOD_YEAR
df$FILE_NOTES <- ""
df$LINE_NOTES <- ""

cols = c("SERIES", "ESU", "SPECIES", "METHOD", "MAJOR_POPULATION_GROUP", "NMFS_POPID", "POPULATION_NAME", "COMMON_POPULATION_NAME", "DISPLAY_ORDER", "RUN_TIMING", "STREAM_NAME", "YEAR", "NUMBER_OF_SPAWNERS", "FRACWILD",               "CATCH", "CITATION", "CONTRIBUTOR", "LINE_NOTES", "FILE_NOTES")

df <- df[, cols]

ser <- unique(df$SERIES)
n <- length(ser)
compiler <- rep("Mari Williams", n)
compiler[ser %in% c("PSsteelhead2020", "PSchinook2020")] <- "Katie Barnes"
compiler[ser == "OzetteSockeye2020"] <- "Martin Liermann"

for(i in 1:n){
  a <- subset(df, SERIES==ser[i])
  a$FILE_NOTES[1] <- paste0("@filename ", a$SERIES[1])
  a$FILE_NOTES[2] <- paste0("@compiler ", compiler[i])
  a <- a[, -1]
  write.csv(a, file = file.path(datadir, paste0(ser[i], ".csv")), row.names = FALSE)
}

