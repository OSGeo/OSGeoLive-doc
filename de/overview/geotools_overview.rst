:Author: Jody Garnett
:Author: Astrid Emde
:Author: Frank Gasdorf
:Version: osgeo-live5.0draft
:License: Creative Commons

.. image:: ../../images/project_logos/logo-GeoTools.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GeoTools
========

GeoTools ist eine Open Source Bibliothek (LGPL) basierend auf Java, mit deren Hilfe man standardkonform räumliche Daten manipulieren und die Datenstrukturen ansprechen kann, die auf Open Geospatial Consortium (OGC) Spezifikationen beruhen.

.. image:: ../../images/screenshots/800x600/geotools-overview.png
  :scale: 60 %
  :alt: GeoTools ist eine modulare Bibliothek, die durch Plugins für Formate erweitert werden kann
  :align: right

GeoTools wird von verschiedensten Projekten verwendet, angefangen von Web Services über Kommandozeilen-Tools bis hin zu Desktop-Anwendungen. OSGeo-Live Applikationen, die u.A. auf GeoTools basieren:
:doc:`52nSOS_overview`, :doc:`52nWPS_overview`, :doc:`atlasstyler_overview`, :doc:`geomajas_overview`, :doc:`geopublisher_overview`, :doc:`geoserver_overview`, and :doc:`udig_overview`.

Kernfunktionalität
------------------

* Definition von Schnittstellen für zentrale räumliche Konzepte und Datenstrukturen
  
  * Integrierte Unterstützung von Geometrien, bereit gestellt über die Java Topology Suite (JTS)
  * attributive und räumliche Filter basierend auf der OGC Filter Encoding Spezifikation 
  
* Eine saubere Programmierschnittstelle (Application Programming Interface - API) für den Zugriff auf räumliche Objekte (Features) und Unterstützung für Transaktionen und Sicherstellung der Sperrungen zwischen Threads
  
  * Zugriffe datei- und datenbankbasierte GIS Daten
  * unterstützt Koordinatensysteme und Transformationen 
  * kann mir einer erweiterbaren Pallette von Kartenprojektionen umgehen
  * Filterung und Analyse bezogen auf rämliche Daten und Daten, die keine räumliche Komponente besitzen


* Ein zustandsloser Renderer, der wenig Arbeitsspeicher benötigt und somit insbesondere für serverseitige Anwendungen geeignet ist.
  
  * Zusammenstellung und Darstellung von Karten mit komplexen Darstellungsregeln (Styling)

* auf *Schemas basierte* Syntaxanalyse, unter Verwendung von XML Schemas um GML Inhalte zu binden
  
  * Die Kodierung und Parser Technologie wird bereitgestellt für viele OGC Standards, unter anderem GML, KML, SLD, SE und Filter
  
* GeoTools Plugins: Offenes System zur Erweiterung, um weitere Format zu unterstützen
  
  * Plugins für das ImageIO-EXT Projekt, welches GeoTools ermöglicht, weitere Rasterformate über GDAL zu lesen
 
* GeoTools Erweiterungen

  * stellt weitere Möglichkeiten zur Erweiterung bereit, die auf die Kernbibliothek aufbauend umgesetzt worden sind
  
  .. image:: ../../images/screenshots/800x600/geotools-extension.png
     :alt: Extensions built using the GeoTools library

  * Die Erweiterungen stellen Graphen- und Netzwerkanalysen (kürzester/schnellster Weg), Validierung, einen Web Map Server (WMS) Client, Bindings für XML Parser und Kodierer sowie `Color Brewer`.

* GeoTools *Unsupported*
  
  * GeoTools stellt mit dem *Unsupported* Bereich ein Sammelbacken zur Verfügung, welches von der Community genutzt werden kann, experimentell auf Basis der Kernbibliothek zu arbeiten und Talenten eine Plattform zu bieten, sich einzubringen.

  * Einige Highlights sind die Unterstützung für Swing (wird in den Tutorials verwendet), Eclipse SWT, Unterstützung für Verarbeitungen in Prozessketten im Web (WPS) und lokal. Zusätzliche Symboliken, weitere Datenformate, Erzeugen von Gittern sowie einige Implementierungen für ISO Geometrien.

Unterstützte Formate
--------------------

* Rasterdaten und Datenzugriffe:
  
  arcsde, arcgrid, geotiff, grassraster, gtopo30, image (JPEG, TIFF, GIF, PNG), imageio-ext-gdal, imagemoasaic, imagepyramid, JP2K, matlab.
  
* Datenbanken "jdbc-ng":
  
  db2, h2, mysql, oracle, postgis, spatialite, sqlserver.

* Vektordaten und Datenzugriffe:
  
  app-schema, arcsde, csv, dxf, edigeo, excel, geojson, org, property, shapefile, wfs.

* XML Bindings:

  Java Datenstrukturen und Bindings wird für folgendes geboten:
  xsd-core (xml simple types), fes, filter, gml2, gml3, kml, ows, sld, wcs, wfs, wms, wps, vpf.
  
  Weitere Geometrie-, Filter- und Stil- Parser/Kodierer sind für DOM und SAX basierte Applikationen verfügbar.
  
Umgesetzte Standards
--------------------

Unterstützung für eine breite Palette der Open Geospatial Consortium (OGC) Standards:

* OGC Style Layer Descriptor / Symbology Encoding 
* OGC General Feature Model including Simple Feature support
* OGC Grid Coverage Repräsentationen von Rasterinformationen
* OGC Filter und Common Constraint Language (CQL)
* Clients für Web Feature Service (WFS), Web Map Service (WMS) and experimentelle Unterstützung für Web Process Service (WPS)
* ISO 19107 Geometry

Details
-------
 
**Website:** http://geotools.org/

**Lizenz:** LGPL

**Software Version:** 2.7.1

**Unterstütze Plattformen :** Java

**API Interfaces:** Java

**Support:** `Kontakt und Unterstützung (englisch) <http://docs.geotools.org/latest/userguide/welcome/support.html>`_

Quickstart
----------

* `Quickstart Dokumentation (englisch) <http://docs.geotools.org/latest/userguide/tutorial/quickstart/index.html>`_
