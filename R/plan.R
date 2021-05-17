#' @title `{drake}` plan

#' @return
#' @author Shir Dekel
#' @export
get_plan <- function() {
  drake_plan(
    main = target(
      get_main(gambles),
      ## Seed needed to recreate old target with different name. Generated from
      ## `diagnose(experiment4)$seed` in the original thesis project.
      seed = 1827196820
    ),
    ## experiment = target(
    ##   {
    ##     shirthesis::get_experiment(
    ##       experiment_directory = file.path("inst", "jspsych"),
    ##       experiment_resources,
    ##       main,
    ##       post_experiment = get_post_experiment(),
    ##       columns = get_columns(),
    ##       condition_allocation = get_condition_allocation(),
    ##       ethics = FALSE,
    ##       on_finish = NULL
    ##     )
    ##     file.path("inst", "jspsych", "experiment")
    ##   },
    ##   target = "file"
    ## ),
    ## materials = get_screenshots(experiment)
  )
}
