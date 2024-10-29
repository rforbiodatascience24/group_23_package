#' DNA transcription
#'
#' @param dna_sequence sequence of DNA to be transcripted
#'
#' @return sequence of corresponding RNA
#' @export
#'
#' @examples
#' dna_sequence <- c("TTT", "TCT", "TAT")
#' dna_sequence <- toupper(dna_sequence)
#' transcripted_rna <- gsub("T", "U", dna_sequence)

dna_transcription <- function(dna_sequence){
  dna_sequence <- toupper(dna_sequence)
  transcripted_rna <- gsub("T", "U", dna_sequence)
  return(transcripted_rna)
}
