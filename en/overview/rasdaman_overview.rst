:Author: Peter Baumann
:Author: Jinsongdi Yu
:Author: Dimitar Misev
:Author: Michael Owonibi
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
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

Rasdaman extends standard relational databases to provide storage and retrieval of multi-dimensional raster data (i.e., arrays) of unlimited size using an SQL-style raster query language with highly effective server-side optimization. Data are stored in a PostgreSQL database, thereby achieving tight information integration. A rasdaman driver is a part of the GDAL (Geospatial Data Abstraction Library) library for geospatial data formats, a MapServer integration is available in beta.
Access interfaces include OGC WCS, WCPS, and WPS, as well as C++ and Java APIs in addition to the rasdaman raster query language.

The rasdaman technology is stable and mature, deployed in production since over 10 years; the French National Geographic Institute runs rasdaman on a dozen-Terabyte airborne image map. At the ACM Principles of Database Systems Conference in 2007, raster database expert Rona Machlin characterizes rasdaman as "the most comprehensive implementation of such a system".

.. image:: ../../images/screenshots/1024x768/rasdaman-collage.png
  :scale: 50 %
  :align: right

Core Features
--------------------------------------------------------------------------------

    * true multi-dimensionality - from 1-D over 2-D to 3-D, 4-D, and beyond
    * powerful, flexible query language for tasks such as visualization, classification, convolution, aggregation, and many more geospatial functions
    * spatial indexing anda adaptive tiling for fast data access
    * tile streaming for scalability and high performance on moderate hardware
    * multi-user support through server multiplexing
    * full information integration of raster data with all other geographic data in the PostgreSQL database

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

**API Interfaces:** rasql, C++, Java; OGC-based WCS, WCPS, WCS-T, and WPS interfaces

**Support:**  www.rasdaman.com

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/rasdaman_quickstart>`


