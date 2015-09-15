library(worms)

context("getAphiaRecords")

test_that("getAphiaRecords returns the correct record", {
  data <- getAphiaRecords("Abra alba")
  expect_more_than(nrow(data), 0)
  expect_true(data$AphiaID[1] == "141433")
})

context("matchAphiaRecordsByNames")

test_that("matchAphiaRecordsByNames returns the expected match", {
  data <- matchAphiaRecordsByNames("Abra alpa")
  expect_more_than(nrow(data), 0)
  expect_true(data$AphiaID[1] == "141433")
})

context("getAphiaRecordByID")

test_that("getAphiaRecordByID returns the expected record", {
  data <- getAphiaRecordByID(141433)
  expect_more_than(nrow(data), 0)
  expect_true(data$AphiaID[1] == "141433")
})
