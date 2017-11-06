:Authors: Hamish Bowman, Marco Brancolini
:Reviewer: 
:Version: osgeo-live10.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_osm_dataset@
@OSGEO_KIND_osm_dataset@


@NAME_osm_dataset@
================================================================================

Map Data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenStreetMap is a crowd sourced map of the world which has grown to become one of the most detailed sources of local-scale map data available. Source map data is created and maintained by thousands of volunteers from around the world, using processes similar to the maintaining of the wikipedia encyclopedia.

The most visible aspect to OSM is the online web-tile interface from https://www.openstreetmap.org, but the maps can also be viewed, imported, or edited in many applications such as :doc:`QGIS <qgis_overview>` , :doc:`OpenLayers <openlayers_overview>`, ArcGIS and dedicated OSM applications.

The heart of the project is the underlying data which is open for all to edit, view, or create custom rendered maps. Fundamentally OSM's focus is on the data, the rich maps simply fall out of this.

The OSGeo-Live distribution includes a city sized extract of OSM data which is used for examples by some applications.

.. image:: /images/projects/osm_dataset/osm-screenshot.jpg 
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


Data Sets included in OSGeo Live
--------------------------------------------------------------------------------

- feature_city.osm.bz2: A large extract of the greater city area as a BZip2 compressed XML text file.

- feature_city_CBD.osm.bz2: A smaller subset covering just the Central Business District (CBD).

- feature_city_poi.db: Sqlite DB of "positions of interest" nodes extracted from the above larger city OSM extract. Contains locations of pubs, fuel stations, restaurants, supermarkets, etc.

- Files referencing the name of the featured city contain the same data as the above files. Quickstarts and overviews use the generic file names so that the example city can change with each new release.

The OSM feature city data has been imported into a PostGIS database called "osm_local" using the osm2pgsql tool. The spatial reference system used for this database is latitude-longitude with the WGS84 datum (EPSG code 4326) and can be reprojected to other Spatial Reference Systems (SRS), such as Spherical-Mercator, on demand.
The smaller CBD extract is loaded into another PostGIS database called "pgrouting".


Details
--------------------------------------------------------------------------------

**Website:** https://www.openstreetmap.org/

**License:** `Open Data Commons Open Database License (ODbL) <http://opendatacommons.org/licenses/odbl/>`_

**Data Version:** Live database extract

**Data format:** XML

**Spatial coordinate system:** Latitude-Longitude WGS84

**Support:** https://www.openstreetmap.org/help

@QUICKSTART_osm_dataset@
