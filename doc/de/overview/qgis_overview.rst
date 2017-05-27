:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-QGIS.png
  :alt: project logo
  :align: right
  :target: http://www.qgis.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


QGIS
================================================================================

Desktop GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

QGIS ist ein benutzerfreundliches Geographisches Informationssystem. Es eignet sich zur Darstellung, Verwaltung, Berarbeitung und zur Analyse von Geodaten. Darüberhinaus kann man mit QGIS druckfertige Karten zusammenstellen. Es besteht eine Schnittstelle zu einer Vielzahl von externen Analysemodulen wie :doc:`GRASS <grass_overview>`, :doc:`SAGA <saga_overview>`, :doc:`Orfeo Toolbox <otb_overview>` oder :doc:`GDAL/OGR <gdal_overview>`. QGIS läuft unter Linux, Unix, Mac OS X und Windows. Es unterstützt sehr viele unterschiedliche Vektor- und Rasterformate. Außerdem können viele verschiedene Datenbankentypen (z.B. PostGIS) angebunden werden.  

.. image:: ../../images/screenshots/1024x768/qgis.png
  :scale: 50 %
  :alt: project logo
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

* Benutzerfreundliche grafische Benutzeroberfläche:

    * Identifizierung und Auswahl von Objekten
    * Bearbeitung, Darstellung und Abfrage von Attributen
    * gleichzeitige Darstellung mehrerer Projektionen ('On the Fly')
    * Druckzusammenstellung
    * Beschriftung
    * Darstellung von Vektor- und Rasterlayern verändern
    * Erstellung eines Gitternetz Layers
    * und viel mehr ...

* Einfaches Anzeigen zahlreicher Vektor- and Rasterformate:

    * Datenbank Tabellen: PostgreSQL/PostGIS, Oracle Spatial, MS SQL Spatial, SpatiaLite
    * alle Vektorformate die durch die OGR Bibliothek unterstützt werden (inklusive ESRI shapefiles, GeoPackage, MapInfo, SDTS und GML)
    * alle Rasterformate die durch die GDAL Bibliothek unterstützt werden (z.B. digitale Höhenmodelle, Luft- und Satellitenbilder, ... )
    * GRASS Locations und Mapsets
    * Online Geodaten, die als OGC-Dienste WMS, WMTS, WFS oder WCS bereitgestellt werden
    * 2.5D Anzeige 

* Erstellung, Bearbeitung und Export von räumlicher Daten mit:

    * Digitalisierwerkzeugen für GRASS und Shapefiles,
    * einem Plugin zur Georeferenzierung von Rasterlayern
    * einem GPS Werkzeug zum Im- und Export von GPX Formaten, Konvertierung anderer GPS Formate nach GPX und direkte Kommunikation mit einem GPS Gerät.

* Räumliche Analysen für alle Datenformate:

    * Kartenalgebra (Mapalgebra)
    * Reliefanalyse 
    * hydrologische Modellierung
    * Netzwerkanalyse (Routenplanung, ... )
    * einfache, durchsuchbare Sammlung von Algorithmen (Processing Toolbox)
    * Grafisches Modellierungswerkzeug zur Erstellung von wiederverwendbaren Funktionen 
    * und vieles mehr

* Karten über das Internet bereitstellen
* erweiterbare Plugin Architektur

Implementierte Standards
--------------------------------------------------------------------------------

* OGC Standard kompatibel (WMS,WFS, ... )

Details
--------------------------------------------------------------------------------

**Webseite:** http://www.qgis.org

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** |version-qgis|

**Unterstützte Plattformen:** Windows, Linux, Mac, Unix

**Community Support:** http://qgis.org/de/gemeinschaft.html

**Kommerzieller Support:** http://qgis.org/de/kommerzieller-support.html

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/qgis_quickstart>`
