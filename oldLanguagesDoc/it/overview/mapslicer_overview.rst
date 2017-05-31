:Author: Klokan Petr Pridal
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapslicer.png
  :alt: project logo
  :align: right
  :target: https://wiki.osgeo.org/wiki/MapSlicer


MapSlicer
================================================================================

Map Publishing
--------------------------------------------------------------------------------

MapSlicer è una applicazione desktop per la creazione di tile per la pubblicazione 
rapida di mappe raster. I geodati sono transformati in tile compatibili con Google 
Maps e Earth - pronti per essere pubblicati caricando le tile su ogni Webserver o 
cloud storage (come Amazon S3).

Non necessità di nessuna difficile configurazione nel server, ogni semplice file 
hosting va bene. Le comunicazioni dinamiche come il panning e lo zoom, sovrapposizione
di markers e dati vettoriali è fornita da una potente funzionalità per il browser. 

L'applicazione genera direttamente un semplice visualizzatore basato su OpenLayers 
e Google Maps API e può essere facilmete modificabile.

MapSlicer applicazione desktop multi-piattaforma. Eseguibili sono disponibile per
Windows, Mac OS X and packages for linux (Debian/Ubuntu).

Core Features
--------------------------------------------------------------------------------

* Javascript APIs molto famose sono supportate: OpenLayers, Google Maps API
* Nessuna altro software è necessario installare sul server
* Archiviazione più o meno ovenque: cloud storage come Amazon S3 o tutti i più convenienti webhosting con accesso FTP 
* Fusione facile ccon layer commerciali (Google, Bing, Yahoo) o OpenStreetMap
* Tiles seguono OSGEO TMS (Specifiche Tile Map Service)
* Possibilità di analizzare dati raster in diversi formati: TIFF/GeoTIFF, MrSID, ECW, JPEG2000, Erdas HFA, NOAA BSB, JPEG and more...
* Possibilità di supporto commerciale e restituzioni parallelizzate on CPU multi core o Amazon EC2 cluster

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** https://wiki.osgeo.org/wiki/MapSlicer

**Licenza:** New BSD License

**Versione Software:** 1.0

**Piattaforme Supportate:** Windows, Linux, Mac

**Supporto e applicazioni commerciali:** https://wiki.osgeo.org/wiki/MapSlicer

Guida Rapida
--------------------------------------------------------------------------------
    
* :doc:`Documentazione introduttiva <../quickstart/mapslicer_quickstart>`
