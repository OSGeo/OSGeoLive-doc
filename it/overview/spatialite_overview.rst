SpatiaLite
================================================================================

Database spaziale
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SpatiaLite rappresenta l'estensione spaziale per il motore di database SQLite.

SQLite è un DBMS molto diffuso, semplice, robusto, facile da usare e molto leggero. Ogni  database SQLite è semplicemente un file; lo potete liberamente copiare, comprimere, trasferire su una LAN o sul WEB senza alcuna complicazione.

Questi files sono anche portabili; il medesimo file-database funzionerà su Windows, Linux, MacOs etc.


.. _SQLite: http://www.sqlite.org/

.. image:: ../../images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right
  
Caratteristiche Principali
--------------------------------------------------------------------------------

L'estensione SpatiaLite abilita SQLite a supportare i dati spaziali in modo conforme alle specifiche OGC.

* Supporta i formati standard WKT e WKB
* Implementa le funzioni Spatial SQL come AsText(), GeomFromText(), Area(), PointN() e simili
* L'intero set di funzionalità OpenGis è supportato tramite GEOS, comprese le funzioni sofisticare per l'analisi spaziale come Overlaps(), Touches(), Union(), Buffer() ..
* Supporta completamente i metadati spaziali secondo le specifiche OpenGis
* Supporta notazioni alternative per le Geometrie - EWKT, GML, KML e GeoJSOM
* Supporta l'importazione ed esportazione di Shapefiles
* Supporta la riproiezione delle coordinate tramite PROJ.4 ed il dataset di parametri geodetici EPSG
* Supporta i set di caratteri internazionali tramite GNU libiconv
* Implementa un vero Indice Spaziale basato sull'estensione RTree di SQLite
* L'estensione VirtualShape consente a SQLite di accedere direttamente agli Shapefile come VIRTUAL TABLEs
* Potete quindi eseguire delle interrogazione SQL standard su Shapefile esterno, senza bisogno di importare o convertire i dati
* L'estensione VirtualText consente a SQLite di accedere direttamente a files di testo CSV/TxtTav cine VIRTUAL TABLEs
* L'estensione VirtualXL consente a SQLite di accedere ai fogli di calcolo xls come VIRTUAL TABLEs
* Potete quindi eseguire delle interrogazioni SQL standard su file di testo o su fogli Excel, senza bisogno di importare o convertire i dati
* L'applicazione GUI supporta tutte queste funzionalità, ma in un modo ancora più facile, semplice e diretto

Dettagli
--------------------------------------------------------------------------------

**Sito WEB:** http://www.gaia-gis.it/gaia-sins/

**Licenza:** MPL v1.1 and GPL v3

**Versione Software:** spatialite 3.1.0a / librasterlite 1.1 / spatialite-gui 1.5.0 / spatialite-gis 1.0.0

**Piattaforme Supportate:** Linux, Mac, Windows

**Interfaccia API:** C

Presentazione veloce
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/spatialite_quickstart>`
