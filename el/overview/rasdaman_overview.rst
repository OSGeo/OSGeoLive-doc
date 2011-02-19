:Author: Peter Baumann , Michael Owonibi
:Version: osgeo-live4.5
:License: Creative Commons

.. _rasdaman-overview:

.. image:: ../../images/project_logos/logo-rasdaman.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://rasdaman.org


********
Rasdaman
********

Multi-Dimensional Raster Database
=================================
Rasdaman extends standard relational databases to provide storage and retrieval of multi-dimensional raster data arrays of unlimited size using an SQL-style raster query language with highly effective server-side optimization. Data is stored in a PostgreSQL database, thereby achieving tight information integration with other applications.  Hence, Rasdaman provides an excellent raster backend service for GIS, web mapping, and geographic analysis.

The rasdaman technology is stable and mature, deployed in production for over 10 years. For instance, the French National Geographic Institute runs rasdaman on a 12 Terabyte airborne image map.

.. image:: ../../images/project_logos/apps-collage.png
  :scale: 100 %
  :alt: project logo
  :align: right

Core Features
-------------

    * True multi-dimensionality - from 1-D over 2-D to 3-D, 4-D, and beyond
    * Full information integration of raster data with all other geographic data
    * Powerful, flexible query language, allowing classification, convolutions, aggregation, and many more geospatial functions
    * Tile streaming for scalability and high performance on modest hardware
    * Multi-user support through server multiplexing
    * Spatial indexing for fast data access
    * Many applications can access rasdaman data through a rasdaman driver in the Geographic Data Abstraction Library (GDAL)
    * MapServer can be configured to publish rasdaman data as WMS images (in beta).

Implemented Standards
---------------------

    * OGC WCS 2.0, WCPS 1.0, WPS 1.0

Details
-------

**Website:** http://rasdaman.org

**Licence:** 

* clients and petascope: GNU Lesser General Public License (LGPL) version 3
* Rasdaman server engine: GNU General Public License (GPL) version 3

**Software Version:** 8.1

**Supported Platforms:** Linux, Mac, Solaris

**API Interfaces:** RASQL, C++, Java

**Support:**  http://rasdaman.com
