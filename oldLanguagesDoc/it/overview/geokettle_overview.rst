:Author: Thierry Badard 
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live7.0draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-geokettle.png
  :alt: project logo
  :align: right
  :target: http://www.geokettle.org/

GeoKettle
================================================================================

Extract Transform Load (ETL)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoKettle è una versione "con supporto spaziale" di `Pentaho Data Integration <http://kettle.pentaho.com>`_ 
(anche conosciuto come Kettle). È un potente, strumento spaziale ETL (Extract, 
Transform and Load) per metadata-driven dedicato all'integrazione di diverse sorgenti 
dei dati per creare e aggiornare database spaziali, data warehouses e servizi web.

GeoKettle permette l'Estrazione di dati dalla sorgente, la Transformazione dei dati 
al fine di correggere gli errori, pulire i dati, cambiare la struttura dei dati, 
rendere i dati conformi agli standard, e Caricare i dati trasformati in un DataBase 
Management System (DBMS), file GIS o servizio web geospaziale di destinazione. GeoKettle 
è particolarmente utile per automatizzare complessi e ripetitivi processamenti di dati 
senza produrre il codice specifico, convertendo tra i formati dei dati, migrandi dati 
tra diversi database, feeding data into databases, etc.

Nel dominio geospaziale, Geokettle viene comparato a FME, uno strumento ETL spaziale 
proprietario. GeoKettle è stabile, veloce, conforme agli standard, con centinaia di
funzioni e supporto per la scrittura/lettura di molti formati di file, servizi e DBMS. 
GeoKettle è usato da diverse organizzazione in tutto il monto, incluso agenzia governative, 
banche, assicurazioni e  and geospatial system integrators.

.. image:: /images/projects/geokettle/geokettle-overview.png
  :scale: 50 %
  :alt: project logo
  :align: right

Caratteristiche principali
--------------------------------------------------------------------------------

* Estrae dati da: 

  * 35 e più tipologie di database: MySQL, PostgreSQL/PostGIS, Oracle, ...
  * File XML
  * File XLS
  * File Xbase (dBase, Foxpro, etc)
  * File systems information
  * Generated data
  * File MS Access
  * LDAP
  * SOLAP (Spatial OLAP) system: GeoMondrian
  * Formati di dati geospaziali: Shapefile, GML 3.1.1, KML 2.2, tutti i formati supportati da OGR
  * OGC Web services: Web Feature Service (WFS), Sensor Observation Service (SOS), Catalogue Web Service (CSW)

* Transformazione dei dati:

  * Motore basato su data transfer (no code generator) 
  * Looking up data in databases, files or memory
  * Calculating
  * Scripting: Javascript, SQL, RegExp
  * Splitting
  * Mapping
  * Selecting
  * Partitioning
  * Filtering
  * Merging
  * Joining
  * Duplicating
  * Clustering (MPP)
  * Pivotting
  * Analisi di dati geospaziali: buffer, centroid, distance, intersection, union, ...
  * Eleborazione geografica avanzata: clipping, delaunay, simplify/smooth geometry, split features, ...
  * Può eseguire qualsiasi Web Processing Service (WPS)
  * Aggregazione spaziale
  * Anteprima cartografica

* Carica dati nei seguenti formati di destinazione:

  * Database: MySQL, PostgreSQL/PostGIS, Oracle, ...
  * Popolazione di data warehouse
  * Formati di dati geospaziali: Shapefile, GML 3.1.1, KML 2.2, tutti i formati supportati da OGR
  * Servizi OGC Web: Catalogue Web Service (CSW), Web Feature Service (WFS), ...
  * Partitioned loading
  * Bulk loading
  * Parallel loading
  * Clustering

* Ambienti:
  
  * GUI completa chiamata "Spoon" per modificare ogni opzione di trasformazione
  * Strumenti da linea di comando: eseguono lavori e trasformazione
  * Server web: esecuzione remote e clustering perfect in ambienti di cloud computing per elaborazione 
    di set di dati molto grandi
  * API di sviluppo per Java
  * Plugin eco-system

Standard implementati
--------------------------------------------------------------------------------

* OGC standards compliant (SFS, WFS-T, WPS, CSW, SOS, GML, KML)

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://www.geokettle.org/

**Licenza:** GNU Lesser General Public License (LGPL) version 2.1

**Versione Software:** |version-geokettle|

**Piattaforme Supportate:** Windows, Linux, Mac, Solaris

**Interfacce API:** Java, Javascript

**Supporto:** http://www.spatialytics.org & http://www.spatialytics.com


Guida rapida
--------------------------------------------------------------------------------
    
* :doc:`Documentazione introduttiva <../quickstart/geokettle_quickstart>`
