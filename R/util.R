.message <- function(action) {
  if (action == "getAphiaRecords") {
    return("<soapenv:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:aph=\"http://aphia/v1.0/AphiaRecords\"><soapenv:Header/><soapenv:Body><aph:getAphiaRecords soapenv:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><scientificname xsi:type=\"xsd:string\">?</scientificname><like xsi:type=\"xsd:boolean\">?</like><fuzzy xsi:type=\"xsd:boolean\">?</fuzzy><marine_only xsi:type=\"xsd:boolean\">?</marine_only><offset xsi:type=\"xsd:int\">?</offset></aph:getAphiaRecords></soapenv:Body></soapenv:Envelope>")
  } else if (action == "matchAphiaRecordsByNames") {
    return("<soapenv:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:aph=\"http://aphia/v1.0/AphiaMatches\" xmlns:soapenc=\"http://schemas.xmlsoap.org/soap/encoding/\"><soapenv:Header/><soapenv:Body><aph:matchAphiaRecordsByNames soapenv:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><scientificnames xsi:type=\"v1:scientificnames\" soapenc:arrayType=\"xsd:string[]\" xmlns:v1=\"http://aphia/v1.0\"><name xsi:type=\"xsd:string\">?</name></scientificnames><marine_only xsi:type=\"xsd:boolean\">?</marine_only></aph:matchAphiaRecordsByNames></soapenv:Body></soapenv:Envelope>")
  }
}

.request <- function(action, values) {
  url <- "http://www.marinespecies.org/aphia.php?p=soap"
  message <- .message(action)
  headers <- c(
    "SOAPAction" = action,
    "Accept-Encoding" = "gzip,deflate",
    "Content-Type" = "text/xml;charset=UTF-8"
  )
  xml <- xmlParse(message)
  for (name in names(values)) {
    node <- xpathApply(xml, paste0("//", name))[[1]]
    xmlValue(node) <- values[[name]]
  }
  response <- POST(url, body=saveXML(xml), add_headers(headers))
  result <- content(response)
  return(result)
}

.list <- function(xml) {
  result <- list()
  l <- xmlToList(xml)
  for (key in names(l)) {
    if (key != ".attrs") {
      if ("text" %in% names(l[[key]])) {
        value <- l[[key]][["text"]]
        type <- l[[key]][[".attrs"]][["type"]]
        if (type == "xsd:int") {
          result[[key]] <- strtoi(value)
        } else {
          result[[key]] <- value
        }
      } else {
        result[[key]] <- NA
      }
    }
  }
  return(result)
}

.parsedate <- function(data, field) {
  data[[field]] <- parse_date(data[[field]])
  return(data)
}
