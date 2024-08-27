
test_that('Output Test #1', {
  print('Message #1')
  expect_true(TRUE)
})

test_that('Output Test #2', {
  print('Message #2')
  expect_true(FALSE)
})
