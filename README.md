# worms

R client for WoRMS

## Installation

```R
devtools::install_github("iobis/worms")
```

## Get Aphia records by ID

```R
getAphiaRecordsById(141433)
```

```
  AphiaID                                                       url scientificname       authority   status unacceptreason    rank valid_AphiaID valid_name
1  141433 http://marinespecies.org/aphia.php?p=taxdetails&id=141433      Abra alba (W. Wood, 1802) accepted             NA Species        141433  Abra alba
  valid_authority  kingdom   phylum    class    order    family genus
1 (W. Wood, 1802) Animalia Mollusca Bivalvia Cardiida Semelidae  Abra
                                                                                                                                                                                                              citation
1 Huber, M.; Gofas, S. (2010). Abra alba (W. Wood, 1802). In:  MolluscaBase (2016). Accessed through:  World Register of Marine Species at http://www.marinespecies.org/aphia.php?p=taxdetails&id=141433 on 2017-01-27
                                       lsid isMarine isBrackish isFreshwater isTerrestrial isExtinct match_type             modified
1 urn:lsid:marinespecies.org:taxname:141433        1         NA           NA 
```

## Match names

```R
matchAphiaRecordsByNames(c("Buccinum fusiforme", "Abra alba"))
```

```
[[1]]
  AphiaID                                                       url     scientificname      authority     status
1  531014 http://marinespecies.org/aphia.php?p=taxdetails&id=531014 Buccinum fusiforme   Kiener, 1834 unaccepted
2  510389 http://marinespecies.org/aphia.php?p=taxdetails&id=510389 Buccinum fusiforme Broderip, 1830 unaccepted
                                                                                                    unacceptreason    rank valid_AphiaID
1 Invalid: junior homonym of <i>Buccinum fusiforme</i> Borson, 1820; <i>Buccinum kieneri</i> is a replacement name Species        138865
2                                                invalid: junior homonym of <i>Buccinum fusiforme</i> Borson, 1822 Species        138932
               valid_name valid_authority  kingdom   phylum      class         order     family    genus
1 Buccinum humphreysianum   Bennett, 1824 Animalia Mollusca Gastropoda Neogastropoda Buccinidae Buccinum
2  Turrisipho fenestratus  (Turton, 1834) Animalia Mollusca Gastropoda Neogastropoda Buccinidae Buccinum
                                                                                                  citation
1   Bouchet, P. (2010). Buccinum fusiforme Kiener, 1834. In:  MolluscaBase (2016). Accessed through:  World Register of Marine Species at http://www.marinespecies.org/aphia.php?p=taxdetails&id=531014 on 2017-01-27
2 Bouchet, P. (2013). Buccinum fusiforme Broderip, 1830. In:  MolluscaBase (2016). Accessed through:  World Register of Marine Species at http://www.marinespecies.org/aphia.php?p=taxdetails&id=510389 on 2017-01-27
                                       lsid isMarine isBrackish isFreshwater isTerrestrial isExtinct match_type             modified
1 urn:lsid:marinespecies.org:taxname:531014        1         NA           NA            NA        NA      exact 2010-10-10T12:26:13Z
2 urn:lsid:marinespecies.org:taxname:510389        1         NA           NA            NA        NA      exact 2013-03-23T16:18:59Z

[[2]]
  AphiaID                                                       url scientificname       authority   status unacceptreason    rank valid_AphiaID valid_name
1  141433 http://marinespecies.org/aphia.php?p=taxdetails&id=141433      Abra alba (W. Wood, 1802) accepted             NA Species        141433  Abra alba
  valid_authority  kingdom   phylum    class    order    family genus
1 (W. Wood, 1802) Animalia Mollusca Bivalvia Cardiida Semelidae  Abra
                                                                                                                citation
1 Huber, M.; Gofas, S. (2010). Abra alba (W. Wood, 1802). In:  MolluscaBase (2016). Accessed through:  World Register of Marine Species at http://www.marinespecies.org/aphia.php?p=taxdetails&id=141433 on 2017-01-27
                                       lsid isMarine isBrackish isFreshwater isTerrestrial isExtinct match_type             modified
1 urn:lsid:marinespecies.org:taxname:141433        1         NA           NA            NA        NA      exact 2010-09-23T12:34:22Z
``` 
