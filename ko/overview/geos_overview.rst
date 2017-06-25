:Author: OSGeo-Live
:Author: Frank Warmerdam
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-GEOS.png
  :alt: project logo
  :align: right
  :target: http://geos.osgeo.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GEOS
================================================================================

Spatial Library
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GEOS (Geometry Engine - Open Source) is a C++ port of the `JTS Topology Suite (JTS) <https://sourceforge.net/projects/jts-topo-suite/>`_. It includes the OpenGIS Simple Features for SQL spatial predicate functions and spatial operators, as well as specific JTS enhanced topology functions.

GEOS is the most widely used geospatial C++ geometry library, being used by open source projects such as :doc:`PostGIS <postgis_overview>`, :doc:`QGIS <qgis_overview>`, :doc:`GDAL/OGR <gdal_overview>` and :doc:`MapServer <mapserver_overview>`, and by proprietary products including `FME <http://www.safe.com/fme/fme-technology/>`_.

Implemented Standards
--------------------------------------------------------------------------------

* `OpenGIS Simple Features for SQL <http://www.opengeospatial.org/standards/sfs>`_  spatial predicate functions and spatial operators

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

**Software Version:** 3.4.2

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** C, C++

**Support:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile
