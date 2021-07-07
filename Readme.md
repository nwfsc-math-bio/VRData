# README

This has a function called `process_data_raw()`. When you type
```
process_data_raw()
```
It processes the csv file in `data-raw` folder into a `.rda` object in `data`, a `.R` file, and a `.Rmd` vignette usingthe Roxygen header on the csv file.

When the package is built, you can do ?<data-name> to get the meta information.

Note, you can run `process_data_raw()` locally, but the GitHub repo is set up with a GitHub Action to automatically run `process_data_raw()` whenever a push to the `data-raw` folder happens. I probably ought to set it up to do a pull-request instead of pushing right to master branch, but I am not sure how to do that. So that's on the To-Do list.

## Workflow

* Add csv file to data-raw
* Run `process_data_raw()`
* Build the documentation, then build package
* Run `pkgdown::build_site()`

```
library(SRData)
process_data_raw()
devtools::document(roclets = c('rd', 'collate', 'namespace'))
system("R CMD INSTALL --no-multiarch --with-keep.source SRData")
pkgdown::build_site()
```

