---
title: Index
output: 
  md_document:
    variant: gfm
---

<!-- index.md is generated from Index.Rmd. Please edit that file -->

# VRData <img src="man/figures/logohex.png" align="right" style="padding: 10px"/ width="25%">

This is a data package for the PNW spawner and fraction wild data used in the 5-year NWFSC PNW Salmonid Viability Reports. The official data archive is the [SPS Database](https://www.fisheries.noaa.gov/resource/tool-app/salmon-population-summaries-sps).

Latest Report: Ford, M. J. (editor), K. Barnas, L. Crozier,  M. Diaz, E. Holmes, D. Holzer,C. E. Jordan, M. Liermann, J. Myers, M. Rowse, L. Weitkamp, and M. Williams. 2022. Biological Viability Assessment Update for Pacific
Salmon and Steelhead Listed Under the Endangered Species Act: Pacific
Northwest. U.S. Department of Commerce, NOAA Technical Memorandum
NMFS-NWFSC-171. https://doi.org/10.25923/kq2n-ke70

## Installation

Install the **devtools** package (if needed) and then use:
```
library(devtools)
devtools::install_github("nwfsc-math-bio/VRData@*release")
library(VRData)
```

## To use

To use the data in R, see the examples under the `Data info` tab. For example to make a plot of the spawners, you could use
```
data('Puget Sound-PSchinook2020')
library(ggplot2)
out$NUMBER_OF_SPAWNERS[out$NUMBER_OF_SPAWNERS==-99] <- NA
ggplot(out, aes(x=YEAR, y=NUMBER_OF_SPAWNERS)) + 
  geom_point(na.rm = TRUE) +
  ggtitle('Puget Sound-PSchinook2020') +
  facet_wrap(~COMMON_POPULATION_NAME))
```      

****

## Disclaimer

The United States Department of Commerce (DOC) GitHub project code is provided on an ‘as is’ basis and the user assumes responsibility for its use. 
DOC has relinquished control of the information and no longer has responsibility to protect the integrity, confidentiality, or availability of the 
information. Any claims against the Department of Commerce stemming from the use of its GitHub project will be governed by all applicable Federal law. 
Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or 
imply their endorsement, recommendation or favoring by the Department of Commerce. The Department of Commerce seal and logo, or the seal and logo of a 
DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by DOC or the United States Government.”

****

<img src="https://raw.githubusercontent.com/nmfs-general-modeling-tools/nmfspalette/main/man/figures/noaa-fisheries-rgb-2line-horizontal-small.png" height="75" alt="NOAA Fisheries"> 

[U.S. Department of Commerce](https://www.commerce.gov/) | [National Oceanographic and Atmospheric Administration](https://www.noaa.gov) | [NOAA Fisheries](https://www.fisheries.noaa.gov/)
