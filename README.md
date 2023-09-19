
# vitessceAnalysisR

![R package version](https://img.shields.io/github/r-package/v/vitessce/vitessceAnalysisR) [![docs](https://img.shields.io/badge/docs-📖-57B4E9.svg)](https://vitessce.github.io/vitessceAnalysisR/)

Data preparation functions to support [vitessceR](https://github.com/vitessce/vitessceR).

## Installation

Installation requires R 4.0.0 or greater.

```r
install.packages("devtools")
devtools::install_github("vitessce/vitessceAnalysisR")
```

## Usage

```r
library(vitessceAnalysisR)

# TODO
```

For full examples, visit the [documentation](https://vitessce.github.io/vitessceAnalysisR/).

For questions and help with using the package, please open a [discussion](https://github.com/vitessce/vitessceAnalysisR/discussions).


## Development

```r
setwd("path/to/vitessceAnalysisR")
install.packages("htmlwidgets")
install.packages("devtools")
devtools::install()
devtools::load_all()
```

## Testing

```r
devtools::check()
devtools::test()
```

## Documentation

```r
install.packages("devtools")
install.packages("pkgdown")
devtools::document()
pkgdown::build_site()
```

Documentation is automatically deployed to GitHub pages with GitHub actions.

## Deployment

Currently, the package is only distributed through GitHub.
In the future, we plan to submit the package to CRAN or Bioconductor.

To increment the package version, update it in [`DESCRIPTION`](https://github.com/vitessce/vitessceAnalysisR/blob/main/DESCRIPTION#L4).

