:Author: OSGeo-Live
:Author: Frank Warmerdam
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GEOS.png
  :scale: 100
  :alt: project logo
  :align: right
  :target: http://geos.osgeo.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GEOS
================================================================================

Llibreria espacial
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GEOS (Geometry Engine - Open Source) és un versió en C++ de `JTS Topology Suite (JTS) <http://tsusiatsoftware.net/jts/main.html>`_. Inclou les Funcions Simples d'OpenGIS per als operadors espacials i les funcions de predicat espacial d'SQL, així com les funcions específiques de topologia millorada de JTS.

GEOS és la llibreria geoespacial en C++ d'ús més extés, i s'utilitza per a projectes de codi obert com  :doc:`PostGIS <postgis_overview>`, :doc:`QGIS <qgis_overview>`, :doc:`GDAL/OGR <gdal_overview>` i :doc:`MapServer <mapserver_overview>`, i també per productes privatius com `FME <http://www.safe.com/fme/fme-technology/>`_.

Estàndards implementats
--------------------------------------------------------------------------------

* Funcions Simples d'OpenGIS per als operadors espacials i les funcions de predicat espacial d'SQL

Característiques principals
--------------------------------------------------------------------------------
    
* Geometries: Point, LineString, Polygon, MultiPoint, MultiLineString, MultiPolygon, GeometryCollection
* Predicats: Intersects, Touches, Disjoint, Crosses, Within, Contains, Overlaps, Equals, Covers
* Operacions: Union, Distance, Intersection, Symmetric Difference, Convex Hull, Envelope, Buffer, Simplify, Polygon Assembly, Valid, Area, Length, 
* Geometries preparades (reindexades espacialment)
* Index espacial STR
* Codificadors i decodificadors OGC Well Known Text (WKT) i Well Known Binary (WKB).
* API en C i C++ (l'API en C té estabilitat a llarg termini ABI)
* Segur en fils (emprant l'API reentrant)

Detalls
--------------------------------------------------------------------------------

**Lloc web:**  http://geos.osgeo.org/

**Llicència:** LGPL

**Versió de programari:** 3.3.2

**Sistemes operatius:** Windows, Linux, Mac

**Interfícies API:** C, C++

**Suport:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile
