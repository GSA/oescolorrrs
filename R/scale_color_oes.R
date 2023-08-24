#' GSA colors for color aesthetics in ggplot
#'
#' @param palette The color palette to use including `primary colors`, `accent colors`, `full colors`, `gradient blue`, `gradient red`, `gradient orange`, `gradient green`, or `gradient magenta`.
#' @param discrete Boolean for whether the data is discrete
#' @param reverse Boolean to revers the order of the categories
#' @param ... Other parameters passed to ggplot2::discrete_scale() or ggplot2::scale_color_gradientn()
#'
#' @return ggplot2 object with GSA branding colors
#' @export
#'
#' @examples
#' scale_color_oes(palette = "primary colors", discrete = TRUE, reverse = FALSE,)
#'
scale_color_oes <- function(palette = "primary colors", discrete = TRUE, reverse = FALSE, ...) {
  # palette = "primary colors"
  # discrete = TRUE
  # reverse = FALSE
  pal <- oes_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("oes_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}
