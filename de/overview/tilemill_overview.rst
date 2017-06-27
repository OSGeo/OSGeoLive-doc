:Author: OSGeo-Live
:Author: Javier Sanchez, GeoNaTec
:Reviewer: Cameron Shorter, Jirotech
Translator: Astrid Emde
:Version: osgeo-live8.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-tilemill.png
  :alt: TileMill
  :align: right
  :target: http://www.tilemill.com

TileMill
================================================================================


Design-Studio für Karten im Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TileMill ist ein Design-Studio zur Erstellung von wunderschönen, webbbasierten, interaktiven Karten mit Hilfe einer Vielzahl 
existierender räumlicher Datenquelle.

.. Review Comment
  If MBTiles is an Open Standard, we probably should provide a link to it.

Die Webanwendungen können über Tooltips, klickbare Popups, interaktive Bilder, SVG Symbole, Texte und zahlreiche Ebenen verfügen.
 Angepasste Karten können in verschiedene Formate exportiert werden: .png, .pdf, .svg und MBTiles. 
Die MBTiles Spezifikation definiert, wie Kacheln in einer einzigen Datei als SQLite Datenbank gespeichert werden.

Daten können Vektordaten (CSV, Shape-Dateien, KML, GeoJSON), 
Raster (GeoTiff) oder große Datenquellen wie OpenStreetMap, PostgreSQL/PostGIS und SQLite sein.

Tilemill nutzt die :doc:`Mapnik <mapnik_overview>` Karten 
Rendering Bibliothek (die auch von OpenStreeMap verwendet wird) und
außerdem CartoCSS als Stylesheet-Sprache.

TileMill wird typischerweise in Verbindung mit einem Desktop GIS (wie 
beispielsweise QGIS) für die Vorbereitung der Daten und einem Graphikprogramm
(wie GIMP) für die Erzeugung von Symbolen, Mustern und Texten verwendet.

.. image:: /images/screenshots/1024x768/tilemill_interface2.png
  :scale: 50 %
  :alt: TilleMill Benutzeroberfläche
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

* Laden von Daten aus zahlreichen Quellen
  
  * ESRI Shapefile
  * KML
  * GeoJSON
  * GeoTiff
  * CSV Spreadsheet
  * OpenStreetMap

* Verbindung zu räumlichen Datenbanken

  * PostgreSQL + PostGIS
  * SQLite

* Management angepasster Layer

* Styling der Daten

  * Styling über vordefinierte oder angepasste Farben
  * Bedingungsabhängiges Styling

* Tooltipps und Legenden

* Veröffentlichen

  * Bild Dateien: .png, .pdf, .svg, MBTiles
  * Veröffentlichen als Webseite 
  * Einbinden einer Karte in eine Webseite oder in ein Content Management System (WordPress, Drupal)

* JavaScript API

Unterstützte Standards
--------------------------------------------------------------------------------

* TileMill unterstützt keine OGC Standards wie WMS oder WFS.
 Stattdessen nutzt es z/x/y Kachel-Schemata, die auch von Google und OSM genutzt werden und
 basiert auf der MBTiles und UTFGrid Spezifikation.

Details
--------------------------------------------------------------------------------

**Webseite:** http://tilemill.com

**Lizenz:** BSD

**Software Version:** 0.10.2

**Unterstützte Plattformen:** Windows, Linux, Mac

**API Schnittstellen:** JavaScript

**Support:** http://www.tilemill.com

