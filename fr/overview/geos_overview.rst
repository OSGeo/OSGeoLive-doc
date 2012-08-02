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

Bibliothèque spatiale
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GEOS (Geometry Engine - Open Source) est un port en C++ de la `JTS Topology Suite (JTS) <http://tsusiatsoftware.net/jts/main.html>`_. Elle inclut les fonctions de prédicats et les opérations spatiales de la spécification OGC "OpenGIS Simple Features for SQL spatial", ainsi que les fonctions de topologie améliorées spécifiques à JTS.

GEOS est la bibliothèque de géométrie géospatiale en C++ la plus utilisée, motorisant des projets opensource comme que :doc:`PostGIS <postgis_overview>`, :doc:`QGIS <qgis_overview>`, :doc:`GDAL/OGR <gdal_overview>` et :doc:`MapServer <mapserver_overview>`, et des produits propriétaires comme `FME <http://www.safe.com/fme/fme-technology/>`_.

Standards implémentés
--------------------------------------------------------------------------------

* fonctions de prédicats et les opérations spatiales "OpenGIS Simple Features for SQL spatial" de l'OGC

Caractéristiques principales
--------------------------------------------------------------------------------
    
* Géometries: Point, LineString, Polygon, MultiPoint, MultiLineString, MultiPolygon, GeometryCollection
* Prédicats: Intersects, Touches, Disjoint, Crosses, Within, Contains, Overlaps, Equals, Covers
* Opérations: Union, Distance, Intersection, Symmetric Difference, Convex Hull, Envelope, Buffer, Simplify, Polygon Assembly, Valid, Area, Length, 
* Géométries préparées (pré-indexées spatialement)
* Index spatial STR
* encodeurs et décodeurs du Well Known Text (WKT) du Well Known Binary (WKB) de l'OGC
* API C et C++ (l'API C permet un stabilité de l'ABI à long terme)
* Thread safe (en utilisant l'API réentrante)

Détails
--------------------------------------------------------------------------------

**Site web:**  http://geos.osgeo.org/

**Licence:** LGPL

**Version du logiciel:** 3.3.2

**Plates-formes supportées:** Windows, Linux, Mac

**Interfaces de l'API:** C, C++

**Support:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile
