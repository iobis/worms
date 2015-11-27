# worms

R package for consuming the WoRMS webservice

## Installation

```R
devtools::install_github("pieterprovoost/worms")
```

## getAphiaRecords

```R
> getAphiaRecords("Abra alba")
  AphiaID                                                           url scientificname
1  141433 http://www.marinespecies.org/aphia.php?p=taxdetails&id=141433      Abra alba
        authority    rank   status unacceptreason valid_AphiaID valid_name valid_authority
1 (W. Wood, 1802) Species accepted             NA        141433  Abra alba (W. Wood, 1802)
   kingdom   phylum    class     order    family genus
1 Animalia Mollusca Bivalvia Veneroida Semelidae  Abra
                                                                                                                                                                                                              citation
1 Huber, M.; Gofas, S. (2015). Abra alba (W. Wood, 1802). In:  MolluscaBase (2015). Accessed through:  World Register of Marine Species at http://www.marinespecies.org/aphia.php?p=taxdetails&id=141433 on 2015-11-27
                                       lsid isMarine isBrackish isFreshwater isTerrestrial
1 urn:lsid:marinespecies.org:taxname:141433        1         NA           NA            NA
  isExtinct match_type            modified
1        NA       like 2010-09-23 12:34:22
```
