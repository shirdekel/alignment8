#' Get NPV range
#'
#' @param npv
#' @param percent
#'
#' @return
#' @export
#'
getrange <- function(npv, percent) {
  stringr::str_c(
    (npv - npv * percent) %>%
      round(),
    "-",
    (npv + npv * percent) %>%
      round()
  )
}
