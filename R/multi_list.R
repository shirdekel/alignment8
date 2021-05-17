#' Generate HTML bullet point list
#'
#' @param x A vector of string to become become bullet points.
#'
#' @return A string.
#' @export
#'
#' @examples
#' x <- c("a", "b", "c", "<br>")
#' multi_list(x)
multi_list <- function(x) {
    htmltools::withTags({
        ul(x %>%
            purrr::map(~ li(.x %>%
                htmltools::HTML(),
            .noWS = "outside"
            )))
    }) %>%
        as.character()
}
