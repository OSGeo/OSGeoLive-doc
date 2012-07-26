:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

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
================================================================================

Geospatial Data Translation Tools
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geospatial Data Abstraction Library (GDAL/OGR) provides command-line
utilities to translate and process a wide range of raster and vector
geospatial data formats.

The utilities are based upon a cross platform, C++ library, accessible
via numerous programming languages.  As a library, it presents a single
abstract data model to the calling application for all supported formats.

GDAL/OGR is the most widely used geospatial data access library. It provides
the primary data access engine for many applications including MapServer,
GRASS, QGIS, and OpenEV. It is also utilized by packages such as OSSIM,
Cadcorp SIS, FME, Google Earth, VTP, Thuban, ILWIS, MapGuide and ArcGIS.

.. image:: ../../images/screenshots/1024x768/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: GDAL supports many geodata formats
  :align: right

Core Features
--------------------------------------------------------------------------------

* Command-line utilities for data translation, image warping, subsetting, and various other common tasks
* Highly efficient raster data access, taking advantage of tiling and overviews
* Support for large files - larger than 4GB
* Library access from Python, Java, C#, Ruby, VB6 and Perl
* Coordinate system engine built on PROJ.4 and OGC Well Known Text coordinate system descriptions

Popular Supported Formats
--------------------------------------------------------------------------------

GDAL supports over 50 raster formats, and OGR over 20 vector formats.

These include:

* **Raster:** GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000, DTED, and more ...
* **Vector:** MapInfo (tab and mid/mif), ESRI Shapefile, ESRI Coverages, ESRI Personal Geodatabase, DGN, GML, PostGIS, Oracle Spatial, and more ...

Implemented Standards
--------------------------------------------------------------------------------

The OGR vector data model is compliant with the OGC Simple Features specification.

Details
--------------------------------------------------------------------------------

**Website:**  http://www.gdal.org

**Licence:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**Software Version:** 1.7.0 (1.9.1)

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** C, C++, Python, Java, C#, Ruby, VB6 and Perl

**Support:** http://lists.osgeo.org/mailman/listinfo/gdal-dev, http://www.osgeo.org/search_profile

Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/gdal_quickstart>`
