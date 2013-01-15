:Author: OSGeo-Live
:Author: Javier Sanchez
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. Review Comment
 For the Project Logo, it should just contain the icon. Currently it also
 includes text and lots of white space above and below the text.
 Can the logo please be edited to only include the icon.
  
.. image:: ../../images/project_logos/logo-tilemill.png
  :scale: 75 %
  :alt: TileMill
  :align: right
  :target: http://www.tilemill.com

TileMill
================================================================================


Design studio for Web Maps
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Review Comment. For consistency with other Project Overviews, there should
  only be one image. As such, please remove the image below (or replace other
  image with this one).
  .. image:: ../../images/screenshots/1024x768/tilemill_interface.png
    :scale: 55 %
    :alt: TilleMill user interface
    :align: right

TileMill is a design studio for creating beautiful, web based, interactive maps from a wide range of existing spatial data sources.

.. Review Comment
  Is the following sentence accurate?
  What are MBTiles? I expect we should include a few words explaining what it is.

Generated webmaps can use hover tooltips, clickable pop ups, interactive graphs and images, SVG markers, rich textures, and multiple layers.  Customized maps can be exported to different formats like: .png, .pdf, .svg and MBTiles.

.. Review Comment
  Can Tilemill publish to WMS, WFS? If so, mention it here.

Data can be sourced from vector data (CSV, shapefile, KML, GeoJSON), raster (GeoTiff), as well as large data sources like OpenStreetMap, Postgres and SQLite.

.. Review Comment
  Can Tilemill connect to OGC services such as WMS, WFS? If so, mention it here.

Tilemill makes use of the :doc:`Mapnik <mapnik_overview>` map rendering library (as used by OpenStreeMap) and uses the CartoCSS as a stylesheet language.

TileMill is typically used in conjunction with a desktop GIS (like QunatumGIS) for preparing data, and a graphics editor (like GIMP) for creating icons, patterns and textures.

.. image:: ../../images/screenshots/1024x768/tilemill_mapsexamples.png
  :scale: 90 %
  :alt: TilleMill user interface
  :align: right

Core Features
--------------------------------------------------------------------------------

.. Review Comment
  Can you connect to other map formats, such as Google, Bing, WMS, WFS, ???
  If so mention it.
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

* TileMill does not support OGC standards, like WMS or WFS. Rather it adheres to the widespread practices of z/x/y tile schemes used by Google and OSM and is based on the MBTiles and UTFGrid specifications.

Details
--------------------------------------------------------------------------------

**Website:** http://tilemill.com

**Licence:** BSD

**Software Version:** 0.10.1

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** JavaScript

**Support:** http://www.tilemill.com


Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/tilemill_quickstart>`
