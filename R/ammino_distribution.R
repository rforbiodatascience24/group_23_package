#' Amminoacids distribution
#'
#' @param ammino_sequence String containing an sequence of amminoacids
#'
#' @return Bar diagram showing the distribution of amminoacids in the input string
#' @export
#'
#' @examples
#' ammino_sequence <- "AGCTAGCTAGCTAGC"
#' ammino_plot <- ammino_distribution(ammino_sequence)

ammino_distribution <- function(ammino_sequence){
  # Splitting the string into individual characters based on character boundaries
  single_ammino <- ammino_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    # Converting into a character vector, keeping only the unique values
    as.character() |>
    unique()

  # Counting how many times each amminoacid appears in the original string
  counts <- sapply(single_ammino, function(amino_acid) stringr::str_count(string = ammino_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  # Customizing column names
  colnames(counts) <- c("Counts")
  counts[["Amminoacids"]] <- rownames(counts)

  # Creating the bar diagram
  ammino_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amminoacids, y = Counts, fill = Amminoacids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(ammino_plot)
}
