records <- function(scientificname, like=TRUE, fuzzy=TRUE, marine_only=FALSE, verbose=FALSE) {

  values <- list(scientificname=scientificname, fuzzy=fuzzy, marine_only=marine_only)
  response <- .request("getAphiaRecords", values)

  if (verbose) {
    print(response)
  }

  nodeset <- xpathApply(response, "//item")

  result <- NULL

  for (node in nodeset) {
    l <- .list(node)
    result <- rbind(result, as.data.frame(l))
  }

  return(result)

}
