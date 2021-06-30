# README

This has a function called `process_data_raw()`. When you type
```
process_data_raw()
```
It processes the csv file in `data-raw` folder into a `.rda` object in `data` and a `.R` file with the Roxygen header on the csv file.

When the package is built, you can do ?Red-Fairy-River (say) to get the meta information.

Note, you can run `process_data_raw()` locally, but the GitHub repo is set up with a GitHub Action to automatically run `process_data_raw()` whenever a push to `data-raw` happens.
