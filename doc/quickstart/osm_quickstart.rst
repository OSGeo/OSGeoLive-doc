:Author: Hamish Bowman
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011-2013 by The OSGeo Foundation

@LOGO_osm@
@OSGEO_KIND_osm@


********************************************************************************
@NAME_osm@ Quickstart
********************************************************************************

About
================================================================================

.. HB comment: The following paragraph is CC0 content from learnosm.org

OpenStreetMap is a free street level map of the world, created by an ever
growing community of mappers. Anyone can edit OpenStreetMap.
The `Learn OSM website <http://learnosm.org>`_ provides easy to understand,
step-by-step guides for you to get started with contributing to OpenStreetMap
and using OpenStreetMap and using OpenStreetMap data.
The Learn OSM guide at the link above shows step by step how to navigate
the OpenStreetMap website, view and print maps, and sign up for a user
account. After you have your own username and password, you will be able
to add your first points to the map, learn how to do street surveys and
work with aerial imagery.

The remainder of this quickstart introduces some of the on-line and off-line software
used to edit and render OSM data.


Programs
================================================================================


iD
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**iD** is the default on-line editor for OpenStreetMap (OSM). iD is fast and 
easy to use, and allows mapping from various data sources such as ground survey,
satellite and aerial imageries, GPS traces or street-level imagery.

* Start page: https://www.openstreetmap.org/edit


Further reading
--------------------------------------------------------------------------------

* Documentation: https://wiki.openstreetmap.org/wiki/ID
* Tutorial: http://learnosm.org/en/beginner/id-editor/


JOSM
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**JOSM** (Java OpenStreetMap Editor) is an advanced editor for OpenStreetMap 
(OSM) written in Java. It is more powerful and complex than iD, can be used 
for bulk editing, off-line or on an unreliable Internet connection. It can be 
extended with plugins, custom presets and more extensions.


* Homepage: https://josm.openstreetmap.de

Further reading
--------------------------------------------------------------------------------

* User guide: https://wiki.openstreetmap.org/wiki/JOSM/Guide
* Tutorial: http://learnosm.org/en/josm/start-josm/
* JOSM plugin collection: https://josm.openstreetmap.de/wiki/Plugins


Merkaartor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 		 
**Merkaartor** is a map editor for OpenStreetMap which uses the Qt toolkit.
It's a bit more user friendly than JOSM, but has a few less features.

* Homepage: http://merkaartor.be		
* Online help: https://wiki.openstreetmap.org/wiki/Merkaartor/Documentation


QGIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenStreetMap data can be loaded in **QGIS** as vector layer, as a core 
functionality or through plugins like QuickOSM.

* QuickOSM: http://plugins.qgis.org/plugins/QuickOSM/
* Online help: https://wiki.openstreetmap.org/wiki/QGIS#QGIS_2:_Importing_OSM_vector_layers
* Tutorial: http://learnosm.org/en/osm-data/osm-in-qgis/

Osmosis
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Osmosis** is a highly capable utility program for performing many tasks at
a raw level on OSM data. This includes data import and export to databases,
sorting, cleaning, and creating data dumps.

* Documentation: https://wiki.openstreetmap.org/wiki/Osmosis#Usage
* Tutorial: http://learnosm.org/en/osm-data/osmosis/


osm2pgsql
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**osm2pgsql** is a utility program that converts OpenStreetMap (.osm) data
into a format that can be loaded into PostgreSQL (PostGIS). It is often
used to render OSM data visually using Mapnik, as Mapnik can query
PostgreSQL for map data, but does not work directly with OSM files.

* Homepage: https://wiki.openstreetmap.org/wiki/Osm2pgsql
* Tutorial: http://learnosm.org/en/osm-data/osm2pgsql/
