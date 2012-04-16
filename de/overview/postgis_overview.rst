:Author: OSGeo-Live
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: Projekt Logo
  :align: right
  :target: http://postgis.refractions.net/

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

PostGIS
================================================================================

Räumliche Datenbank
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PostGIS erweitert die beliebte objekt-relationale Datenbank PostgreSQL um geografische Objekte und Funktionen, so dass sie als Back-End-Datenbank für geografische Informationssysteme (GIS) und Web-Mapping Applikationen in gleicher Weise verwendet werden kann wie Oracle Spatial es einer Oracle-Datenbank ermöglicht.

PostGIS ist stabil, schnell, standard-konform, mit Hunderten von räumlichen Funktionen und ist derzeit die am weitesten verbreitete Open Source Datenbank mit Unterstützung geografischer Objekte und Funktionen. PostGIS wird von verschiedenen Organisationen aus der ganzen Welt eingestetzt, einschließlich risikoscheuen Regierungsbehörden und Organisationen zur Speicherung von Terrabytes an Daten, deren Webdienste Millionen von Datenbankzugriffen pro Tag verzeichnen.

Die Datenbank-Administration ist unter anderem möglich über pgAdmin und phpPgAdmin. Das Importieren und Exportieren von Daten wird von verschiedenen Konverter-Tools (shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis) unterstützt. Und es gibt zahlreiche Desktop-GIS- und Browser-Anwendungen zur Anzeige von PostGIS-Daten.

.. image:: ../../images/screenshots/800x600/pgadmin.gif
  :scale: 55 %
  :alt: Bildschirmfoto
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

* Hunderte von räumlichen Funktionen
  
  * Berechnung von Flächen und Distanzen, Verschneidung, Berechnung von Pufferzonen etc.

* ACID transaktionale Integrität
* R-Tree räumlicher Index
* Mehrbenutzerunterstützung
* Row-level locking
* Replikation
* Partitionierung
* Rollenbasiertes Sicherheitskonzept 
* Table-spaces, Schemas

Implementierte Standards
--------------------------------------------------------------------------------

* OGC standardkonform (SFSQL)

Details
--------------------------------------------------------------------------------

**Webseite:** http://postgis.refractions.net/

**Lizenz:** GNU General Public License (GPL) version 2

**Software Version:** 1.5

**Unterstützte Plattformen:** Windows, Linux, Mac

**API Schnittstellen:** SQL

**Support:** http://www.osgeo.org/search_profile

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/postgis_quickstart>`
