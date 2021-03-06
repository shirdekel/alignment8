##' @title Summarise simulation results

##' @return
##' @author Shir Dekel
##' @export
##' @param simulation_results
##' @param nsim
summarise_simulation <- function(simulation_results, nsim) {
  simulation_results %>%
    group_by(effect) %>%
    mutate(
      mean_estimate = mean(estimate),
      mean_se = mean(std.error),
      sum(p.value < 0.05) %>%
        binom::binom.confint(nsim, level = 0.95, method = "exact") %>%
        select(mean, lower, upper) %>%
        rename(power = mean)
    ) %>%
    ungroup()
}
