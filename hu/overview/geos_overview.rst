:Author: OSGeo-Live
:Author: Frank Warmerdam
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Zoltan Siki
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GEOS.png
  :alt: projekt logo
  :align: right
  :target: http://geos.osgeo.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Projekt
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GEOS
================================================================================

Térinformatikai könyvtár
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A GEOS (Geometry Engine - Open Source) a 
`JAVA Topology Suite (JTS) <https://sourceforge.net/projects/jts-topo-suite/>`_ C++
átírása. Tartalmazza az OpenGIS Simple Features for SQL térbeli függvényeit és
térbeli operátorait, mint ahogy a JTS topológiai függvényeit.

A GEOS a legszélesebb körben használt térinformatikai, geometriai C++ könyvtár,
olyan nyílt forráskódú projektekben használják mint 
:doc:`PostGIS <postgis_overview>`, :doc:`QGIS <qgis_overview>`,
:doc:`GDAL/OGR <gdal_overview>` és kereskedelmi termékekeben mint például 
`FME <http://www.safe.com/fme/fme-technology/>`_.

Implementált szabványok
--------------------------------------------------------------------------------

* `OpenGIS Simple Features for SQL <http://www.opengeospatial.org/standards/sfs>`_  térinformatikai függvények és operátorok

Alapfunkciók
--------------------------------------------------------------------------------
    
* Geometriák: Point, LineString, Polygon, MultiPoint, MultiLineString, MultiPolygon, GeometryCollection
* Feltételek: Intersects, Touches, Disjoint, Crosses, Within, Contains, Overlaps, Equals, Covers
* Operátorok: Union, Distance, Intersection, Symmetric Difference, Convex Hull, Envelope, Buffer, Simplify, Polygon Assembly, Valid, Area, Length
* Előkészített geometriák (előzetes térbeli index)
* STR térbeli index
* OGC Well Known Text (WKT) és Well Known Binary (WKB) kódoló és dekódoló
* C és C++ API (a C API hosszútávú ABI stabilitást biztosít)
* Biztonságos szálak (reentráns API használatával)

Részletek
--------------------------------------------------------------------------------

**Honlap:**  http://geos.osgeo.org/

**Licenc:** LGPL

**Támogatott platformok:** Windows, Linux, Mac

**API Interfészek:** C, C++

**Támogatás:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile
