test_that("transcription works", {
  expect_equal(dna_transcription("TAC"), "UAC")

  expect_equal(dna_transcription("TAT"), "UAU")

  expect_equal(dna_transcription("GCC"), "GCC")

  expect_equal(dna_transcription("TTT"), "UUU")

  expect_equal(dna_transcription(""), "")
})
