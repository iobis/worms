worms_url <- function() {
  getOption("worms_url", "http://marinespecies.org/rest/")
}

worms_request <- function(endpoint, parameters, verbose = FALSE) {
  url <- paste0(worms_url(), endpoint)
  response <- GET(url, user_agent("worms - https://github.com/iobis/worms"), query = parameters)
  if (verbose) {
    print(response)
  }
  return(response)
}
