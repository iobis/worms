library(worms)
context("Records")

test_that("records works as expected", {
  data <- records("Abra alba")
  expect_more_than(nrow(data), 0)
  expect_true(data$AphiaID[1] == "141433")
})
