#' Get Aphia records by ID.
#'
#' @param ids The ids.
#' @param verbose Verbose output.
#' @return A data frame.
#' @export
getAphiaRecordsById <- function(ids, verbose = FALSE) {

  result <- data.frame()

  for (i in 1:length(ids)) {
    id <- ids[i]
    response <- worms_request(paste0("AphiaRecordByAphiaID/", id), NULL, verbose)

    json <- content(response, "text", encoding = "UTF-8")
    if (!is.null(json) & json != "") {
      o <- fromJSON(json)
      o <- lapply(o, function(x) ifelse(is.null(x), NA, x))
      result <- bind_rows(result, as.data.frame(o))
    } else {
      result <- bind_rows(result, data.frame(AphiaID = id))
    }

  }

  return(result)

}
