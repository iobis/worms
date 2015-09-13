matchAphiaRecordsByNames <- function(name, marine_only=FALSE, verbose=FALSE) {

  result <- NULL

  values <- list(name=name, marine_only=marine_only)
  response <- .request("matchAphiaRecordsByNames", values)
  if (verbose) {
    print(response)
  }
  nodeset <- xpathApply(response, "//item/item")

  for (node in nodeset) {
    l <- .list(node)
    result <- rbind(result, as.data.frame(l, stringsAsFactors=FALSE))
  }

  result <- .parsedate(result, "modified")
  return(result)

}
