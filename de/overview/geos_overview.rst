:Author: OSGeo-Live
:Author: Frank Warmerdam
:Author: Frank Gasdorf
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
====

Bibliothek für räumliche Daten
------------------------------

GEOS (Geometry Engine - Open Source) ist eine C++ -Portierung der `JTS Topology Suite (JTS) 
<http://tsusiatsoftware.net/jts/main.html>`_. Sie deckt dabei die OpenGIS Simple Features für 
SQL räumliche Beziehungseigenschaften und räumlichen Operatoren, sowie spezifische durch JTS 
verbesserte Topologie-Funktionen.

GEOS ist die am weitesten verbreitete GIS- C++ -Bibliothek für Geometrien, die von Open-Source-Projekten 
wie zum Beispiel :doc:`PostGIS <postgis_overview>`, :doc:`QGIS <qgis_overview>`, 
:doc:`GDAL/OGR <gdal_overview>` und :doc:`MapServer <mapserver_overview>` sowie von proprietären 
Produkten wie zum Beispiel `FME <http://www.safe.com/fme/fme-technology/>`_ verwendet wird.

Implementierte Standards
------------------------

* `OpenGIS Simple Features für SQL <http://www.opengeospatial.org/standards/sfs>`_ 

Kernfunktionen
--------------
    
* Geometrien: Point, LineString, Polygon, MultiPoint, MultiLineString, MultiPolygon, GeometryCollection
* Beziehungseigenschaften: Intersects, Touches, Disjoint, Crosses, Within, Contains, Overlaps, Equals, Covers
* Operatoren: Union, Distance, Intersection, Symmetric Difference, Convex Hull, Envelope, Buffer, Simplify, 
  Polygon Assembly, Valid, Area, Length, 
* Vorbereitete Geometrien (räumlich vorindiziert)
* STR räumlicher Index
* OGC Well Known Text (WKT) and Well Known Binary (WKB) Encoder und Decoder.
* C and C++ API (C API sichert langfristige ABI Beständigkeit zu)
* Thread-sicher (mit dem Reentrant API)

Details
-------

**Webseite:** http://geos.osgeo.org/

**Lizenz:** LGPL

**Software Version:** 3.3.2

**Unterstützte Plattformen:** Windows, Linux, Mac

**API Schnittstellen:** C, C++

**Support:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile
