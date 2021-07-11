#' @title Omnibus results for alignment 8
#' @param data
#' @param dv
#' @return
#' @author Shir Dekel
#' @export
get_omnibus <- function(data, dv) {
  data %>%
    dplyr::nest_by(
      id,
      reliability_amount,
      npv_amount,
      allocation,
      ranking,
      alignment,
      reliability_type
    ) %>%
    ## Makes sure that npv levels are in the correct order for the emmeans
    ## linear trend analysis
    dplyr::arrange(npv_amount) %>%
    afex::aov_ez(
      id = "id",
      dv = dv,
      between = c("alignment", "reliability_type"),
      within = c("npv_amount", "reliability_amount"),
      data = .,
      type = 2
    )
}
