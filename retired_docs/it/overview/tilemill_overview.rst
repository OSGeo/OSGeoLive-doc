:Author: OSGeo-Live
:Author: Javier Sanchez, GeoNaTec
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-tilemill.png
  :alt: TileMill
  :align: right
  :target: http://www.tilemill.com

TileMill
================================================================================


Design studio per mappe Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TileMill è uno strumento per creare mappe belle, basate per il web e interattive da un vasto range di sorgenti di dati spaziali esistenti.

.. Review Comment
  If MBTiles is an Open Standard, we probably should provide a link to it.

Le mappe web generate possono usare tooltips sovrapposti, popup cliccabili, grafici e immagini interattive, marker SVG, tessiture complesse e layer multipli. Le mappe personalizzate possono essere esportate in differenti formati come: .png, .pdf, .svg and MBTiles. Le specifiche MBTiles difiniscono come salvare tiles in un singolo file, come un database SQLite.

TileMill supporta sia di dati vettoriali (CSV, shapefile, KML, GeoJSON) o raster (GeoTiff), e può anche collegarsi a grandi sorgenti di dati come OpenStreetMap, PostgreSQL e SQLite.

Tilemill fa uso della libreria di restituzione di mappe :doc:`Mapnik <mapnik_overview>` (usato da OpenStreetMap) e usa CartoCSS come linguaggio di stile.

Tilemill è tipicamente usato insieme con software GIS desktop (come QuantumGIS) per preparare i dati, e editor grafici (come GIMP) per creare icone, patterns e tessiture.

.. image:: /images/screenshots/1024x768/tilemill_interface2.png
  :scale: 50 %
  :alt: TilleMill user interface
  :align: right

Caratteristiche principali
--------------------------------------------------------------------------------

* Caricare i dati da una vasta gamma di sorgenti
  
  * ESRI Shapefile
  * KML
  * GeoJSON
  * GeoTiff
  * CSV fogli di calcolo
  * OpenStreetMap

* Connessione di database geospaziali

  * PostgreSQL + PostGIS
  * SQLite

* Gestione di layers personalizzati

* Stile dei dati

  * Stile usando colori preselezionati o personalizzati
  * Stili condizionati

* Aggiunta di tooltips e legende

* Pubblicazione

  * File immagine: .png, .pdf, .svg, MBTiles.
  * Pubblicazione come pagina internet
  * Mappe incluse su una pagina web o CMS (WordPress, Drupal)

* JavaScript API

Standard implementati
--------------------------------------------------------------------------------

* TileMill non supporta standards OGC, come WMS o WFS. Rather it adheres to the widespread practices of z/x/y tile schemes used by Google and OSM and is based on the MBTiles and UTFGrid specifications.

Dettagli
--------------------------------------------------------------------------------

**Sito web:** http://tilemill.com

**Licenza:** BSD

**Versione software:** 0.10.1

**Piattaforme supportate:** Windows, Linux, Mac

**Interfacce API:** JavaScript

**Supporto:** http://www.tilemill.com


Guida rapida
--------------------------------------------------------------------------------
    
* :doc:`Documentazione introduttiva <../quickstart/tilemill_quickstart>`
