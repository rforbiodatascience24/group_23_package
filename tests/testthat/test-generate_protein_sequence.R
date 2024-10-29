test_that("generate_protein_sequence works correctly", {
  vect_codons <- c("AUG", "UUU", "CGC")
  protein_sequence <- generate_protein_sequence(vect_codons)
  expect_equal(protein_sequence, "MFR")
})
