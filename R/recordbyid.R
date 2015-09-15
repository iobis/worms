getAphiaRecordByID <- function(id, verbose=FALSE) {

  values <- list(AphiaID=id)
  response <- .request("getAphiaRecordByID", values)
  if (verbose) {
    print(response)
  }
  nodeset <- xpathApply(response, "//return")
  l <- .list(nodeset[[1]])

  if (!"nil" %in% names(l)) {
    l <- .parsedate(l, "modified")
    return(as.data.frame(l))
  } else {
    return(data.frame())
  }

}
