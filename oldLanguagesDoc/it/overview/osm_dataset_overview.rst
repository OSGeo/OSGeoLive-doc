:Author: Hamish Bowman
:Reviewer: Cameron Shorter, Jirotech
:Translator: Luca Delucchi
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-osm.png
  :alt: project logo
  :align: right
  :target: http://www.osm.org/


OpenStreetMap
================================================================================

Dati geografici
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenStreetMap è una mappa crowd sourced del mondo che è cresciuta fino a diventare 
una delle fonti disponibili più dettagliate a scala locale di dati cartografici. 
I dati cartografici sono creati e mantenuti da migliaia di volontari provenienti 
da tutto il mondo, usando processi simili al mantenimento dell'enciclopedia Wikipedia.

L'aspetto più visibile di OSM è l'interfaccia online alle web-tile from http://osm.org, 
ma le mappe possono anche essere viste, importate, o editate in molte applicazioni 
come :doc:`Quantum GIS <qgis_overview>` , :doc:`OpenLayers <openlayers_overview>`, 
ArcGIS e applicazioni dedicate a OSM.

Il cuore del progetto è che i dati di base sono aperti a tutti per essere modificati, 
visualizzati o per creare mappe personalizzate. Fondamentalmente l'attenzione di OSM è 
sui dati, le mappe ricche sono solo la conseguenza di ciò.

La distribuzione OSGeo-Live include un estratto della dimensione di una città dei 
dati di OSM che è usato come esempi di alcune applicazioni.

.. image:: /images/screenshots/1024x768/osm-screenshot.jpg 
  :scale: 55 %
  :alt: OSM screenshot
  :align: right

Caratteristiche principali
--------------------------------------------------------------------------------

* Gli elementi vettoriali sono taggati con nomi e altri attributi.

* Estrazione di subsets locali dei dati.

* I dati sono archiviati come nodi in latitude-longitude WGS84, stringhe di nodi, e 
  meta-elementi creando punti, polilinee, aree e relazioni.
  
* Parte alfanumerica molto ricca, spesso più dettagliata di ogni altra risorsa.

* Un archivio globale di conoscenze a livello locale.

Set di Dati inclusi in OSGeo-Live
--------------------------------------------------------------------------------

- feature_city.osm.bz2: Un largo estratto dell'area della grande città come file di
  testo compresso in BZip2.

- feature_city_CBD.osm.bz2: Un sottoinsieme più piccolo del solo distretto del
  quartiere centrale.

- feature_city_poi.db: Database Sqlite con "punti di interesse" estratti dal precedente
  estratto della grande città OSM. Contiene la localizzazione di pub, distributori,
  ristoranti, supermarket, ecc.

- I file che fanno riferimento al nome della città contengono gli stessi dati come i file
  di cui sopra. Quickstarts e overview utilizzano i nomi di file generici in modo che
  l'esempio di città può cambiare con ogni nuova release.

I dati OSM degli elementi della città sono stati importati dentro un database PostGIS chiamato
"osm_local" usando lo strumento osm2pgsql. Il sistema di riferimento spaziale usato per
questo database è latitude-longitude con il datum WGS84 (EPSG code 4326)
e può essere riproittato in altri SRSs, per esempio Spherical-mercator, su richiesta.
L'estratto più piccolo CBD è caricato in un altro database PostGIS chiamato
"pgrouting".

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://www.osm.org

**Licenza:** Open Data Commons Open Database License (ODbL)

**Versione dei Dati:** Live database estratto il 2014-07-31

**Formato dei Dati:** XML

**Sistema di coordinate spaziali:** Latitudine-Longitudine WGS84

**Supporto:** http://wiki.osm.org

