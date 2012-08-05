:Autor: OSGeo-Live
:Autor: Frank Warmerdam
:Revisor: Cameron Shorter, LISAsoft
:Translator: Javier Sánchez
:Versión: osgeo-live6.0
:Licencia: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

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

Librería espacial
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GEOS (Geometry Engine - Open Source) es un port a C++ de `JTS Topology Suite (JTS) <http://tsusiatsoftware.net/jts/main.html>`_. Incluye las OpenGIS Simple Features para funciones de predicado espacial SQL y operadores espaciales, así como funciones topológicas específicas de JTS.

GEOS es la librería C++ geoespacial más ampliamente utilizada, siendo usada en proyectos como :doc:`PostGIS <postgis_overview>`, :doc:`QGIS <qgis_overview>`, :doc:`GDAL/OGR <gdal_overview>` and :doc:`MapServer <mapserver_overview>`, y por productos propietarios incluyendo `FME <http://www.safe.com/fme/fme-technology/>`_.

Estandares Implementados
--------------------------------------------------------------------------------

* OpenGIS Simple Features para funciones de predicado espacial SQL y operdores espaciales

Características Fundamentales
--------------------------------------------------------------------------------
    
* Geometrías: Point, LineString, Polygon, MultiPoint, MultiLineString, MultiPolygon, GeometryCollection
* Predicados: Intersects, Touches, Disjoint, Crosses, Within, Contains, Overlaps, Equals, Covers
* Operaciones: Union, Distance, Intersection, Symmetric Difference, Convex Hull, Envelope, Buffer, Simplify, Polygon Assembly, Valid, Area, Length, 
* Geometrías preparadas (pre-spatially indexed)
* Indice espacial STR
* OGC Well Known Text (WKT) y Well Known Binary (WKB) encoders y decoders.
* C y C++ API (El API C proporciona estabilidad ABI a largo plazo)
* Thread safe (utilizando la nueva API)

Detalles
--------------------------------------------------------------------------------

**Sitio Web:**  http://geos.osgeo.org/

**Licencia:** LGPL

**Versión el Software:** 3.3.2

**Plataformas Soportadas:** Windows, Linux, Mac

**Interfaces API:** C, C++

**Soporte:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile
