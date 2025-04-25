test_that("Simple leap year test cases", {
  expect_true(is_leap(1992))   # divisible by 4, not 100
  expect_false(is_leap(2023))  # not divisible by 4
  expect_true(is_leap(2000))   # divisible by 400
})

test_that("Edge leap year test cases", {
  expect_false(is_leap(1900))  # divisible by 100, not 400
  expect_true(is_leap(1600))   # divisible by 400
  expect_false(is_leap(2100))  # divisible by 100, not 400
})

test_that("Error cases", {
  expect_error(is_leap("2024"), "Input must be an integer")
  expect_error(is_leap(2024.5), "Input must be an integer")
})

