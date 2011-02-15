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

Rasdaman extends standard relational databases to provide storage and retrieval of multi-dimensional raster data arrays of unlimited size using an SQL-style query language.  Rasdaman is stable and mature and has been deployed in production systems for over 10 years. E.g. It is used for storage and processing of 13-Terabyte aerial map of the National Geographic Institute France. Rona Machlin (ACM, PoDS) described rasdaman as "the most comprehensive implementation of such a system". Rasdaman can be quickly configured to provide flexible, fast and scalable services for sensor, image and statistical data. It can be queried using OGC standards based interfaces for WCS, WCPS, and WPS as well as using its own raster query language.

Rasdaman stores its data in a Postgres database, thereby achieving tight information integration. Rasdaman driver is a part of the GDAL (Geospatial Data Abstraction Library) library for geospatial data formats and this,consequently, enables a MapServer integration (beta).  Hence, Rasdaman provides an excellent raster backend service for GIS, web mapping, and geographic analysis.

.. image:: ../../images/project_logos/apps-collage.png
  :scale: 100 %
  :alt: project logo
  :align: right

Core Features
-------------

    * true multi-dimensionality - from 1-D over 2-D to 3-D, 4-D, and beyond
    * Full information integration of raster data with all other geographic data
    * Powerful, flexible query language, allowing classification, convolutions, aggregation, and many more geospatial functions
    * Tile streaming for scalability and high performance on modest hardware
    * Multi-user support through server multiplexing
    * Spatial indexing for fast data access

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

**Support:**  www.rasdaman.com
