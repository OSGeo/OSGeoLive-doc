:Author: OSGeoLive
:Author: Frank Warmerdam
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeolive6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_geos@
@OSGEO_KIND_geos@


@NAME_geos@
================================================================================

Spatial Library
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GEOS (Geometry Engine - Open Source) is a C++ port of the `JTS Topology Suite (JTS) <https://projects.eclipse.org/projects/locationtech>`_.
It includes the OpenGIS Simple Features for SQL spatial predicate functions and spatial operators, as well as specific JTS enhanced topology functions.

GEOS is the most widely used geospatial C++ geometry library, being used by open
source projects such as :doc:`PostGIS <postgis_overview>`, :doc:`QGIS <qgis_overview>`,
:doc:`GDAL/OGR <gdal_overview>` and :doc:`MapServer <mapserver_overview>`,
and by proprietary products including `FME <https://www.safe.com/fme>`_.

Implemented Standards
--------------------------------------------------------------------------------

* OpenGIS |SFSQL| spatial predicate functions and spatial operators

..  @SCREENSHOT_geos@

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

**Website:** @WEB_geos@

**Licence:** LGPL

**Software Version:** |version-geos|

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** C, C++

**Support:** https://lists.osgeo.org/mailman/listinfo/geos-devel, https://www.osgeo.org/service-providers

@VMDK_geos@
@QUICKSTART_geos@

.. presentation-note
    GEOS provides a port of JTS to C and C++. There are also bindings to Python and other languages.
