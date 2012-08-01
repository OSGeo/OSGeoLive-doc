.. Writing Tip:
  Writing tips describe what content should be in the following section.
  The postgis_overview.rst document is used as a reference example
  for other overviews.
  All other overviews should remove the writing tips in order to make the
  overview documents easier to translate.

.. Writing Tip:
  Metadata about this document

:Author: OSGeo-Live
:Author: Barry Rowlingson
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. Writing Tip:
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>

.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.refractions.net/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

PostGIS
================================================================================

.. Writing Tip:
  Application Category Description:

Database Spaziale
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.
  * First sentence should explain the application.
  * Usually the application domain will not be familiar to readers. So the
    next line or two should explain the domain. Eg: For GeoKettle, the next
    line or two should explain what GoeSpatial Business Intelligence is.
  * Remaining paragraph or 2 in this overview section should provide a
    wider description and advantages from a user perspective.

PostGIS abilita spazialmente il popolare database relazionale ad oggetti PostgreSQL, 
permettendo di essere usato come database di back-end per sistemi informativi 
territoriali (GIS) e applicazioni web GIS nello stesso modo con il quale Oracle 
Spatial abilita i database Oracle.

PostGIS è stabile, veloce, conforme agli standards, con centinaia di funzioni spaziali
ed è attualmente il database spaziale libero più diffuso. PostGIS è usato da diverse 
organizzazioni in tutto il mondo, compresi agenzie governative avversi al rischio e 
organizzazioni che memorizzano terabyte di dati e che servono milioni di richieste Web al giorno 

.. including risk-averse government agencies and organisations storing terabytes of data serving millions of web requests per day.

L'amministrazione del database è possibile per desktop e web attraverso pgAdmin, phpPgAdmin, e altri.
Importazione/esportazione dei dati può essere fatta con strumenti a linea di comando 
(shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis) o da clients GIS desktop e web. Questi 
clients possono anche gestire tabelle spaziali di PostGIS.

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.gif . Eg: udig_main_page.gif
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: ../../images/screenshots/800x600/pgadmin.gif
  :scale: 55 %
  :alt: pgAdmin database manager
  :align: right

Caratteristiche Principali
--------------------------------------------------------------------------------

* Centinaia di funzioni spaziali

  * Buffer, unione, intersezione, distanza e molto altro
  
* Integrità transazionale ACID
* Indici spaziali R-Tree
* Supporto Multi-utente
* Blocco a livello di riga
* Replicazione
* Partizionamento
* Sicurezza basata sui ruoli
* Table-spaces, schemi

Standard Implementati
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* conforme agli standard OGC (SFSQL)

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://postgis.refractions.net/

**Licenza:** GNU General Public License (GPL) version 2

**Versione Software:** 1.5

**Piattaforme Supportate:** Windows, Linux, Mac

**Interfacce API:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.

**Supporto:** http://www.osgeo.org/search_profile


Presentazione veloce
--------------------------------------------------------------------------------
    
* :doc:`Documentazione introduttiva <../quickstart/postgis_quickstart>`
