#' Generate protein sequence
#'
#' @param vect_codons vector of codons (e.g. c("AUG", "UUU", "CGC"))
#'
#' @return returns the sequence of AA that correspond to the input codons
#' @export
#'
#' @examples
#' vect_codons <- c("AUG", "UUU", "CGC")
#' protein_sequence <- generate_protein_sequence(vect_codons)
generate_protein_sequence <- function(vect_codons) {
  amino_acids <- paste0(codons[vect_codons], collapse = "")
  return(amino_acids)
}
