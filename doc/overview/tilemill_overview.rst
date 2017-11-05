:Author: OSGeo-Live
:Author: Javier Sanchez, GeoNaTec
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_tilemill@
@OSGEO_KIND_tilemill@


@NAME_tilemill@
================================================================================


Design studio for Web Maps
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TileMill is a design studio for creating beautiful, web based, interactive maps from a wide range of existing spatial data sources.

.. Review Comment
  If MBTiles is an Open Standard, we probably should provide a link to it.

Generated webmaps can use hover tooltips, clickable pop ups, interactive graphs and images, SVG markers, rich textures, and multiple layers.  Customized maps can be exported to different formats like: .png, .pdf, .svg and MBTiles. The MBTiles spec defines how to store tiles as a single file, as a SQLite database.

Data can be sourced from vector data (CSV, shapefile, KML, GeoJSON), raster (GeoTiff), as well as large data sources like OpenStreetMap, PostgreSQL/PostGIS and SQLite.

Tilemill makes use of the :doc:`Mapnik <mapnik_overview>` map rendering library (as used by OpenStreeMap) and uses the CartoCSS as a stylesheet language.

TileMill is typically used in conjunction with a desktop GIS (like QGIS) for preparing data, and a graphics editor (like GIMP) for creating icons, patterns and textures.

.. image:: /images/projects/tilemill/tilemill_interface2.png
  :scale: 50 %
  :alt: TilleMill user interface
  :align: right

Core Features
--------------------------------------------------------------------------------

* Load data from a wide range of sources
  
  * ESRI Shapefile
  * KML
  * GeoJSON
  * GeoTiff
  * CSV spreadsheet
  * OpenStreetMap

* Connecting to Geospatial databases

  * PostgreSQL + PostGIS
  * SQLite

* Manage custom layers

* Data Styling

  * Style using presets or custom colors
  * Conditional styles

* Add tooltips and legends

* Publish

  * Image Files: .png, .pdf, .svg, MBTiles.
  * Publish as webpage 
  * Embed map in a webpage or Content Management System (WordPress, Drupal)

* JavaScript API

Implemented Standards
--------------------------------------------------------------------------------

* TileMill does not support OGC standards, like WMS or WFS. 

Rather it adheres to the widespread practices of z/x/y tile schemes used by Google and OSM and is based on the MBTiles and UTFGrid specifications.

Details
--------------------------------------------------------------------------------

**Website:** http://tilemill.com

**Licence:** BSD

**Software Version:** 0.10.2

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** JavaScript

**Support:** http://www.tilemill.com


Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/tilemill_quickstart>`
