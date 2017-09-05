:Author: Sergio Baños Calvo
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-Kosmo.png
  :alt: Projekt Logo
  :align: right
  :target: http://www.opengis.es/index.php?lang=en

Kosmo Desktop
================================================================================

Desktop GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Kosmo - Desktop ist eine benutzerfreundliche Desktop-GIS-Anwendung, die Ihnen ermöglicht, Geodaten aus einer Vielzahl von Datenbanken, Vektor- und Rasterformaten zu erforschen, zu bearbeiten und zu analysieren. 

Kosmo - Desktop folgt OGC Standards und bietet eine ausgezeichnete topologische Integrität. Die Plugin-Architektur ermöglicht es, die Anwendung leicht für einen bestimmten Zweck anzupassen.


.. image:: /images/projects/kosmo/kosmo.jpg
  :scale: 50 %
  :alt: Bildschirmfoto
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

Unterstützte Formate:

* Vectordaten Formate: Shapefiles, GML, DXF, DWG, DGN, CSV (als Erweiterung), KML (als Erweiterung)
* Vector-Datenbanken: PostgreSQL + PostGIS, Oracle, MySQL, SpatiaLite als Erweiterung
* Rasterdaten Formate: ECW (*), MrSID (*), (Geo)Tiff, Erdas IMG, ENVI hdr, JPG, GIF, PNG, BMP,...
* OGC Dienste: WMS 1.0.0/1.1.0/1.3.0, WFS 1.0.0/1.1.0 (including WFS-T)

Hauptmerkmale:

* Benutzerfreundliches GUI, konzentriert auf eine einfache Lernkurve
* Verfügbar in 13 Sprachen (englisch, spanisch, italienisch, deutsch, kroatisch, tschechisch, russisch, slovakisch, katalanisch, baskisch, brasilianisches portugisisch, finnisch und portugiesisch)
* Erweitere Möglichkeiten:

  * zahlreiche Zeichenwerkzeuge: Punkt zeichnen, Linie zeichnen, Polygon zeichnen, ...
  * CAD Stilwerkzeuge: rotieren, rotieren über Winkel, Symmetrie, Spiegelung, Paralelle, ... (als Extension)
  * zahlreiche Snapping Einstellungen: an Stützpunkte, an Stützpunkte und Linien, an Segmentmittelpunkte, an Mittelpunkte, an Grid, ...
  * Geometrie Tracking Modus
  * Verbesserter Snapp-Manager (über Erweiterung)   
* Erweitertes Druckmodul basierend auf OpenOffice Suite (als Erweiterung)
* Topologie Konsistenz-Regeln: vor/during/post edition
* Topologie Validierungs- und Reinigungswerkzeuge (intersect/eliminate/clean)
* Geoprocessing Wizard: buffer/dissolve/merge/clip/intersection/spatial join/difference (als Erweiterung)
* Werkzeug zur Raster-Georeferenzierung (als Erweiterung)
* Sextante 1.0 Integration (als Erweiterung)
* Import/Export Wizard (als Erweiterung)
* PDF Druckmoduel (als Erweiterung) 
* GPS Werkzeug (als Erweiterung) 

.. note::
  (*) ECW und MrSID Raster Formate benötigen einen extra download um zu laufen: durch Lizenzeinschränkungen können deren Bibliotheken nicht mit ausgeliefert werden.


Implementierte Standards
--------------------------------------------------------------------------------

* Web Map Service (WMS) 1.0.0/1.1.0/1.3.0
* Web Feature Service (WFS) 1.0.0/1.1.0
* Styled Layer Descriptor (SLD) 1.0/1.1 (Import/Export)


Details
--------------------------------------------------------------------------------

**Webseite:** http://www.opengis.es

**Lizenz:** GNU General Public License (GPL) version 3

**Software Version:** |version-kosmo|

**Unterstützte Plattformen:** Windows, Linux

**API Schnittstellen:** Java

**Kommerzieller Support:** http://www.saig.es/index.php?lang=en

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/kosmo_quickstart>`
