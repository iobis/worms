.parsedate <- function(data) {
  data$modified <- parse_date(data$modified)
  return(data)
}

records <- function(scientificname, like=TRUE, fuzzy=TRUE, marine_only=FALSE, verbose=FALSE) {

  result <- NULL
  offset <- 1

  while (TRUE) {

    values <- list(scientificname=scientificname, fuzzy=fuzzy, marine_only=marine_only, offset=offset)
    response <- .request("getAphiaRecords", values)
    if (verbose) {
      print(response)
    }
    nodeset <- xpathApply(response, "//item")

    for (node in nodeset) {
      l <- .list(node)
      result <- rbind(result, as.data.frame(l, stringsAsFactors=FALSE))
    }

    if (length(nodeset) < 50) {
      result <- .parsedate(result)
      return(result)
    } else {
      offset <- offset + 50
    }

  }

}
