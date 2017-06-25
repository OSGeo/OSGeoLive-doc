:Author: Trevor Wekel
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-MapGuideOS.png
  :alt: project logo
  :align: right
  :target: http://mapguide.osgeo.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapGuide Open Source
================================================================================

Web Service
--------------------------------------------------------------------------------

`MapGuide Open Source <http://mapguide.osgeo.org/>`_ è una piattaforma basata su
internet che permette agli utenti di sviluppare e mettere in produzione applicazioni
webGIS e servizi web geospaziali. MapGuide fornisce un visualizzatore interattivo 
che include il supporto per la selezione di elementi, property inspection, map tips,
e operazioni come buffer, seleziione within, e misure.

MapGuide include un database XML per la gestione dei contenuti. Maestro permette agli
utenti di editare il database XML e costruire siti web senza scrivere una singola riga
di codice. MapGuide supporta anche i formati più popolari di file geospaziali, databases, e standard.

MapGuide può essere eseguito su Linux o Windows, supporta i server web Apache e IIS,
e offre estensione in PHP, .NET, Java, and JavaScript APIs per sviluppare le applicazioni. 
MapGuide Open Source è rilasciato sotto licenza LGPL.

.. image:: /images/screenshots/1024x768/mapguide_viewer.png
  :scale: 50%
  :alt: screenshot
  :align: right

.. note:: A causa di limiti di spazio su OSGeo-Live, MapGuide è attualmente non installato.

.. commented out as manual install doesn't currently work: To install
  it open up a terminal and run ``cd gisvm/bin; sudo ./install_mapguide.sh``

Core Features
--------------------------------------------------------------------------------

**Visualizzatore interattivo di mappe**

* Visualizzatore dinamico basato sui browser
* Selezione di oggetti e attributi
* Buffering, interrogazione 
* Stampe e plot

**Output cartografici di qualità**

* Dettagli a seconda della scala
* Stili tematici in base a regole
* Rappresentazione di immagini Anti-aliased
* Supporto a True color 

**Build-in Resource Database for Manageability**

* Hierarchical storage of XML resource documents that define maps, layers, data connections
* Definire sorgenti dei dati e layer una volta e usarli in diverse mappe
* Access-based security model with inheritable permissions

**Accesso ai dati uniforme**

* Uso esclusivo delle API Feature Data Objects (FDO) per dati vettoriali e raster
* Fornisce una strada per standardizzare l'accessa a diverse sorgenti di dati incluso
  SHP, SDF, Oracle, MySQL, and PostGIS.

**Sviluppo delle applicazioni flessibile**

* Sviluppate la vostra applicazione in PHP, .NET, o Java

**Extensive Server-Side API**

* Crea, interroga, legge, e scrive documenti XML permanenti e basati sulla sessione
* Interroga e aggiorna i dati degli oggetti
* Effettua riproiezione di coordinate
* Crea, gestisce, e analizza geometrie
* Manipulate runtime maps and layers

**Piattaforma server veloce, scalabile, sicura**

* Completamente multi-threaded e ottiene vantaggi di processori multicore
* Bilanciamento del carico su server
* Pooled database connections
* Tile cache integrato

**Supporto multi piattaforma**

* Si può eseguire su Microsoft Windows o Linux
* Fornisce applicazioni attraverso Apache o Microsoft IIS
* Visualizza con Microsoft Internet Explorer, Mozilla Firefox, Safari e Chrome

Standard implementati
--------------------------------------------------------------------------------

* OGC Web Map Service 1.1.1 

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://mapguide.osgeo.org/

**Licenza:** GNU Lesser General Public License (LGPL) 

**Versione Software:** 2.4.0 Pre-Release

**Piattaforme Supportate:** Linux, Windows

**Supporto Commerciale:** http://www.osgeo.org/search_profile


Guida rapida
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/mapguide_quickstart>`


