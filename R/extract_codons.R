#' Title: Split an RNA sequence into codons
#'
#' @param rna_sequence: string of RNA nucleotides
#' @param start indicates the starting position withing the RNA sequence (default is 1)
#'
#' @return codons: groups of three nucleotides each; each codon correspons to an amino acid or stop signal
#' @export
#'
#' @examples
#' extract_codons("AUGGCUUAA")
#'
#' extract_codons("AUGGCUUAA", start = 2)
#'
extract_codons <- function(rna_sequence, start = 1){
  sequence_lenght <- nchar(rna_sequence)
  codons <- substring(rna_sequence,
                      first = seq(from = start, to = sequence_lenght-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_lenght, by = 3))
  return(codons)
}
