testthat::test_that("output expectation works", {
    testthat::expect_output(print('hello world'), 'hello world')
})