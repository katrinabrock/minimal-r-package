setwd('inner-pkgs/myinnerpkg')

install.packages('tinysnapshot')
# tested with 0.2.0

devtools::install('../functionrunner')


withr::with_dir('inst/tinytest',
  covr::file_coverage('../../R/pltmtcars.R', 'test_pltmtcars.R')
)
# Works as expected - 100% coverage

res <- covr::package_coverage(); res
# Problem!
#
# Expected:
#  R/pltmtcars.R: 100.00%
#
# Actual:
#  R/pltmtcars.R: 0.00%

# Note: pltmtcars2 is an attempt to reproduce the issue without tinysnapshot
# unable to reproduce as this part is also behaving as expected.
