:Author: Peter Baumann
:Author: Jinsongdi Yu
:Author: Dimitar Misev
:Author: Michael Owonibi
:Author: Alan Beccati
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-rasdaman.png
 :scale: 100 %
 :alt: project logo
  :align: right
  :target: http://rasdaman.org

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100
  :alt: OSGeo Incubation Project
  :align: right
  :target: http://www.osgeo.org

Rasdaman
================================================================================

Multi-Dimensional Raster Database
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rasdaman is an implementation of the array database model that extends standard relational databases, such as PostgreSQL, to provide storage and retrieval of multi-dimensional raster data of unlimited size. Data can be stored and retrieved using an SQL-style raster query language, with highly effective server-side optimization. Its petascope component provides also web based interfaces to the data suitable for geospatial applications and based on OGC stadards such as WCS, WCPS, and WPS. Programmer APIs are also available for C++ and Java languages.
A rasdaman driver is a part of the :doc:`GDAL <gdal_overview>` (Geospatial Data Abstraction Library) library for geospatial data formats, a :doc:`MapServer <mapserver_overview>` integration is available in beta.

The rasdaman technology is stable and mature, deployed in production since over 10 years; the French National Geographic Institute runs rasdaman on a dozen-Terabyte airborne image map. At the ACM Principles of Database Systems Conference in 2007, raster database expert Rona Machlin characterizes rasdaman as "the most comprehensive implementation of such a system".

.. image:: ../../images/screenshots/1024x768/rasdaman-collage.png
  :scale: 50 %
  :align: right

Core Features
--------------------------------------------------------------------------------

    * true multi-dimensionality - from 1-D over 2-D to 3-D, 4-D, and beyond
    * powerful, flexible, SQL-style query language for tasks such as: visualization, classification, convolution, aggregation, and many more geospatial functions
    * spatial indexing and adaptive tiling for fast data access
    * tile streaming for scalability and high performance on moderate hardware
    * multi-user support through server multiplexing
    * full information integration of raster data with all other geographic data in the PostgreSQL database
    * Web services access layer via OGC standards for coverage access and processing

Implemented Standards
--------------------------------------------------------------------------------

    * OGC WCS 2.0, WCPS 1.0, WPS 1.0

Details
--------------------------------------------------------------------------------

**Website:** www.rasdaman.org

**Licence:**

* clients and petascope: GNU Lesser General Public License (LGPL) version 3
* server engine: GNU General Public License (GPL) version 3

**Software Version:** 8.3.1

**Supported Platforms:** Linux, Mac, Solaris

**API Interfaces:** rasql (CLI), C++, Java; OGC-based WCS, WCPS, WCS-T, and WPS interfaces

**Support:**  www.rasdaman.com

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/rasdaman_quickstart>`


