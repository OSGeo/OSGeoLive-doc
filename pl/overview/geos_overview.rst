:Author: OSGeo-Live
:Author: Frank Warmerdam
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
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
  :target: http://www.osgeo.org

GEOS
================================================================================

Biblioteka przestrzenna
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GEOS (Geometry Engine - Open Source) jest portem C++ API `JTS Topology Suite 
(JTS) <https://sourceforge.net/projects/jts-topo-suite/>`_. Zawiera funkcje i operatory
przestrzenne OpenGIS Simple Feature for SQL, oraz zaawansowane funkcje topologiczne dostpne w JTS.

GEOS jest najszerzej stosowaną geoprzestrzenną biblioteką geometrii w C++. 
Jest używana w takich porojektach open source, jak :doc:`PostGIS <postgis_overview>`, 
:doc:`QGIS <qgis_overview>`, :doc:`GDAL/OGR <gdal_overview>` i 
:doc:`MapServer <mapserver_overview>`, oraz przez produkty komercyjne, np.
`FME <http://www.safe.com/fme/fme-technology/>`_.

Zaimplementowane standardy
--------------------------------------------------------------------------------

* `OpenGIS Simple Feature for SQL <http://www.opengeospatial.org/standards/sfs>`_  spatial predicate functions and spatial operators

Główne funkcje
--------------------------------------------------------------------------------
    
* Geometria: Point, LineString, Polygon, MultiPoint, MultiLineString, MultiPolygon, GeometryCollection
* Predicates: Intersects, Touches, Disjoint, Crosses, Within, Contains, Overlaps, Equals, Covers
* Operacje: Union, Distance, Intersection, Symmetric Difference, Convex Hull, Envelope, Buffer, Simplify, Polygon Assembly, Valid, Area, Length, 
* Prepared geometries (pre-spatially indexed)
* Indeks przestrzenny STR
* Kodowanie i roykodowzwanie OGC Well Known Text (WKT) i Well Known Binary (WKB).
* C and C++ API (C API gives long term ABI stability)
* Thread safe (using the reentrant API)

Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:**  http://geos.osgeo.org/

**Licencja:** LGPL

**Wersja programu:** 3.4.2

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** C, C++

**Wsparcie:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile
