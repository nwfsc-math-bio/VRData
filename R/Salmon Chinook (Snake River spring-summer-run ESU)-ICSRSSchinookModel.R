#' Salmon Chinook (Snake River spring-summer-run ESU)-ICSRSSchinookModel
#' 

#' 
#' @format A csv file.
#' \describe{
#' \item{Series}{For certain populations, there are multiple types of spawner count data. For example survey and model counts that are based on different methods. In this case, the 'Series' column gives a name for the dataset to distinguish it from other data sets of the same population.}
#' \item{Method}{Method for the spawner count. Survey refers to a spawning ground survey; the count itself is an expansion. See the SPS (database link in sources below) for the details for the data. LadderCount is a weir or dam count. Model  refers to the DABOM model that expands from PIT tag data. GSI is an expandsion based on the BOXCAR model, which uses GSI to allocate fish sampled at Lower Granite Dam.}
#' \item{Citation}{Data citation.}
#' \item{Contributor}{Data contributor.}
#' \item{NMFS_POPID}{NWFSC id for the population.}
#' \item{ESU}{ESU or DPS name.}
#' \item{MAJOR_POPULATION_GROUP}{Major population group within the ESU or DPS.}
#' \item{COMMON_POPULATION_NAME}{Population name.}
#' \item{SPECIES}{Species name.}
#' \item{RUN_TIMING}{Run timing (fall, winter, spring, etc). If missing, see the ESU/DPS name or may not be applicable for the species.}
#' \item{BROOD_YEAR}{Integer in XXXX format. The year that the count was made. See details for ESU or DPS specific comments.}
#' \item{NUMBER_OF_SPAWNERS}{Total spawners or escapement count. -99 means missing count. May be integer or decimal.}
#' \item{FRACWILD}{Decimal between 0 and 1. Fraction wild or natural. -99 means missing information.}
#' }
#' 
#' @description Spawner and fraction wild data. Species: Chinook salmon. Method: Model
#' 
#' 
#' @source Nez Perce Tribe
#' 
#' @references
 #' Salmon Population Summaries (SPS) Database: \url{https://www.fisheries.noaa.gov/resource/tool-app/salmon-population-summaries-sps}
#' 
#' Original source: Citations with the format CAXMMDDYYYY indicate that the data are from the Coordinated Assessments Partnership (CAP) database and were downloaded on on MM-DD-YYYY. \url{https://www.streamnet.org/home/data-maps/fish-hlis/}.
#' * Tucannon River: CAX05262020
#' * Tucannon River: CAX05262021
#' * Tucannon River: CAX05262022
#' * Tucannon River: CAX05262023
#' * Tucannon River: CAX05262024
#' * Tucannon River: CAX05262025
#' * Tucannon River: CAX05262026
#' * Tucannon River: CAX05262027
#' * Lookingglass Creek: CAX05262029
#' * Lookingglass Creek: CAX05262030
#' * Lookingglass Creek: CAX05262031
#' * Lookingglass Creek: CAX05262032
#' * Lookingglass Creek: CAX05262033
#' * Lookingglass Creek: CAX05262034
#' * Lookingglass Creek: CAX05262035
#' * Lookingglass Creek: CAX05262036
#' * Lookingglass Creek: CAX05262037
#' * Lookingglass Creek: CAX05262038
#' * Catherine Creek: CAX05262040
#' * Catherine Creek: CAX05262041
#' * Catherine Creek: CAX05262042
#' * Catherine Creek: CAX05262043
#' * Catherine Creek: CAX05262044
#' * Catherine Creek: CAX05262045
#' * Catherine Creek: CAX05262046
#' * Catherine Creek: CAX05262047
#' * Catherine Creek: CAX05262048
#' * Catherine Creek: CAX05262049
#' * Grande Ronde River Upper Mainstem: CAX05262050
#' * Grande Ronde River Upper Mainstem: CAX05262051
#' * Grande Ronde River Upper Mainstem: CAX05262052
#' * Grande Ronde River Upper Mainstem: CAX05262053
#' * Grande Ronde River Upper Mainstem: CAX05262054
#' * Grande Ronde River Upper Mainstem: CAX05262055
#' * Grande Ronde River Upper Mainstem: CAX05262056
#' * Imnaha River Mainstem: CAX05262057
#' * Imnaha River Mainstem: CAX05262058
#' * Imnaha River Mainstem: CAX05262059
#' * Imnaha River Mainstem: CAX05262060
#' * Imnaha River Mainstem: CAX05262061
#' * Imnaha River Mainstem: CAX05262062
#' * Imnaha River Mainstem: CAX05262063
#' * Imnaha River Mainstem: CAX05262064
#' * Imnaha River Mainstem: CAX05262065
#' * Big Sheep Creek: CAX05262066
#' * Big Sheep Creek: CAX05262067
#' * Big Sheep Creek: CAX05262068
#' * Big Sheep Creek: CAX05262069
#' * Big Sheep Creek: CAX05262070
#' * Big Sheep Creek: CAX05262071
#' * Big Sheep Creek: CAX05262072
#' * Big Sheep Creek: CAX05262073
#' * Big Sheep Creek: CAX05262074
#' * Little Salmon River: CAX05262075
#' * Little Salmon River: CAX05262076
#' * Little Salmon River: CAX05262077
#' * Little Salmon River: CAX05262078
#' * Little Salmon River: CAX05262079
#' * Little Salmon River: CAX05262080
#' * Secesh River: CAX05262081
#' * Secesh River: CAX05262082
#' * Secesh River: CAX05262083
#' * Secesh River: CAX05262084
#' * Secesh River: CAX05262085
#' * Secesh River: CAX05262086
#' * Secesh River: CAX05262087
#' * Secesh River: CAX05262088
#' * Secesh River: CAX05262089
#' * Secesh River: CAX05262090
#' * East Fork South Fork Salmon River: CAX05262091
#' * East Fork South Fork Salmon River: CAX05262092
#' * East Fork South Fork Salmon River: CAX05262093
#' * East Fork South Fork Salmon River: CAX05262094
#' * East Fork South Fork Salmon River: CAX05262095
#' * East Fork South Fork Salmon River: CAX05262096
#' * East Fork South Fork Salmon River: CAX05262097
#' * East Fork South Fork Salmon River: CAX05262098
#' * East Fork South Fork Salmon River: CAX05262099
#' * East Fork South Fork Salmon River: CAX05262100
#' * Big Creek: CAX05262101
#' * Big Creek: CAX05262102
#' * Big Creek: CAX05262103
#' * Big Creek: CAX05262104
#' * Big Creek: CAX05262105
#' * Big Creek: CAX05262106
#' * Big Creek: CAX05262107
#' * Big Creek: CAX05262108
#' * Big Creek: CAX05262109
#' * Bear Valley Creek: CAX05262110
#' * Bear Valley Creek: CAX05262111
#' * Bear Valley Creek: CAX05262112
#' * Bear Valley Creek: CAX05262113
#' * Bear Valley Creek: CAX05262114
#' * Panther Creek: CAX05262115
#' * Panther Creek: CAX05262116
#' * North Fork Salmon River: CAX05262117
#' * North Fork Salmon River: CAX05262118
#' * North Fork Salmon River: CAX05262119
#' * North Fork Salmon River: CAX05262120
#' * Lemhi River: CAX05262121
#' * Lemhi River: CAX05262122
#' * Lemhi River: CAX05262123
#' * Lemhi River: CAX05262124
#' * Lemhi River: CAX05262125
#' * Lemhi River: CAX05262126
#' * Lemhi River: CAX05262127
#' * Lemhi River: CAX05262128
#' * Lemhi River: CAX05262129
#' * Lemhi River: CAX05262130
#' * Salmon River Lower Mainstem: CAX05262131
#' * Salmon River Lower Mainstem: CAX05262132
#' * Salmon River Lower Mainstem: CAX05262133
#' * Salmon River Lower Mainstem: CAX05262134
#' * Salmon River Lower Mainstem: CAX05262135
#' * Salmon River Lower Mainstem: CAX05262136
#' * Salmon River Lower Mainstem: CAX05262137
#' * Pahsimeroi River: CAX05262138
#' * Pahsimeroi River: CAX05262139
#' * Pahsimeroi River: CAX05262140
#' * Pahsimeroi River: CAX05262141
#' * Pahsimeroi River: CAX05262142
#' * Pahsimeroi River: CAX05262143
#' * Pahsimeroi River: CAX05262144
#' * Pahsimeroi River: CAX05262145
#' * East Fork Salmon River: CAX05262146
#' * East Fork Salmon River: CAX05262147
#' * East Fork Salmon River: CAX05262148
#' * East Fork Salmon River: CAX05262149
#' * East Fork Salmon River: CAX05262150
#' * East Fork Salmon River: CAX05262151
#' * East Fork Salmon River: CAX05262152
#' * Yankee Fork: CAX05262153
#' * Yankee Fork: CAX05262154
#' * Yankee Fork: CAX05262155
#' * Yankee Fork: CAX05262156
#' * Yankee Fork: CAX05262157
#' * Yankee Fork: CAX05262158
#' * Yankee Fork: CAX05262159
#' * Yankee Fork: CAX05262160
#' * Salmon River Upper Mainstem: CAX05262161
#' * Salmon River Upper Mainstem: CAX05262162
#' * Salmon River Upper Mainstem: CAX05262163
#' * Salmon River Upper Mainstem: CAX05262164
#' * Salmon River Upper Mainstem: CAX05262165
#' * Salmon River Upper Mainstem: CAX05262166
#' * Salmon River Upper Mainstem: CAX05262167
#' * Salmon River Upper Mainstem: CAX05262168
#' * Salmon River Upper Mainstem: CAX05262169
#' * Salmon River Upper Mainstem: CAX05262170
#' * Valley Creek: CAX05262171
#' * Valley Creek: CAX05262172
#' * Valley Creek: CAX05262173
#' * Valley Creek: CAX05262174
#' * Valley Creek: CAX05262175
#' * Valley Creek: CAX05262176
#' * Valley Creek: CAX05262177
#' * Valley Creek: CAX05262178
#' * Valley Creek: CAX05262179
#' * Valley Creek: CAX05262180
#' 
#' @name Salmon Chinook (Snake River spring-summer-run ESU)-ICSRSSchinookModel
#' @docType data
#' @examples
#' data('Salmon Chinook (Snake River spring-summer-run ESU)-ICSRSSchinookModel')
#' library(ggplot2)
#' out$NUMBER_OF_SPAWNERS[out$NUMBER_OF_SPAWNERS==-99] <- NA
#' ggplot(out, aes(x=BROOD_YEAR, y=NUMBER_OF_SPAWNERS)) + 
#'   geom_point(na.rm = TRUE) +
#'   ggtitle('Salmon Chinook (Snake River spring-summer-run ESU)-ICSRSSchinookModel') +
#'   facet_wrap(~COMMON_POPULATION_NAME) +
#'   theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1), strip.text.x = element_text(size = 6))
#' 
#' out$FRACWILD[out$FRACWILD == -99] <- NA
#' ggplot(out, aes(x=BROOD_YEAR, y=FRACWILD)) +
#'   geom_point(na.rm = TRUE) +
#'   ggtitle('Fraction Wild') +
#'   ylim(0,1) +
#'   facet_wrap(~COMMON_POPULATION_NAME) +
#'   theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1), strip.text.x = element_text(size = 6))
NULL

