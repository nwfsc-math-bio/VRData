# README

**See the [WEBSITE](https://nwfsc-math-bio.github.io/VRData/) for the data information. This Readme is for the package and data maintainers.**

## New data

* Add new csv files to the `data-raw` folder.
* See the wiki for instructions on data format.
* Push to GitHub and the data will be automatically processed for the website via a GitHub Action.

# The GitHub Action

The following will be run automatically.

## Changing the man files and vignettes

The man files appear under the Reference tab and the vignettes appear under the Articles tab. The R and Rmd files for these are created by the function
 `process_data_raw()`. When you type
```
process_data_raw()
```
It processes the csv file in `data-raw` folder into a `.rda` object in `data`, a `.R` file, and a `.Rmd` vignette using the Roxygen header on the csv file. Change this file to change the look of the man or article files.

When the package is built, you can do ?<data-name> to get the meta information.

## Updating the webpage locally

Note, you can run `process_data_raw()` locally, but the GitHub repo is set up with a GitHub Action to automatically run `process_data_raw()` whenever a push to the `data-raw` folder happens. 

## Manual workflow

* Build the package (click 'Install and Restart' in the build tab)
* Add csv file to data-raw
* Run `process_data_raw()`
* Build the documentation, then build package
* Run `pkgdown::build_site()`

```
library(VRData)
process_data_raw()
devtools::document(roclets = c('rd', 'collate', 'namespace'))
pkgdown::build_site()
```

# Disclaimer
 
This repository is a scientific product and is not official communication of the National Oceanic and Atmospheric Administration, or the United States Department of Commerce. All NOAA GitHub project code is provided on an 'as is' basis and the user assumes responsibility for its use. Any claims against the Department of Commerce or Department of Commerce bureaus stemming from the use of this GitHub project will be governed by all applicable Federal law. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by the Department of Commerce. The Department of Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by DOC or the United States Government.

