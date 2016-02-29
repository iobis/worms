#' Match a scientific name.
#'
#' @param name Scientific name, multiple names are currently not supported.
#' @param marine_only
#' @param verbose
#'
#' @return Matching Aphia records.
#' @export
#'
#' @examples
#' matchAphiaRecordsByNames("Buccinum fusiforme")
matchAphiaRecordsByNames <- function(name, marine_only=FALSE, verbose=FALSE) {

  result <- data.frame()

  values <- list(name=name, marine_only=marine_only)
  response <- .request("matchAphiaRecordsByNames", values)
  if (verbose) {
    print(response)
  }
  nodeset <- xpathApply(response, "//item/item")

  for (node in nodeset) {
    l <- .list(node)
    if (!"nil" %in% names(l)) {
      result <- rbind(result, as.data.frame(l, stringsAsFactors=FALSE))
    }
  }

  result <- .parsedate(result, "modified")
  return(result)

}
