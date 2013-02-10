:Author: Hamish Bowman
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-osm.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.osm.org/


OpenStreetMap
================================================================================

Kartendaten
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenStreepMap (OSM) ist eine Wiki-Weltkarte, die sich zur einer der detailliertesten Quellen für Kartendaten im lokalen Maßstab entwickelt hat. Die Ausgangskartendaten werden von Tausenden von Freiwilligen auf der ganzen Welt erstellt und gepflegt, in einem Verfahren, das der Pflege der Wikipedia ähnelt.

Der offensichtlichste Anwendung von OSM ist das Webinterface unter http://www.osm.org, aber Karten können in vielen verschiedenen Anwendungen wie Quantum GIS, OpenLayers, ArcGIS und dezidierten OSM Anwendungen betrachtet, importiert oder editiert werden.

Das Herz des Projekts sind die zugrunde liegenden Daten, die von allen zur Bearbeitung, Betrachtung oder Erzeugung eigener Karten dienen können. Im Grunde liegt der Schwerpunkt von OSM auf den Daten, die reichhaltigen Karten sind sozusagen Nebenprodukt hiervon.

Die OSGeo-Live ditribution beinhaltet einen Auszug der OSM Daten, die für einige Anwendungen als Beispieldaten genutzt werden.

.. image:: ../../images/screenshots/1024x768/osm-screenshot.jpg 
  :scale: 55 %
  :alt: OSM screenshot
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

* Vektordaten sind mit Namen und anderen Attributen gekennzeichnet.

* Lokale Auszüge der Daten möglich.

* Daten sind als WGS84 Knotenpunkte, Liste von Knoten und Metafeatures die Punkte, Polylinien und Flächen ermöglichen.

* Reichhaltige Zuweisung von Attributen, häufig viel detaillierter als jede andere Quelle.

* Ein globales Archiv von lokalem Wissen.


Datensätze in OSGeo-Live
--------------------------------------------------------------------------------

- Nottingham.osm.bz2: ein großflächigerer Bereich der Stadtfläche als komprimierte BZip2-Datei einer XML Textdatei.

- Nottingham_CBD.osm.bz2: kleinerer Auszug der lediglich den zentralen Geschäftsbereich abdeckt.

- feature_city.osm.bz2 und feature_city_CBD.osm.bz2 sind ebenfalls Auszüge des Stadtbereichs. Quickstarts und Overviews benutzen diese Dateien/Pfadname, ungeachtet von möglichen Änderungen der Beispielstadt zwischen verschiedenen Releases.
despite posible changes of example city among different releases.

- feature_city_poi.db: Sqlite DB der POI ("positions of interests") Knoten aus der soeben genannten feature_city.osm.bz2. Diese beinhaltet Kneipen (pubs), Tankstellen (fuel stations), 
Restaurants usw.

Die OSM Daten wurden nach PostGIS importiert: 

- Vollständige feature_city.osm Datasätze

Datenimport mit osm2pgsql in verschiedene Projektionen: 

- osm_local: Import nach lat/lon (EPSG:4326)

- osm_local_smerc: Import nach "Google Spherical Mercator" Pseudo-Projektion zur Generierung von Mapnik Webkacheln


Details
--------------------------------------------------------------------------------

**Webseite:** http://www.osm.org

**Lizenz:** CC-By-SA, Open Data Commons Open Database License (ODbL)

**Datenversion:** Live database

**Datenformat:** XML

**Räumliches Koordinatensystem:** Lat-Long WGS84

**Support:** http://wiki.osm.org

