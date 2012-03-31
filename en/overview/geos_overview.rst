:Author: OSGeo-Live
:Reviewer: ?, ?
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _geos-overview:

.. image:: ../../images/project_logos/geos.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://geos.osgeo.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GEOS
================================================================================

Geometry Engine, Open Source
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GEOS (Geometry Engine - Open Source) is a C++ port of the  Java Topology Suite (JTS). As such, it aims to contain the complete functionality of JTS in C++. This includes all the  OpenGIS Simple Features for SQL spatial predicate functions and spatial operators, as well as specific JTS enhanced topology functions.

GEOS is available under the terms of  GNU Lesser General Public License (LGPL), and is a project of  OSGeo. 

GEOS is the most widely used geospatial C++ geometry library, and is used by open source projects including including PostGIS, QGIS, GDAL/OGR and MapServer, and by proprietary products including FME. 

.. image:: ../../images/screenshots/1024x768/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: GDAL supports many geodata formats
  :align: right

Core Features
--------------------------------------------------------------------------------
    
* Geometries: Point, LineString, Polygon, MultiPoint, MultiLineString, MultiPolygon, GeometryCollection
* Predicates: Intersects, Touches, Disjoint, Crosses, Within, Contains, Overlaps, Equals, Covers
* Operations: Union, Distance, Intersection, Symmetric Difference, Convex Hull, Envelope, Buffer, Simplify, Polygon Assembly, Valid, Area, Length, 
* Prepared geometries (pre-spatially indexed)
* STR spatial index
* OGC Well Known Text (WKT) and Well Known Binary (WKB) encoders and decoders.
* C and C++ API (C API gives long term ABI stability)
* Thread safe (using the reentrant API)


Details
--------------------------------------------------------------------------------

**Website:**  http://geos.osgeo.org/

**Licence:** LGPL

**Software Version:** 3.3.2

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** C, C++

**Support:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile
