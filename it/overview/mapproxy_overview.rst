:Author: Oliver Tonnhofer
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Luca Delucchi
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

MapProxy
================================================================================

Proxy WMS & server di tile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: right

MapProxy velocizza applicazione di mappatura attraverso il pre-rendering e integrando mappe da più layer e archiviando in un cache locale.
Layers possono essere realizzati transparenti, possono cambiare proiezioni, più layers possono essere uniti in uno unico, posso essere aggiunti watermarks, e altro...

MapProxy e flessibile e scalabile per casi d'uso semplici e complessi: da una singola cache di tile per un client web OpenLayersa a un centrale di nodi SDI che combinano, unificano e accelerano dozine di servizi WMS distrbuiti.

MapProxy è utilizzado per il Broadband Atlas Tedesco per fornire mappe di migliaia di utenti e l'Agenzia Federale Tedesca per la Cartografia e Gepdesia utilizza MapProxy unire servizi WMS di tutti i 16 stati al volo.


Caratteristiche Principali
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/800x600/mapproxy_demo.png
  :width: 796
  :height: 809
  :scale: 70 %
  :alt: MapProxy demo
  :align: right

Sorgenti di Input:
  * WMS 1.0.0–1.3.0 (MapServer, GeoServer, etc.)
  * TMS, WMTS (TileCache, GeoWebcache, etc.)
  * Mapserver e Mapnik (directly, without WMS)
  * tutti TileCache, Google Maps o sorgenti compatibili con Bing

Servizi:
  * WMS (1.0.0-1.3.0)
  * TMS
  * WMTS
  * KML SuperOverlays

Tile cache:
  * archivia immagini uguale solo una volta (es. tile dell'oceano)
  * archivia tile nel filesistem, file MBTile o CouchDB
  * aggiungi watermark alle tiles

Opzioni delle sorgenti:
  * limita sorgente da geometrie (per esempio da Shapefile)
  * aggiunge trasparenza a layers opachi
  * unisce diverse sorgenti
  * reproietta ad altri SRS

Caratteristiche WMS:
  * crea l'albero dei layer da sorgenti differenti
  * crea la risposta ``GetMap`` da cache con il supporto per zoom liberi e per ogni proiezione (per tutti i Desktop GIS)
  * accelera i WMS esistenti da 10 a 100 volte
  * risponda alla richiesta ``GetLegendGraphic``
  * richieste cascade ``GetFeatureInfo`` con trasformazioni XSL opzionali
  * riproiezione al volo
  * converte versione di WMS e formato delle immagini

Sicurezza:
  * flessibile e potente API per l'autorizzazione
  * controllo capillare sui servizi e layer
  * accesso ristretto ad aree poligonali
  * si integra con i database e i metodi di autentificazione esistenti

Altre caratteristiche:
  * semplice ma potente formato di configurazione (YAML/JSON)
  * client demo basato su OpenLayers
  * fai girare diversi servizi WMS in una istanza MapProxy
  * aggiungi attribuzione alle immagini
  * supporto per raster diversi da immagini come DEM
  * molto altro

Standard Implementati
--------------------------------------------------------------------------------

MapProxy implementa le seguenti specifiche aperte:

* OGC WMS 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC WMTS 1.0.0 (KVP and RESTful)
* OSGeo TMS 1.0.0
* OGC KML 2.2 SuperOverlays


Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://mapproxy.org/

**Licenza:** `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**Versione Software:** 1.4.0

**Piattaforme Supportate:** Linux, Mac, Windows

**Supporto:** http://mapproxy.org/support.html

**Documentazione:** <../../mapproxy/index.html>`_


Guida Rapita
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/mapproxy_quickstart>`
