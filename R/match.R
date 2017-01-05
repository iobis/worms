#' Match scientific names.
#'
#' @param scientificname Scientific names.
#' @param marine_only Marine only flag.
#' @param verbose Print HTTP response information.
#' @return Matching Aphia records.
#' @export
#' @examples
#' matchAphiaRecordsByNames(c("Buccinum fusiforme", "Abra alba"))
matchAphiaRecordsByNames <- function(scientificnames, marine_only = FALSE, verbose = FALSE) {

  names <- as.list(scientificnames)
  names <- setNames(names, rep("scientificnames[]", length(names)))
  parameters <- c(names, marine_only = marine_only)
  response <- worms_request("AphiaRecordsByMatchNames", parameters, verbose)

  return(response)

}
