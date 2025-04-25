test_that("Simple palindromes work", {
  expect_true(is_palindrome("radar"))
  expect_true(is_palindrome("level"))
  expect_false(is_palindrome("banana"))
})

test_that("Edge cases are handled", {
  expect_true(is_palindrome("A man a plan a canal Panama"))  # with spaces and cases
  expect_true(is_palindrome("No lemon, no melon"))           # punctuation
  expect_true(is_palindrome(""))                             # empty string is technically a palindrome
})

test_that("Errors are thrown for invalid inputs", {
  expect_error(is_palindrome(123), "Input must be a single character string.")
  expect_error(is_palindrome(c("a", "b")), "Input must be a single character string.")
})

