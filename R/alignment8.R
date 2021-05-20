#' alignment8
#' A data package for the Alignment 8 experiment.
#' @docType package
#' @aliases alignment8-package
#' @title Alignment 8 experiment
#' @name alignment8
#' @description Data, materials, and experiment code for the Alignment 8 experiment.
#' @details Use \code{data(package='alignment8')$results[, 3]} to see a list of available data sets in this data package
#'     and/or DataPackageR::load_all
#' _datasets() to load them.
#' @seealso
#' \link{data}
#' \link{plot_simulation}
#' \link{power}
NULL




#' Detailed description of the data
#' @name data
#' @docType data
#' @title Descriptive data title
#' @format a \code{rowwise_df} containing the following fields:
#' \describe{
#' \item{time_elapsed}{}
#' }
#' @source The data was collected using Prolific.
#' @seealso
#' \link{alignment8data}
NULL




#' Detailed description of the data
#' @name plot_simulation
#' @docType data
#' @title Descriptive data title
#' @format a \code{gg} containing the following fields:
#' \describe{
#' \item{data}{}
#' \item{layers}{}
#' \item{scales}{}
#' \item{mapping}{}
#' \item{theme}{}
#' \item{coordinates}{}
#' \item{facet}{}
#' \item{plot_env}{}
#' \item{labels}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{alignment8}
#' \link{power}
NULL




#' Detailed description of the data
#' @name power
#' @docType data
#' @title Descriptive data title
#' @format a \code{list} containing the following fields:
#' \describe{
#' \item{power_curve}{}
#' \item{n}{}
#' \item{n_total}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{alignment8}
#' \link{plot_simulation}
NULL
