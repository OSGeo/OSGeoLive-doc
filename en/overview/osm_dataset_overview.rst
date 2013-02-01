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

Map Data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenStreetMap is a crowd sourced map of the world which has grown to become one of the most detailed sources of local-scale map data available. Source map data is created and maintained by thousands of volunteers from around the world, using processes similar to the maintaining of the wikipedia encyclopedia.

The most visible aspect to OSM is the online web-tile interface from http://osm.org, but the maps can also be viewed, imported, or edited in many applications such as :doc:`Quantum GIS <qgis_overview>` , :doc:`OpenLayers <openlayers_overview>`, ArcGIS and dedicated OSM applications.

The heart of the project is the underlying data which is open for all to edit, view, or create custom rendered maps. Fundamentally OSM's focus is on the data, the rich maps simply fall out of this.

The OSGeo-Live distribution includes a city sized extract of OSM data which is used for examples by some applications.

.. image:: ../../images/screenshots/1024x768/osm-screenshot.jpg 
  :scale: 55 %
  :alt: OSM screenshot
  :align: right


Core Features
--------------------------------------------------------------------------------

* Vector features are tagged with names and other attributes.

* Extract local subsets of the data.

* Data is stored as latitude-longitude WGS84 nodes, strings of nodes, and meta-features allowing for point, polyline, area coverage and relations.

* Rich attribute tagging, often far more detailed than any other source.

* A global repository of local knowledge.


Data Sets included in OSGeo-Live
--------------------------------------------------------------------------------

- Nottingham.osm.bz2: A large extract of the greater city area as a BZip2 compressed XML text file.

- Nottingham_CBD.osm.bz2: A smaller subset covering just the central business district.

- feature_city.osm.bz2 and feature_city_CBD.osm.bz2 are also city extracts. Quickstarts and overviews use these file/path names, despite posible changes of example city among different releases.

- feature_city_poi.db: Sqlite DB of "positions of interest" nodes extracted from the above feature_city.osm.bz2. Contains pubs, fuel stations, restaurants, etc.

OSM data imported to PostGIS Database format: 

- Full feature_city.osm datasets

Data imported with osm2pgsql to different projections: 

- osm_local: Imported to lat/lon (epsg:4326)

- osm_local_smerc: Imported to "Google spherical mercator" pseudo-projection for generating Mapnik webtiles


Details
--------------------------------------------------------------------------------

**Website:** http://www.osm.org

**License:** CC-By-SA, Open Data Commons Open Database License (ODbL)

**Data Version:** Live database

**Data format:** XML

**Spatial coordinate system:** Lat-Long WGS84

**Support:** http://wiki.osm.org

