##' @title Get main experiment trials for alignment 8

##' @param randomize_order 
##' @return
##' @author Shir Dekel
##' @export
get_main <- function(randomize_order = TRUE) {
    instructions <-
        get_instructions_alignment_8()

    projects <-
        get_projects_alignment_8()

    project_allocation <-
        projects %>%
        slider::slide(get_project_allocation, randomize_order)

    # Should be a timeline list with length the same as the number of trials to
    # include. If includes conditional timelines, each element of main should be a
    # list of two (one timeline, and conditional)

    main <-
        instructions %>%
        build_timeline(project_allocation) %>%
        map(flatten)

    return(main)
}
