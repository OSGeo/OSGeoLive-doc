:Author: Jody Garnett
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-GeoTools.png
  :alt: project logo
  :align: right
  :target: http://geotools.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

GeoTools
================================================================================

GeoTools è una libreria Java open source (LGPL) che fornisce metodi conformi agli
standard per gestire dati geospaziali, e le strutture dei dati sono basate sulle
specifiche del Open Geospatial Consortium (OGC).

.. image:: /images/screenshots/800x600/geotools-overview.png
  :scale: 60 %
  :alt: GeoTools is a modular library supported by plugins for additional formats
  :align: right

GeoTools è usata da un gran numero di progetti incluso servizi web, strumenti da
linea di comando e applicazioni desktop. Le applicazio di OSGeo-Live che includono
GeoTools: 
:doc:`52nSOS_overview`, :doc:`52nWPS_overview`, :doc:`atlasstyler_overview`, 
:doc:`geomajas_overview`, Geopublisher, :doc:`geoserver_overview`, e :doc:`udig_overview`.

Caratteristiche principali
--------------------------------------------------------------------------------

* Definizione delle interfacce per i concetti di chiavi spaziali e strutture dei dati

  * Supporto alle geometrie integrate fornite da `JTS Topology Suite (JTS) <https://sourceforge.net/projects/jts-topo-suite/>`_
  * Filtri sugli attributi e spaziali usando la specifica OGC Filter Encoding

* Una API di accesso ai dati pulita che supporta accesso agli oggetti, supporto
  transazionale e locking between threads

  * Accesso ai dati GIS in differenti formati e database spaziali
  * Supporto ai sistemi di riferimento delle coordinate e alle trasformazioni
  * Lavorare con un vasto raggio di proiezioni cartografiche
  * Filtrare e analizzare i dati in termini di attributi spaziali e non spaziali

* A stateless, low memory renderer, particularly useful in server-side environments.

  * compone e visualizza mappe con stili complessi

* Powerful *schema assisted* parsing technology using XML Schema to bind to GML content

  * La tecnologia per parsing / encoding è fornita con bindings per molti degli
    standard OGC incluso GML, Filter, KML, SLD, and SE.

* GeoTools Plugins: un sistema aperto di plugin che vi permetti di aggiungere alla
  libreria formati addizionali

  * Plugin per il progetto ImageIO-EXT che permette a GeoTools di leggere formati
    raster addizionali da GDAL

* GeoTools Estensioni

  * Fornisce funzionalità addizionali costruite usando le funzionalità spaziali
    della libreria principala.

  .. image:: /images/screenshots/800x600/geotools-extension.png
     :alt: Extensions built using the GeoTools library

  * Estensioni fornisco supporto ai grafi e alle analisi di reti (per trovare il
    percorso più breve), validazione, un client per servizi web, bindings per il parsing e
    l'encoding XML e color brewer.

* GeoTools Unsupported

  * GeoTools also operates as part of a wider community with a staging area used to foster new talent and promote experimentation.

  * Alcuni highlights sono il supporto a swing (usato nei tutorials di geotools), swt,
    supporto a elaborazione locale e web, simbologia addizionale, formati dati addizionali,
    generazione di griglie e una coppia di implementazione di geometrie ISO.

Formati supportati
------------------------  

* accesso ai dati e formati raster:

  arcsde, arcgrid, geotiff, grassraster, gtopo30, image (JPEG, TIFF, GIF, PNG), imageio-ext-gdal, imagemoasaic, imagepyramid, JP2K, matlab.

* supporto ai database "jdbc-ng":

  db2, h2, mysql, oracle, postgis, spatialite, sqlserver.

* accesso ai dati e formati vettoriali:

  app-schema, arcsde, csv, dxf, edigeo, excel, geojson, org, property, shapefile, wfs.

* XML Bindings:

  Strutture dati Java e bindings forniti per i seguenti formati:
  xsd-core (xml simple types), fes, filter, gml2, gml3, kml, ows, sld, wcs, wfs, wms, wps, vpf.

  parser/encoders per geometrie, filtri e stili addizionali disponibili per applicazioni DOM e SAX.

Standard implementati
--------------------------------------------------------------------------------

Supporto di numerosi standard Open Geospatial Consortium (OGC):

* Struttue dati e motore di rendering per OGC Style Layer Descriptor / Symbology Encoding
* OGC General Feature Model incluso il supporto Simple Feature
* OGC Grid Coverage rappresentazion di informazioni raster
* OGC Filter and Common Constraint Language (CQL)
* Clients per Web Feature Service (WFS), Web Map Service (WMS) e supporto sperimentale Web Process Service (WPS)
* ISO 19107 Geometry

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://geotools.org/

**Licenza:** LGPL

**Versione Software:** 9.3

**Piattaforme Supportate:** Cross Platform Java 6

**Interfacce API:** Java

**Supporto:** `Communication and Support <http://docs.geotools.org/latest/userguide/welcome/support.html>`_

Guida rapida
--------------------------------------------------------------------------------

* `Documentazione introduttiva <http://docs.geotools.org/latest/userguide/tutorial/quickstart/index.html>`_
