# worms

R package for consuming the WoRMS webservice

## Installation

```R
devtools::install_github("pieterprovoost/worms")
```

## Functions
### getAphiaRecords

```R
> getAphiaRecords("Abra alba")
  AphiaID                                                           url scientificname       authority    rank   status unacceptreason valid_AphiaID valid_name valid_authority  kingdom   phylum    class     order    family genus                                                                                                                                                                                                             citation                                      lsid isMarine isBrackish isFreshwater isTerrestrial isExtinct match_type            modified
1  141433 http://www.marinespecies.org/aphia.php?p=taxdetails&id=141433      Abra alba (W. Wood, 1802) Species accepted             NA        141433  Abra alba (W. Wood, 1802) Animalia Mollusca Bivalvia Veneroida Semelidae  Abra Huber, M.; Gofas, S. (2015). Abra alba (W. Wood, 1802). In:  MolluscaBase (2015). Accessed through:  World Register of Marine Species at http://www.marinespecies.org/aphia.php?p=taxdetails&id=141433 on 2015-11-27 urn:lsid:marinespecies.org:taxname:141433        1         NA           NA            NA        NA       like 2010-09-23 12:34:22
```
