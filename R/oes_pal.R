#' Assigns the selected palette
#'
#' @param palette Name of palette to use `primary colors`, `accent colors`, `full colors`,`gradient blue`, `gradient red`, `gradient orange`, `gradient green`, or `gradient magenta`
#' @param reverse Boolean indicating whether to reverse the order
#' @param ... Other parameters passed to ggplot2::discrete_scale() or ggplot2::scale_color_gradientn()
#'
#' @return New color palette based on names
#' @export
#'
#' @examples
#' oes_pal(palette = "primary colors", reverse = reverse)
oes_pal <- function(palette = "primary `accent colors`,", reverse = FALSE, ...) {
  pal <- oes_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
