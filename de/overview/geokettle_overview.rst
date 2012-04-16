:Author: Thierry Badard 
:Author: Frank Gasdorf
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-geokettle.png
  :scale: 80 %
  :alt: Projekt Logo
  :align: right
  :target: http://www.geokettle.org/

GeoKettle
================================================================================

Extraktion, Transformation & Laden (ETL)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoKettle ist die "raumbezogene" Version der `Pentaho Data Integration Suite <http://www.pentaho.com/products/data_integration/>`_ - auch bekannt unter dem Namen Kettle. Es ist ein leistungsfähiges, Metadaten-gesteuertes ETL -Werkzeug (Extract, Transform & Load) für räumliche Daten und kann zur Integration verschiedenster Datenquellen, die Erstellung und Aktualisierung von Geodatenbeständen, Data Warehouses und Web Services genutzt werden.

GeoKettle ermöglicht die Extraktion von Daten aus Datenquellen und deren Transformation, um Fehler zu korrigieren, Daten zu bereinigen, Datenstruktur zu ändern sowie die Daten standardkonform zu verwalten. Darüber hinaus können die transformierten Daten in Zielsysteme geschieben werden, zum Beispiel in Datenbank Management Systeme (DBMS), in Dateien GIS spezifischer Formate oder Raumbezogenen Web Services.

GeoKettle ist besonders geeignet für die Automatisierung komplexer und sich wiederholender Verarbeitungschritte. Dabei wird kein spezifischen Code für die Konvertierung zwischen den Dateformaten, die Migration von Daten zwischen verschiedenen Datenbanken oder für das Befüllen von Datebanken erzeugt.

In der GIS-Domäne kann Geokettle mit FME, einem urheberrechtlich geschütztem räumliche ETL-Tool, verglichen werden. GeoKettle ist stabil, schnell, standardkonform, mit vielen Funktionen ausgestattet und bietet Unterstützung für lesende und schreibende Zugriffe auf viele Dateiformate, Datenbanken als auch Web Services. GeoKettle wird von verschiedenen Organisationen auf der ganzen Welt verwendet, einschließlich Regierungestellen, Banken und Versicherungen sowie Systemintegratoren im Umfeld von Geoinformationssystemen.

.. image:: ../../images/screenshots/1024x768/geokettle-overview.png
  :scale: 50 %
  :alt: project logo
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

* Extrahieren von Daten aus: 

  * 35+ Datenbanksystemen: MySQL, PostgreSQL/PostGIS, Oracle, ...
  * XML Dateien
  * XLS Dateien
  * Xbase Dateien (dBase, Foxpro, etc.)
  * Informationen von Dateisystemen
  * generierten Daten
  * MS Access Dateien
  * LDAP
  * SOLAP (Spatial OLAP) System: GeoMondrian
  * räumliche Datenformate: Shapefile, GML 3.1.1, KML 2.2 sowie aller Formate, die von OGR unterstützt werden
  * OGC Web services: Web Feature Service (WFS), Sensor Observation Service (SOS), Catalogue Web Service (CSW)

* Transformation von Daten:

  * Engine- basierte Datenübertragung (keine Code-Generator)
  * Suchen von Daten in Datenbanken, Dateien oder im Speicher
  * Berechnung
  * Scripting: Javascript, SQL, RegExp
  * Teilung (Splitting)
  * Zuordnung (Mapping)
  * Auswahl
  * Partitionung
  * Filterung
  * Zusammenführung (Merging)
  * Verbinden (Join)
  * Duplizieren
  * Clustering (MPP)
  * Pivotting
  * Geospatial Datenanalyse: Puffer, Schwerpunkt, Abstand, Schnitt, Vereinigung, ...
  * Erweiterte Geoverarbeitungs: Clipping, Delaunay, vereinfachen / glätten von Geometrien, aufteilen von Objekten (Features), ...
  * Räumliche Aggregation
  * Kartographische Vorschau

* Laden von Daten in ein Zielformat:

  * in Datenbanken: MySQL, PostgreSQL / PostGIS, Oracle, ...
  * unterschiedliche Data-Warehouses
  * räumliche Datenformate: Shapefile, GML 3.1.1, KML 2.2 sowie aller Formate, die von OGR unterstützt werden
  * OGC Web Services: Katalog Web Service (CSW), ...
  * Partitioniertes Laden
  * Bulk-Laden
  * Parallel loading
  * Clustering

* Umfeld:

  * Vollständige Oberfläche (GUI)  mit dem Namen namens "Spoon", 
    mit der alle Optionen für Transformationen bearbeitet werden können
  * Kommandozeilen-Tools: Ausführung von Jobs und Transformationen
  * Webserver: Entferntes Ausführen und perfekte Verteilung in der Cloud für die Verarbeitung von großen Datenmengen
  * Programmierschnittstelle (API) für Java
  * Plugin Öko-System

Implementierte Standards
--------------------------------------------------------------------------------

* OGC Standardkonform (SFS, CSW, SOS)

Details
--------------------------------------------------------------------------------

**Webseite:** http://www.geokettle.org/

**Lizenz:** GNU Lesser General Public License (LGPL) version 2.1

**Software Version:** 2.0-RC1

**Unterstützte Plattformen:** Windows, Linux, Mac, Solaris

**API Schnittstellen:** Java, Javascript

**Support:** http://www.spatialytics.org & http://www.spatialytics.com


Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart Dokumentation <../quickstart/geokettle_quickstart>`
