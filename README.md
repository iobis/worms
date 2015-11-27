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

### matchAphiaRecordsByNames

```R
> matchAphiaRecordsByNames("Buccinum fusiforme")
  AphiaID                                                           url     scientificname      authority    rank     status                                                                                                   unacceptreason valid_AphiaID              valid_name valid_authority  kingdom   phylum      class         order     family    genus                                                                                                                                                                                                            citation                                      lsid isMarine isBrackish isFreshwater isTerrestrial isExtinct match_type            modified
1  531014 http://www.marinespecies.org/aphia.php?p=taxdetails&id=531014 Buccinum fusiforme   Kiener, 1834 Species unaccepted Invalid: junior homonym of <i>Buccinum fusiforme</i> Borson, 1820; <i>Buccinum kieneri</i> is a replacement name        138865 Buccinum humphreysianum   Bennett, 1824 Animalia Mollusca Gastropoda Neogastropoda Buccinidae Buccinum   Bouchet, P. (2015). Buccinum fusiforme Kiener, 1834. In:  MolluscaBase (2015). Accessed through:  World Register of Marine Species at http://www.marinespecies.org/aphia.php?p=taxdetails&id=531014 on 2015-11-27 urn:lsid:marinespecies.org:taxname:531014        1         NA           NA            NA        NA      exact 2010-10-10 12:26:13
2  510389 http://www.marinespecies.org/aphia.php?p=taxdetails&id=510389 Buccinum fusiforme Broderip, 1830 Species unaccepted                                                invalid: junior homonym of <i>Buccinum fusiforme</i> Borson, 1822        138932  Turrisipho fenestratus  (Turton, 1834) Animalia Mollusca Gastropoda Neogastropoda Buccinidae Buccinum Bouchet, P. (2015). Buccinum fusiforme Broderip, 1830. In:  MolluscaBase (2015). Accessed through:  World Register of Marine Species at http://www.marinespecies.org/aphia.php?p=taxdetails&id=510389 on 2015-11-27 urn:lsid:marinespecies.org:taxname:510389        1         NA           NA            NA        NA      exact 2013-03-23 16:18:59
```

### getAphiaRecordByID

```R
> getAphiaRecordByID(141433)
  AphiaID                                                           url scientificname       authority    rank   status unacceptreason valid_AphiaID valid_name valid_authority  kingdom   phylum    class     order    family genus                                                                                                                                                                                                             citation                                      lsid isMarine isBrackish isFreshwater isTerrestrial isExtinct match_type            modified
1  141433 http://www.marinespecies.org/aphia.php?p=taxdetails&id=141433      Abra alba (W. Wood, 1802) Species accepted             NA        141433  Abra alba (W. Wood, 1802) Animalia Mollusca Bivalvia Veneroida Semelidae  Abra Huber, M.; Gofas, S. (2015). Abra alba (W. Wood, 1802). In:  MolluscaBase (2015). Accessed through:  World Register of Marine Species at http://www.marinespecies.org/aphia.php?p=taxdetails&id=141433 on 2015-11-27 urn:lsid:marinespecies.org:taxname:141433        1         NA           NA            NA        NA      exact 2010-09-23 12:34:22
```
