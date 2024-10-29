#' Generate DNA sequence
#'
#' @param sequence_length length of the DNA sequence you want to create
#'
#' @return returns the random DNA sequence of length 'sequence_length'
#' @export
#'
#' @examples
#' sequence_length <- 10
#' DNA_sequence <- generate_dna_sequence(sequence_length)
generate_dna_sequence <- function(sequence_length){
  N_bases <- sample(c("A", "T", "G", "C"), size = sequence_length, replace = TRUE)
  DNA_sequence <- paste0(N_bases, collapse = "")
  return(DNA_sequence)
}
