:Author: Peter Baumann , Michael Owonibi
:Version: osgeo-live4.0
:License: Creative Commons

.. _rasdaman-overview:

.. image:: ../../images/project_logos/logo-rasdaman.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://rasdaman.org


********
rasdaman
********

Multi-Dimensional Raster Database
=================================

The open-source rasdaman (raster data manager) server extends standard relational database systems with the ability to store and retrieve multi-dimensional raster data (arrays) of unlimited size through an SQL-style query language. The system is stable, mature, and "the most comprehensive implementation of such a system" (Rona Machlin, ACM PoDS).

For sensor, image, and statistics data rasdaman allows to quickly set up flexible, fast, and scalable services. Besides its own raster query language, rasql, rasdaman offers service interfaces based on OGC WCS, WCPS, and WPS. Rasdaman integrates itself smoothly into PostgreSQL; a GDAL rasdaman driver is available, and likewise a MapServer integration (beta). A PostGIS query language integration is under work. Hence, rasdaman provides an excellent raster service backend to GIS, web mapping, and geo analysis applications.

`Earthlook <http://www.earthlook.org>`_ is a demonstration site showcasing rasdaman in a variety of 1-D to 4-D geo use cases.

.. image:: ../../images/project_logos/apps-collage.png
  :scale: 100 %
  :alt: project logo
  :align: right


Core Features
-------------

    * true multi-dimensionality - from 1-D over 2-D to 3-D, 4-D, and beyond
    * Full information integration of raster data with all other geo data
    * Powerful, flexible query language, allowing classification, convolutions, aggrgation, and many more geospatial functions
    * Tile streaming for scalability and high performance on modest hardware
    * Multi-user support through server multiplexing
    * Spatial indexing for fast data access


Implemented Standards
---------------------

    * OGC WCS 2.0, WCPS 1.0, WPS 1.0


Details
-------

**Website:** http://rasdaman.org

**Licence:**  clients and petascope: GNU Lesser General Public License (LGPL) version 3; rasdaman server engine: GNU General Public License (GPL) version 3

**Software Version:** 8.1

**Supported Platforms:** Linux, Mac, Solaris

**API Interfaces:** rasql, C++, Java

**Support:** http://www.osgeo.org/search_profile



