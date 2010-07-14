:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons

.. _spatialite-overview:

.. image:: images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

SpatiaLite
==========

Spatial Database
~~~~~~~~~~~~~~~~

SpatiaLite is an SQLite_ database engine with spatial functions added. 

SQLite is a popular DBMS, simple, robust, easy to use and really lightweight each SQLite database is simply a file; you can freely copy it, compress it, send it on a LAN or WEB with no complication at all.
They are also portables; the same database file will work on Windows, Linux, MacOs etc.

.. _SQLite: http://www.openscenegraph.org/

.. image:: images/screenshots/1024x768/spatialite.jpg
  :scale: 50%
  :alt: screenshot
  :align: right

Core Features
-------------

The SpatiaLite extension enables SQLite to support spatial data conformant to OGC specifications.

* supports standard WKT and WKB formats
* implements SQL spatial functions such as AsText(), GeomFromText(), Area(), PointN() and alike
* the complete set of OpenGis functions is supported via GEOS, this comprehending sophisticated spatial analysis functions such as Overlaps(), Touches(), Union(), Buffer() ..
* supports full Spatial metadata along the OpenGis specifications
* supports importing and exporting from / to shapefiles
* supports coordinate reprojection via PROJ.4 and EPSG geodetic parameters dataset
* supports locale charsets via GNU libiconv
* implements a true Spatial Index based on the SQLite's RTree extension
* the VirtualShape extension enables SQLite to access shapefiles as VIRTUAL TABLEs 
* you can then perform standard SQL queries on external shapefiles, with no need for importing or converting them
* the VirtualText extension enables SQLite to access CSV/TxtTab files as VIRTUAL TABLEs 
* you can then perform standard SQL queries on external CSV/TxtTab files, with no need for importing or converting them
* the GUI tool supports all this, in an user friendly way


Details
-------

**Website:** http://www.gaia-gis.it/spatialite/

**Licence:** MPL v1.1 and GPL v3

**Software Version:** 2.3.1 / 2.4 beta

**Supported Platforms:** Linux, Mac, Windows

**API Interfaces:** C++

**Maturity:** *stable*
