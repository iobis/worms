library(worms)

context("matchAphiaRecordsByNames")

test_that("matchAphiaRecordsByNames returns the expected matches", {
  names <- c("Buccinum fusiforme", "Abra alpa")
  response <- matchAphiaRecordsByNames(names)
  expect_true(length(response) == length(names))
  expect_true(nrow(response[[1]]) == 2)
  expect_true(nrow(response[[2]]) == 1)
})
