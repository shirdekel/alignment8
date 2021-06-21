#' @title `{drake}` plan

#' @return
#' @author Shir Dekel
#' @export
get_plan <- function() {
  drake_plan(
    experiment_resources = target(
      file.path("inst", "experiment_resources"),
      format = "file"
    ),
    main = target(
      get_main(),
      ## Seed needed to recreate old target with different name. Generated from
      ## `diagnose(experiment4)$seed` in the original thesis project.
      seed = 1827196820
    ),
    experiment = target(
      {
        shirthesis::get_experiment(
          experiment_directory = file.path("inst", "jspsych"),
          experiment_resources,
          main,
          post_experiment = get_post_experiment(),
          columns = get_columns(),
          condition_allocation = get_condition_allocation(),
          ethics = FALSE,
          on_finish = NULL
        )
        file.path("inst", "jspsych", "experiment")
      },
      target = "file"
    ),
    main_testing = get_main(randomize_order = FALSE),
    experiment_testing = target(
      {
        shirthesis::get_experiment(
          experiment_directory = file.path("inst", "jspsych", "testing"),
          experiment_resources,
          main_testing,
          post_experiment = get_post_experiment(),
          columns = get_columns(),
          condition_allocation = get_condition_allocation(),
          ethics = FALSE,
          on_finish = NULL
        )
        file.path("inst", "jspsych", "testing", "experiment")
      },
      target = "file"
    ),
    materials = get_screenshots(experiment_testing),
    data_simulation = target(
      get_data_simulation(),
      ## Seed needed to recreate old target with different name so that the same
      ## `npv_amount` vector is generated. Generated from
      ## `diagnose(data_simulation_alignment_8)$seed` in the original thesis
      ## project.
      seed = 623005508
    ),
    plot_simulation = get_plot_simulation(data_simulation),
    power_table = target(
      get_power_table(),
      ## Seed needed to recreate old target with different name so that the same
      ## `npv_amount` vector is generated as in the experiment generation.
      ## Generated from `diagnose(experiment4)$seed` in the original thesis
      ## project.
      seed = 1827196820
    ),
    power = get_power(power_table)
  )
}
