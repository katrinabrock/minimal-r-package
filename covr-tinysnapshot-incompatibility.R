# Setup ----------------------------------------------
setwd('inner-pkgs/myinnerpkg')

install.packages('tinysnapshot')
# tested with 0.2.0

devtools::install('../functionrunner')
devtools::install('.')

# Note:
# - test_plotmtcars uses tinysnapshot
# - test_plotmtcars2 uses functionrunner which is a paired down version in an attempt to debug


# Working Case ----------------------------------------------
library(tinytest)
library(tinysnapshot)

## covr::file_coverage + test_ directly ----
withr::with_dir('inst/tinytest',
  covr::file_coverage('../../R/pltmtcars.R', 'test_pltmtcars.R')
)
# Works as expected - 100% coverage

withr::with_dir('inst/tinytest',
  covr::file_coverage('../../R/pltmtcars2.R', 'test_pltmtcars2.R')
)
# Works as expected - 100% coverage


# Failing Cases ----------------------------------------------

## covr::file_coverage + tinytest::test_dir() ----
covr::file_coverage('R/pltmtcars.R', 'test.R')
covr::file_coverage('R/pltmtcars2.R', 'test.R')

## covr::file_coverage + tinytest::test_package() ----
covr::file_coverage('R/pltmtcars.R', 'tests/tinytest.R')
# Problem! - 0% coverage
covr::file_coverage('R/pltmtcars2.R', 'tests/tinytest.R')
# Problem! - 0% coverage


## covr::package_coverage + tinytest::test_package() ----

res <- covr::package_coverage(); res
# Problem!
#
# Expected:
#  R/pltmtcars.R: 100.00%
#
# Actual:
#  R/pltmtcars.R: 0.00%

# pltmtcars2 works as expected here
