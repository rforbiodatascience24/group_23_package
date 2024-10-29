#' Amino acids distribution
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#' @param amino_sequence String containing an sequence of amino acids
#'
#' @return Bar diagram showing the distribution of amino acids in the input string
#' @export
#'
#' @examples
#' amino_sequence <- "AGCTAGCTAGCTAGC"
#' amino_plot <- amino_distribution(amino_sequence)

amino_distribution <- function(amino_sequence){
  # Splitting the string into individual characters based on character boundaries
  single_amino <- amino_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    # Converting into a character vector, keeping only the unique values
    as.character() |>
    unique()

  # Counting how many times each amino acid appears in the original string
  counts <- sapply(single_amino, function(amino_acid) stringr::str_count(string = amino_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  # Customizing column names
  colnames(counts) <- c("Counts")
  counts[["Aminoacids"]] <- rownames(counts)

  # Creating the bar diagram
  amino_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Aminoacids, y = Counts, fill = Aminoacids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(amino_plot)
}
