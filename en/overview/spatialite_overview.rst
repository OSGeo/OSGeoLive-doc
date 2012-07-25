:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right
  :target: http://www.gaia-gis.it/spatialite/


SpatiaLite
================================================================================

Spatial Database
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SpatiaLite is an SQLite_ database engine with spatial functions added. 

SQLite is a popular DBMS, simple, robust, easy to use and really lightweight. Each SQLite database is simply a file; you can freely copy it, compress it, send it on a LAN or WEB with no complication at all.

The files are also portable; the same database file will work on Windows, Linux, MacOs etc.

.. _SQLite: http://www.sqlite.org/

.. image:: ../../images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Core Features
--------------------------------------------------------------------------------

The SpatiaLite extension enables SQLite to support spatial data conformant to OGC specifications.

* Supports standard WKT and WKB formats
* Implements SQL spatial functions such as AsText(), GeomFromText(), Area(), PointN() and alike
* The complete set of OpenGis functions is supported via GEOS, this comprehending sophisticated spatial analysis functions such as Overlaps(), Touches(), Union(), Buffer() ..
* Supports full Spatial metadata along the OpenGis specifications
* Supports alternative Geometry notations - EWKT, GML, KML, and GeoJSON
* Supports importing and exporting to shapefiles
* Supports coordinate reprojection via PROJ.4 and EPSG geodetic parameters dataset
* Supports locale charsets via GNU libiconv
* Implements a true Spatial Index based on the SQLite's RTree extension
* The VirtualShape extension enables SQLite to access shapefiles as VIRTUAL TABLEs 
* You can then perform standard SQL queries on external shapefiles, with no need for importing or converting them
* The VirtualText extension enables SQLite to access CSV/TxtTab files as VIRTUAL TABLEs 
* The VirtualXL extension enables SQLite to access xls spreadsheet tables as VIRTUAL TABLEs 
* You can then perform standard SQL queries on external CSV/TxtTab files or Excel tables, with no need for importing or converting them
* The GUI tool supports all this, in an user friendly way


Details
--------------------------------------------------------------------------------

**Website:** http://www.gaia-gis.it/gaia-sins/

**Licence:** MPL v1.1 and GPL v3

**Software Version:** spatialite 3.1.0a / librasterlite 1.1 / spatialite-gui 1.5.0 / spatialite-gis 1.0.0

**Supported Platforms:** Linux, Mac, Windows

**API Interfaces:** C++


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/spatialite_quickstart>`

