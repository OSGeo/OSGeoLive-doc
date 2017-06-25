:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-spatialite.png
  :alt: Projekt Logo
  :align: right
  :target: http://www.gaia-gis.it/gaia-sins/


SpatiaLite
================================================================================

Räumliche Datenbank
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SpatiaLite ist ein SQLite_ Datenbank-Engine mit Unterstützung geografischer Objekte und Funktionen. 

SQLite ist ein beliebtes DBMS, einfach, robust, unkompliziert zu bedienen und wirklich leichtgewichtig. Jede SQLite-Datenbank ist eine einfache Datei; sie kann frei kopiert oder komprimiert werden, oder im LAN oder Internet ohne jegliche Komplikationen versendet werden. 

Die Dateien sind auch portabel; die gleiche Datenbank-Datei läuft auf Windows, Linux, MacOS etc.

.. _SQLite: http://www.sqlite.org/

.. image:: /images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: Bildschirmfoto
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

Die SpatiaLite Erweiterung ermöglicht SQLite die Unterstützung von geographischen Daten nach OGC Spezifikationen.

Highlights:

* Unterstützung von WKT und WKB Standardformaten
* Implementierung von räumlichen Funktionen wie AsText(), GeomFromText(), Area(), PointN() und ähnlichen
* Komplette Unterstützung von OpenGis Funktionen via GEOS, wie z.B. Funktionen zur räumlichen Analyse Overlaps(), Touches(), Union(), Buffer() ...
* Volle Unterstützung räumlicher Metadaten gemäß der OpenGis Spezifikationen
* Unterstützung von Import und Export von Shape-Dateien
* Unterstützung von Koordinatentransformation via PROJ.4 und EPSG geodätischem Paramaterdatenmaterial
* Unterstützung von "locale charsets" via GNU libiconv
* Implementierung eines echten räumlichen Index basierend auf SQLite's RTree Erweiterung
* Zugang zu Shape-Dateien als VIRTUAL TABLES durch die VirtualShape Erweiterung
* Durchführung von standardkonformen SQL Abfragen auf externen Shape-Dateien, ohne diese zu importieren oder zu konvertieren
* Zugang zu CSV/TxtTab-Dateien als VIRTUAL TABLES durch die VirtualText Erweiterung
* Durchführung von standardkonformen SQL Abfragen auf externen CSV/TxtTab-Dateien, ohne diese zu importieren oder zu konvertieren
* Ein GUI Werkzeug unterstützt all Funktionen auf eine benutzerfreundliche Art und Weise
* Zugriff auf XML Dokumente, gespeicherte BLOB (komprimierte Binär-Objekte), inklusiver syntaktisch "wohlgeformter" 
und XSF Schema Validation Constrained Prüfungen. Spezifische Unterstützung für ISO-Metadata, SLD/SE Styles und SVG Grafiken. XML Dokumente können über Standard XPath Syntax abgefragt werden.
* Abfrage externer WFS
* Parsen externer DXF Dateien (alle Versionen) und Speichern der Themen und Geometrien 
* Generierung und Export von DXF Dateien

Details
--------------------------------------------------------------------------------

**Webseite:** http://www.gaia-gis.it/gaia-sins/

**Lizenz:** MPL v1.1 und GPL v3

**Software Version:** |version-spatialite|

**Unterstützte Plattformen:** Linux, Mac, Windows

**API Schnittstellen:** C

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/spatialite_quickstart>`


