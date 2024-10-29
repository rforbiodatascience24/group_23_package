library(testthat)

# Define the test suite for the extract_codons function
test_that("extract_codons correctly extracts codons from RNA sequences", {

  # Test case: Basic RNA sequence, starting from the first nucleotide
  expect_equal(
    extract_codons("AUGGCUUAA"),
    c("AUG", "GCU", "UAA")  # Expected codons split correctly
  )

  # Test case: RNA sequence with starting position offset to second nucleotide
  expect_equal(
    extract_codons("AUGGCUUAA", start = 2),
    c("UGG", "CUU")  # Expected codons starting from the second nucleotide
  )

  # Test case: Longer RNA sequence to verify multiple codons extraction
  expect_equal(
    extract_codons("AUGGCUCCCGGGAUU"),
    c("AUG", "GCU", "CCC", "GGG", "AUU")  # Expected complete extraction of codons
  )

  # Test case: Edge case with a single codon only
  expect_equal(
    extract_codons("AUG"),
    c("AUG")  # Expected output for a single codon
  )

  # Test case: Edge case with sequence length not a multiple of 3
  expect_equal(
    extract_codons("AUGGC"),
    c("AUG")  # Expected output - last incomplete codon is ignored
  )
})

