#' R Library Summary
#'
#' Provides a brief summary of the package
#' libraries on your machine
#'
#' @param sizes a logical indicating whether or not to calculate sizes
#'
#' @return A dataframe containing the count of
#'    packages in each of your libraries.
#' @export
#'
#' @examples
#' lib_summary()
#' lib_summary(sizes = TRUE)
lib_summary <- function(sizes = FALSE) {
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  if(sizes) {
    pkg_df <- calculate_sizes(pkg_df)

  }
  pkg_df
}

# this calculates sizes

#' calculate sizes
#'
#' @param df a data.frame
#'
#' @return df with a lib_size column
#' @noRd
calculate_sizes <- function(df) {
  df$lib_size <- map_dbl(
    df$Library,
    ~ sum(fs::file_size(fs::dir_ls(.x, recurse = TRUE)))
  )
  df
}
