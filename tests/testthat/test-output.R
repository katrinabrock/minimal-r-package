
test_that('Output Test #1', {
  wrapped_print('Message #1')
  expect_true(TRUE)
})

test_that('Output Test #2', {
  wrapped_print('Message #2')
  expect_true(FALSE)
})
