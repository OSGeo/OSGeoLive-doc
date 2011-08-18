:Author: Hamish Bowman
:Reviewer: 
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _osm_dataset-overview:

.. image:: ../../images/project_logos/logo-osm.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.osm.org/


OpenStreetMap
================================================================================

Map Data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenStreetMap is a crowd sourced wiki-like map of the world which has grown up organically over the last few years to become one of the most detailed source of world wide local-scale map data available. The most visible aspect to it is the online web-tile interface from http://osm.org, but the heart of the project is the data itself. The underlying database is open for all to edit and extract from, and end-users are encouraged to custom render their own maps from this data. Fundamentally
OSM's focus is on the data, the rich maps simply fall out of this.

OSM data can be imported, viewed, and rendered as vector layers in a number of dedicated editors as well as through plugins to popular GIS software such as Quantum GIS or ArcGIS.


.. image:: ../../images/screenshots/1024x768/osm-screenshot.jpg 
  :scale: 55 %
  :alt: OSM screenshot
  :align: right

Core Features
--------------------------------------------------------------------------------

* Vector features are tagged with names and other attributes.
* It is easy to create local extracts from the master planet-wide PostGIS database.
* Data is stored as latitude-longitude WGS84 nodes, strings of nodes, and meta-features allowing for point, polyline, and area coverage.
* Rich attribute tagging, often far more detailed.
* A global repository of local knowledge.


Data Sets
--------------------------------------------------------------------------------

Denver.osm.bz2:
 A large extract of the greater Denver city area as a BZip2 compressed XML text file.

Denver_CBD.osm.bz2:
 A smaller subset covering just the Denver central business district.

Details
--------------------------------------------------------------------------------

**Website:** http://www.osm.org

**License:** Creative Commons CC-By-SA

**Data Version:** Live database

**Data format:** XML

**Spatial coordinate system:** Lat-Long WGS84

**Support:** http://wiki.osm.org

