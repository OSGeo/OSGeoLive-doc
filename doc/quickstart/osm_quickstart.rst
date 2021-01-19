:Author: Hamish Bowman
:Author: Enock Seth Nyamador
:Author: Astrid Emde
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011-2013 by The OSGeo Foundation

@LOGO_osm@
@OSGEO_KIND_osm@
@VMDK_osm@




********************************************************************************
@NAME_osm@ Quickstart
********************************************************************************

.. HB comment: The following paragraph is CC0 content from learnosm.org

OpenStreetMap is a free street level map of the world, created by an ever
growing community of mappers. Anyone can edit OpenStreetMap.
The `Learn OSM website <https://learnosm.org>`_ provides easy to understand,
step-by-step guides for you to get started with contributing to OpenStreetMap
and using OpenStreetMap and using OpenStreetMap data.
The Learn OSM guide at the link above shows step by step how to navigate
the OpenStreetMap website, view and print maps, and sign up for a user
account. After you have your own username and password, you will be able
to add your first points to the map, learn how to do street surveys and
work with aerial imagery.

The remainder of this guide introduces some of the online and offline software
used to edit and render OSM data.

.. contents:: Contents
   :local:

Programs that work with OSM data
================================

iD
--

**iD** is the default on-line editor for OpenStreetMap (OSM). iD is fast and 
easy to use, and allows mapping from various data sources such as ground survey,
satellite and aerial imageries, GPS traces or street-level imagery.

* Start page: https://www.openstreetmap.org/edit
* Documentation: https://wiki.openstreetmap.org/wiki/ID
* Tutorial: https://learnosm.org/en/beginner/id-editor/


JOSM
----

**JOSM** (Java OpenStreetMap Editor) is an advanced editor for OpenStreetMap 
(OSM) written in Java. It is more powerful and complex than iD, can be used 
for bulk editing, off-line or on an unreliable Internet connection. It can be 
extended with plugins, custom presets and more extensions.


* Homepage: https://josm.openstreetmap.de
* User guide: https://wiki.openstreetmap.org/wiki/JOSM/Guide
* Tutorial: https://learnosm.org/en/josm/start-josm/
* JOSM plugin collection: https://josm.openstreetmap.de/wiki/Plugins


QGIS
----

OpenStreetMap data can be loaded in **QGIS** as vector layer, as a core functionality or through plugins like QuickOSM.

* QuickOSM: See the `QuickOSM`_ section
* Online help: https://wiki.openstreetmap.org/wiki/QGIS#QGIS_2:_Importing_OSM_vector_layers
* Tutorial: https://learnosm.org/en/osm-data/osm-in-qgis/

Osmosis
-------

**Osmosis** is a highly capable utility program for performing many tasks at
a raw level on OSM data. This includes data import and export to databases,
sorting, cleaning, and creating data dumps.

* Documentation: https://wiki.openstreetmap.org/wiki/Osmosis#Usage
* Tutorial: https://learnosm.org/en/osm-data/osmosis/

.. _osm2pgsql:

osm2pgsql
---------

**osm2pgsql** is a utility program that converts OpenStreetMap (.osm) data
into a format that can be loaded into PostgreSQL (PostGIS). It is often
used to render OSM data visually using Mapnik, as Mapnik can query
PostgreSQL for map data, but does not work directly with OSM files.

* Homepage: https://wiki.openstreetmap.org/wiki/Osm2pgsql
* Tutorial: https://learnosm.org/en/osm-data/osm2pgsql/


Working with OSM data in QGIS
================================

OSGeoLive comes with OSM data for the city where the global `FOSS4G conference <https://foss4g.org>`_ takes place.
You find the data in the file system at `/usr/local/share/data/osm/` or in the PostgreSQL database `osm_local`.

Start QGIS and have a look at the data.

#. Open the `Desktop GIS` folder.
#. Double click on the `QGIS` icon.
#. Go the browser panel on the left of the screen.
#. Navigate to `PostGIS` and then to the database `osm_local`. You will find the data in the schema `public`.
#. Drag the layers from the `Browser` panel and drop them in the map canvas.

  .. image:: /images/projects/osm/osm_postgis_qgis.jpg
     :scale: 80 %

You find a QGIS introduction in the :doc:`QGIS Quickstart <../quickstart/qgis_quickstart>`


.. _QuickOSM:

QuickOSM
----------------------------

`QuickOSM` allows you to work quickly with OSM data in QGIS thanks to Overpass API.

* Homepage: https://github.com/3liz/QuickOSM

#. You have to enable the Plugin in QGIS. Search for `QuickOSM` from `Plugins --> Manage and Install Plugins` in QGIS
#. Open QuickOSM from `Vector --> QuickOSM --> QuickOSM`
#. Search for all the pubs in the FOSS4G city
#. Choose key `amenity`, value `pub`, in `Buenos Aires`
#. Show the query to see the Overpass query
#. Click  `Run query`. The resulting data will be loaded in your QGIS project as temporal data
#. You can now save the data via `Export -> Save as....`. Choose i.e. Geopackage and save the data as `buenos_aires_pubs`.

.. tip:: You also find many OSM Plugins for QGIS. Search for `OSM` in the plugin repository.


Using OSM as basemap in QGIS
=============================

XYZ Tiles
-------------------------------

By default, QGIS comes with OpenStreetMap basemap layer and is located in the `Browser Panel` under `XYZ Tiles`.

  .. image:: /images/projects/osm/osm_xyz_qgis.jpg
     :scale: 80 %

QuickMapServices
------------------------------

`QuickMapServices` plugin allows you to easily add various map services as basemaps with one click in QGIS.

* Homepage: https://github.com/nextgis/quickmapservices

#. You have to enable the Plugin in QGIS. Search for `QuickMapServices` from `Plugins --> Manage and Install Plugins` in QGIS
#. Add an OSM basemap from `Web --> QuickMapServices --> OSM`

  .. image:: /images/projects/osm/osm_quickmapservices_qgis.jpg
     :scale: 80 %

Start working with OSM data
===========================

There are several ways to download OpenStreetMap data for your region. You can get the data in several formats.

You can use the following tools and services to extract OSM Data for your area of interest


Geofabrik
----------------

`Geofabrik <https://download.geofabrik.de/>`_ provides daily worldwide OpenStreetMap data extracts by subregion and country.
Choose the region or country you are interested in. Data is provided in three formats: `.osm.pbf`, `.shp.zip` and `.osm.bz2`.
`.osm.pbf` and`.shp.zip` can be opened directly in QGIS.

.. tip:: **.osm.bz2** contains raw OSM XML files `.osm`, `osm2pgsql`_ works well with them, find out more about working with them here https://wiki.openstreetmap.org/wiki/OSM_XML


Overpass turbo
---------------------

Overpass turbo is a web based data mining tool for OpenStreetMap based on the Overpass-API.

Have a look at the web client and download all the pubs in the FOSS4G city.

#. Open https://overpass-turbo.eu/
#. Search for all the pubs in the FOSS4G city
#. Click on the button `Wizard` and paste the query to the search column `amenity=pub in "Buenos Aires"`
#. Then click the button `build and run query`
#. Click `zoom to data` in the map canvas to navigate to your results

  .. image:: /images/projects/osm/overpass_turbo.jpg
     :scale: 100 %

HOT Export Tool
-----------------------

The Humanitarian OpenStreetMap Team (HOT) provides an export tool for OpenStreetMap too.
To use it you need an OSM account.
You can download data in several formats and have history for your downloaded data and exports.

Here is a quickstart: https://export.hotosm.org/en/v3/learn/quick_start


What next?
==========

Find out more about OSM on the website: https://www.openstreetmap.org

Get support: https://www.openstreetmap.org/help


