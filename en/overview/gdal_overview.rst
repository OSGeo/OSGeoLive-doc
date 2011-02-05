:Author: OSGeo Live
:Version: osgeo-live4.5
:License: Creative Commons

.. _gdal-overview:

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GDAL/OGR
========

Transformation Library
~~~~~~~~~~~~~~~~~~~~~~

Geospatial Data Abstraction Library (GDAL/OGR) provides command-line utilities to translate and process a wide range of raster and vector geospatial data formats.

The utilities are based upon a cross platform, C++ library, accessible via numerous programming languages.  As a library, it presents a single abstract data model to the calling application for all supported formats.

GDAL/OGR is the most widely used geospatial data access library. It provides the primary data access engine for many applications including MapServer, GRASS, QGIS, and OpenEV. It is also utilized by packages such as OSSIM, Cadcorp SIS, FME, Google Earth, VTP, Thuban, ILWIS, MapGuide and ArcGIS.


.. TBD: Insert an image here
  .. image:: ../../images/screenshots/800x600/pgadmin.gif
  :scale: 75 %
  :alt: project logo
  :align: right

Core Features
-------------

* Command-line utilities for data translation, image warping, subsetting, and various other common tasks
* Highly efficient raster data access, taking advantage of tiling and overviews
* Support for large files - larger than 4GB
* Library access from Python, Java, C#, Ruby, VB6 and Perl
* Coordinate system engine built on PROJ.4 and OGC Well Known Text coordinate system descriptions

Popular Supported Formats
-------------------------

GDAL supports over 50 raster formats, and OGR over 20 vector formats.

These include:

* **Raster:** GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000, DTED, and more ...
* **Vector:** MapInfo (tab and mid/mif), ESRI Shapefile, ESRI Coverages, ESRI Personal Geodatabase, DGN, GML, PostGIS, Oracle Spatial, and more ...

Implemented Standards
---------------------

The OGR vector data model is compliant with the OGC Simple Features specification.

Details
-------

**Website:**  http://www.gdal.org

**Licence:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**Software Version:** 1.7.2-4~lucid3

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** Python, Java, C#, Ruby, VB6 and Perl

**Support:** http://www.osgeo.org/search_profile
