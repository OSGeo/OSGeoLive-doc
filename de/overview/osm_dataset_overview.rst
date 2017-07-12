:Authors: Hamish Bowman, Marco Brancolini
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live10.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-osm.png
  :alt: project logo
  :align: right
  :target: https://www.openstreetmap.org/


OpenStreetMap (OSM)
================================================================================

Kartendaten
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenStreepMap (OSM) ist eine Wiki-Weltkarte, die sich zur einer der detailliertesten Quellen für Kartendaten im lokalen Maßstab entwickelt hat. Die Ausgangskartendaten werden von Tausenden von Freiwilligen auf der ganzen Welt erstellt und gepflegt, in einem Verfahren, das der Pflege der Wikipedia ähnelt.

Der offensichtlichste Anwendung von OSM ist das Webinterface unter https://www.openstreetmap.org, aber Karten können in vielen verschiedenen Anwendungen wie :doc:`QGIS <qgis_overview>` , :doc:`OpenLayers <openlayers_overview>`, ArcGIS und dezidierten OSM Anwendungen betrachtet, importiert oder editiert werden.

Das Herz des Projekts sind die zugrunde liegenden Daten, die von allen zur Bearbeitung, Betrachtung oder Erzeugung eigener Karten dienen können. Im Grunde liegt der Schwerpunkt von OSM auf den Daten, die reichhaltigen Karten sind sozusagen Nebenprodukt hiervon.

Die OSGeo-Live ditribution beinhaltet einen Auszug der OSM Daten, die für einige Anwendungen als Beispieldaten genutzt werden.

.. image:: /images/screenshots/1024x768/osm-screenshot.jpg 
  :scale: 55 %
  :alt: OSM screenshot
  :align: right


Kernfunktionen
--------------------------------------------------------------------------------

* Vektordaten sind mit Namen und anderen Attributen gekennzeichnet.

* Lokale Auszüge der Daten möglich.

* Daten liegen als WGS84 Knotenpunkte, Liste von Knoten und Metafeatures vor. Dies ermöglicht Punkte, Polylinien und Flächen und Relationen.

* Reichhaltige Zuweisung von Attributen, häufig viel detaillierter als jede andere Quelle.

* Ein globales Archiv von lokalem Wissen.


Datensätze in OSGeo-Live
--------------------------------------------------------------------------------

- feature_city.osm.bz2: ein großflächigerer Bereich der Stadtfläche als komprimierte BZip2-Datei einer XML Textdatei.

- feature_city_CBD.osm.bz2: kleinerer Auszug, der lediglich den zentralen Geschäftsbereich abdeckt.

- feature_city_poi.db: Sqlite Database mit POIs ("positions of interest"-Knoten) umfassen ebenfalls Auszüge des Stadtbereichs. Die Daten beinhalten Standorte von Kneipen (pubs), Tankstellen (fuel stations), Restaurants, Supermärkte, usw. 

- Dateien, die auf das soeben genannte featured city referenzieren, enthalten dieselben Daten, wie oben beschrieben. Quickstarts und Overviews benutzen diese Dateien/Pfadname, ungeachtet von möglichen Änderungen der Beispielstadt zwischen verschiedenen Releases.

Die OSM Daten wurden mit Hilfe des Tools osm2pgsql nach PostGIS in die Datenbank "osm_local" importiert.
Das verwendete Koordinatenreferenzsystem ist lat/lon mit dem Datum WGS84 (EPSG:4326).
Die Daten können in andere SRS wie beispielsweise Spherical Mercator umgewandelt werden.
Ein kleinerer CBD Auszug wurde in die PostGIS Datenbank "pg_routing" geladen.

Details
--------------------------------------------------------------------------------

**Webseite:** https://www.openstreetmap.org/

**Lizenz:** `Open Data Commons Open Database License (ODbL) <http://opendatacommons.org/licenses/odbl/>`_

**Datenversion:** Live database extract

**Datenformat:** XML

**Räumliches Koordinatensystem:** Latitude-Longitude WGS84

**Support:** https://www.openstreetmap.org/help

