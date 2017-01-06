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

  pagesize <- 50
  result <- list()

  for (i in seq(1, ceiling(length(scientificnames) / pagesize))) {
    start <- (i-1) * pagesize + 1
    end <- min(i * pagesize, length(scientificnames))
    names <- as.list(scientificnames[start:end])
    names <- setNames(names, rep("scientificnames[]", length(names)))
    parameters <- c(names, marine_only = marine_only)
    response <- worms_request("AphiaRecordsByMatchNames", parameters, verbose)

    json <- content(response, "text", encoding = "UTF-8")
    if (json != "") {
      matches <- fromJSON(json)
    } else {
      matches <- as.list(rep(NA, length(names)))
    }

    result <- c(result, matches)
  }

  return(result)

}
