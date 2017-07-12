:Author: Hamish Bowman
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-osm.png
  :alt: project logo
  :align: right
  :target: http://www.osm.org/


OpenStreetMap
================================================================================

Dane do map
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenStreetMap is a crowd sourced map of the world which has grown to become one of the most detailed sources of local-scale map data available. Source map data is created and maintained by thousands of volunteers from around the world, using processes similar to the maintaining of the wikipedia encyclopedia.

The most visible aspect to OSM is the online web-tile interface from http://osm.org, but the maps can also be viewed, imported, or edited in many applications such as Quantum GIS, OpenLayers, ArcGIS and dedicated OSM applications.

The heart of the project is the underlying data which is open for all to edit, view, or create custom rendered maps. Fundamentally OSM's focus is on the data, the rich maps simply fall out of this.

The OSGeo-Live distribution includes a city sized extract of OSM data which is used for examples by some applications.

.. image:: /images/screenshots/1024x768/osm-screenshot.jpg 
  :scale: 55 %
  :alt: OSM screenshot
  :align: right

Główne funkcje
--------------------------------------------------------------------------------

* Vector features are tagged with names and other attributes.
* Extract local subsets of the data.
* Data is stored as latitude-longitude WGS84 nodes, strings of nodes, and meta-features allowing for point, polyline, and area coverage.
* Rich attribute tagging, often far more detailed than any other source.
* Globalne repozytorium lokalnej wiedzy.

Zestawy danych zawarte na OSGeo-Live
--------------------------------------------------------------------------------

Nottingham.osm.bz2:
 Duży zestaw większej części miasta jako skompersowany plik tekstowy BZip2 XML.

Nottingham_CBD.osm.bz2:
 Mały zestaw pokrywający zasięgiem tylko centralną biznesową część miasta.

Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://www.osm.org

**Licencja:** CC-By-SA, Open Data Commons Open Database License (ODbL)

**Wersja danych:** Live database

**Format danych:** XML

**Układ współrzędnych:** Lat-Long WGS84

**Wsparcie:** http://wiki.osm.org

