:Author: OSGeoLive
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_gdal@
@OSGEO_KIND_gdal@


@NAME_gdal@
================================================================================

About
--------------------------------------------------------------------------------

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

@SCREENSHOT_gdal@

Core Features
--------------------------------------------------------------------------------

* Command-line utilities for data translation, image warping, subsetting, and various other common tasks
* Highly efficient raster data access, taking advantage of tiling and overviews
* Support for large files - larger than 4GB
* Library access from Python, Java, C#, Ruby, VB6 and Perl
* Coordinate system engine built on PROJ.4 and OGC Well Known Text coordinate system descriptions

Popular Supported Formats
--------------------------------------------------------------------------------

GDAL supports over 140 raster formats, and OGR over 80 vector formats.

These include:

* **Raster:** GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000, DTED, NITF, GeoPackage and more ...
* **Vector:** GeoPackage, ESRI Shapefile, GML, GeoJSON, AutoCAD DWG, MapInfo (tab and mid/mif), ESRI Coverages, ESRI Personal Geodatabase, DGN, PostGIS, Oracle Spatial, and more ...

Implemented Standards
--------------------------------------------------------------------------------

The OGR vector data model is compliant with the OGC Simple Features specification.

Details
--------------------------------------------------------------------------------

**Website:**  http://www.gdal.org

**Licence:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**Software Version:** |version-gdal|

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** C, C++, Python, Java, C#, Ruby, VB6 and Perl

**Support:** http://lists.osgeo.org/mailman/listinfo/gdal-dev, http://www.osgeo.org/search_profile

@QUICKSTART_gdal@

