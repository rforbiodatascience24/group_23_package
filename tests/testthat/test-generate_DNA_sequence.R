test_that("generate_DNA_sequence generates a sequence of the correct length", {
  sequence <- generate_dna_sequence(10)
  expect_equal(nchar(sequence), 10)
})

test_that("generate_DNA_sequence contains only valid bases", {
  sequence <- generate_dna_sequence(10)
  expect_true(all(strsplit(sequence, "")[[1]] %in% c("A", "T", "G", "C")))
})
