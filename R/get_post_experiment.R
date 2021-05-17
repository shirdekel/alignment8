##' @title Get post experiment trials Alignment Experiment 8

##' @return
##' @author Shir Dekel
##' @export
get_post_experiment <- function() {
    ## debrief <-
    ##     get_debrief()

    trial_end <-
        shirthesis::get_trial_end()

    post <-
        build_timeline(
            ## debrief,
            trial_end
        )

    return(post)
}
