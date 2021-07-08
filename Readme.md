# README

**See the [WEBSITE](https://nwfsc-math-bio.github.io/VRData/) for the data information. This Readme is for the package and data maintainers.**

## New data

* Add new csv files to the `data-raw` folder with the Roxygen2 headers. 
* Push to GitHub and the data will the automatically processed for the website.

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

## Workflow

* Add csv file to data-raw
* Run `process_data_raw()`
* Build the documentation, then build package
* Run `pkgdown::build_site()`

```
library(VRData)
process_data_raw()
devtools::document(roclets = c('rd', 'collate', 'namespace'))
system("R CMD INSTALL --no-multiarch --with-keep.source VRData")
pkgdown::build_site()
```

