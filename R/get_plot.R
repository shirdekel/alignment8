##' @title Get plot for alignment 8
##' @param data
##' @return
##' @author Shir Dekel
##' @export
get_plot <- function(data = alignment8::data) {
  allocation <-
    data %>%
    alignment8::get_omnibus("allocation") %>%
    afex_plot_alignment_8(dv_label = "Mean allocation (%)")

  ranking <-
    data %>%
    alignment8::get_omnibus("ranking") %>%
    afex_plot_alignment_8(dv_label = "Mean ranking")

  tibble::lst(
    allocation,
    ranking
  )
}
