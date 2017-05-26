:Author: Hamish Bowman
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011-2013 by The OSGeo Foundation

.. image:: ../../images/project_logos/logo-osm.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: https://www.openstreetmap.org


********************************************************************************
OpenStreetMap Quickstart 
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

The remainder of this quickstart introduces some of the off-line software
used to edit and render OSM data.


Programs
================================================================================

JOSM
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**JOSM** (Java OpenStreetMap Editor) is an editor for OpenStreetMap (OSM)
written in Java. The current version supports stand alone GPX tracks,
GPX track data from OSM database and existing nodes, line segments and
metadata tags from the OSM database.

* Homepage: https://josm.openstreetmap.de

The JOSM plugin collection contains the following plugins:

* colorscheme	     - Allows to create different color schemes.
* livegps	     - Supports live GPS input together with gpsd.
* measurement	     - Adds a dialog and a layer to measure length and angle of segments and create measurement paths.
* openvisible	     - Allows opening gpx and osm files that intersect the currently visible screen area.
* surveyor	     - Allows adding markers/nodes on current gps positions.
* cadastre-fr        - A special handler for the French land registry WMS server.
* DirectUpload       - Directly uploads GPS Traces from current active layer in JOSM to openstreetmap.org.
* editgpx            - Anonymizes timestamps and deletes parts of huge GPX tracks very fast.
* lakewalker         - Helps vectorizing WMS images.
* routing            - Provides routing capabilities.


Further reading
--------------------------------------------------------------------------------

* User guide: https://wiki.openstreetmap.org/wiki/JOSM/Guide
* `Video tutorial <http://showmedo.com/videotutorials/video?name=1800050&amp;fromSeriesID=180>`_
* Open the sample data with :menuselection:`File --> Open... --> /usr/local/share/data/osm/feature_city.osm.bz2`
* Further instructions are given when you launch the application.


Merkaartor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Merkaartor** is a map editor for OpenStreetMap which uses the Qt toolkit.
It's a bit more user friendly than JOSM, but has a few less features.

* Homepage: http://merkaartor.be
* Online help: https://wiki.openstreetmap.org/wiki/Merkaartor/Documentation


Osmosis
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
**Osmosis** is a highly capable utility program for performing many tasks at
a raw level on OSM data. This includes data import and export to databases,
sorting, cleaning, and creating data dumps. See
the `detailed usage page <https://wiki.openstreetmap.org/wiki/Osmosis#Usage>`_ for
more information. A simple report of author contributions can be performed
as follows. Open a new Terminal, and at a command prompt type the following:

::

  osmosis --read-xml ~/data/osm/feature_city.osm.bz2 --report-entity

Then look in the new `entity-report.txt` file in the home directory
for the report details.


osm2pgsql
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**osm2pgsql** is a utility program that converts OpenStreetMap (.osm) data
into a format that can be loaded into PostgreSQL (PostGIS). It is often
used to render OSM data visually using Mapnik, as Mapnik can query
PostgreSQL for map data, but does not work directly with OSM files.

* Homepage: https://wiki.openstreetmap.org/wiki/Osm2pgsql

