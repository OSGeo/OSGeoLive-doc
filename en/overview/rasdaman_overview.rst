:Author: Peter Baumann
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _rasdaman-overview:

.. image:: ../../images/project_logos/logo-rasdaman.png
 :scale: 100 %
 :alt: project logo
  :align: right
  :target: http://www.rasdaman.org


********
Rasdaman
********

Multi-Dimensional Big Data Analytics Engine
===========================================

Rasdaman is an Array Database System for flexible, fast, scalable geo services on multi-dimensional spatio-temporal sensor, image, simulation, and statistics data of unlimited volume.  Ad-hoc access, extraction, aggregation, as well as remix and analytics is enabled through a NewSQL raster query language with highly effective server-side optimization.  Cloud/cluster parallelization is accomplished in a secure, administrator-controlled way.  Data are stored in a PostgreSQL database, thereby achieving full information integration.

In addition to the raster query language, rasdaman supports OGC WMS, WCS, WCPS, and WPS as well as C++ and Java APIs.  At http://standards.rasdaman.org a collection of interactive demos is available.  A rasdaman driver is part of GDAL and MapServer.

Rasdaman has received a series of international innovation awards, among them the prestigeous European IT Prize and Geospatial Innovation Award.  Technology is mature and stable, being in operational use since more than ten years.  Among the operators of rasdaman services are mapping agencies and climate data centers.


.. image:: ../../images/project_logos/apps-collage.jpg
  :scale: 100 %
  :alt: project logo
  :align: right

Core Features
-------------

    * truly multi-dimensional - 1-D, 2-D, 3-D, 4-D, and beyond
    * powerful, flexible query language for visualization, classification, convolution, aggregation, and many more geospatial functions
    * spatial indexing and adaptive tiling for fast data access
    * parallelization and "tile streaming" for unlimited scalability from laptop to cluster and cloud
    * full information integration of raster data with all geo data in the PostgreSQL database
    * support for the raster-relevant OGC standards, Reference Implementation for WCS Core and WCPS

Implemented Standards
---------------------

    * OGC WMS 1.3, WCS 2.0, WCS-T 1.4, WCPS 1.0, WPS 1.0

Details
-------

**Website:** http://www.rasdaman.org

**Licence:**

* clients and APIs: GNU Lesser General Public License (LGPL) version 3
* server engine: GNU General Public License (GPL) version 3

**Software Version:** 8.4

**Supported Platforms:** Linux, MacOS, Solaris

**API Interfaces:** OGC WMS, WCS, WCS-T, WCPS, WPS; rasql, C++, Java

**Support:**  http://www.rasdaman.com

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/rasdaman_quickstart>`

