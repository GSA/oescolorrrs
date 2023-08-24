#' Selects specific colors from GSA colors
#'
#' @param ... List of colors
#'
#' @return Correct list of colors
#' @export
#'
#' @examples
#' oes_cols("blue outer ring","blue inner ring")
#'
oes_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (oes_colors)

  oes_colors[cols]
}
