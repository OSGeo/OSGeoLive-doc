:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_spatialite@
@OSGEO_KIND_spatialite@


@NAME_spatialite@
================================================================================

Spatial Database
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SpatiaLite is an SQLite_ database engine with spatial functions added. 

SQLite is a Database Management System (DBMS) which is simple, robust, easy to use and very lightweight. Each SQLite database is simply a file. You can freely copy it, compress it, and port it between Windows, Linux, MacOs etc.

.. _SQLite: https://www.sqlite.org/index.html

@SCREENSHOT_spatialite@

Core Features
--------------------------------------------------------------------------------

The SpatiaLite extension enables SQLite to support spatial data conformant to OGC specifications.

Highlights:

* User friendly GUI 
* Standard WKT and WKB formats
* SQL spatial functions such as AsText(), GeomFromText(), Area(), PointN() ...
* OpenGis spatial analysis functions provided via GEOS, such as Overlaps(), Touches(), Union(), Buffer() ...
* Full Spatial metadata in line with OpenGis specifications
* Numerous Geometry notations - EWKT, GML, KML, and GeoJSON
* Importing and exporting to shapefiles
* Coordinate reprojection via PROJ.4 and EPSG geodetic parameters dataset
* Locale charsets via GNU libiconv
* Spatial Index based on the SQLite's RTree extension
* Access shapefiles as VIRTUAL TABLEs, enabling standard SQL queries on external shapefiles, without importing or converting them
* Access external CSV/TxtTab files or xls spreadsheets as VIRTUAL TABLEs 
* Access XML documents, stored BLOB compressed binary objects, including syntactic "well formed" and XSF schema validation constrained checks. Specific support for ISO-Metadata, SLD/SE styles and SVG graphics.XML documents can be queried using standard XPath syntax.
* Query external WFS servers.
* Parse external DXF files (all versions) and store layers and geometries found.
* Generate and Export DXF files

Details
--------------------------------------------------------------------------------

**Website:** @WEB_spatialite@

**Licence:** MPL v1.1 and GPL v3

**Software Version:** |version-spatialite|

**Supported Platforms:** Linux, Mac, Windows

**API Interfaces:** C


@VMDK_spatialite@
@QUICKSTART_spatialite@

.. presentation-note
    SpatiaLite adds spatial functionality to the popular SQLite database. 
    SQLite is a self-contained, zero-administration, relational database, which can be pre-built into applications without needing a database server.  Each SQLite data store is kept in one file, which can easily be copied between platforms and around the internet without complication.
