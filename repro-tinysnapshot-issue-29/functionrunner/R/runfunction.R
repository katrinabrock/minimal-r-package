#' Extremely simplified version of tinysnapshot::expect_snapshot_plot
#'
#' Takes a function as an argument and runs that function
#' @param fn function to be run
#' @export
run_function <- function(fn) fn()