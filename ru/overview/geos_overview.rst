:Author: OSGeo-Live
:Author: Frank Warmerdam
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GEOS.png
  :scale: 100
  :alt: логотип проекта
  :align: right
  :target: http://geos.osgeo.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: Проект OSGeo
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GEOS
================================================================================

Библиотека для работы с пространственными данными
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GEOS (Geometry Engine - Open Source) — порт на язык программирования C++ библиотеки `JTS Topology Suite (JTS) <http://tsusiatsoftware.net/jts/main.html>`_. Эта библиотека включает функции пространственных предикатов и пространственные операторы, определённые стандартом *OpenGIS Simple Features for SQL*, а также специфические для JTS функции улучшенной работы с топологией.

GEOS — наиболее широко используемая библиотека пространственной геометрии для C++, используемая такими открытыми проектами, как :doc:`PostGIS <postgis_overview>`, :doc:`QGIS <qgis_overview>`, :doc:`GDAL/OGR <gdal_overview>` и :doc:`MapServer <mapserver_overview>`, и также некоторым проприетарным ПО, например, `FME <http://www.safe.com/fme/fme-technology/>`_.

Реализованные стандарты
--------------------------------------------------------------------------------

* `OpenGIS Simple Features for SQL <http://www.opengeospatial.org/standards/sfs>`_  — функции пространственных предикатов и пространственные операторы.

Базовые функции
--------------------------------------------------------------------------------
    
* Примитивы: Point, LineString, Polygon, MultiPoint, MultiLineString, MultiPolygon, GeometryCollection
* Предикаты: Intersects, Touches, Disjoint, Crosses, Within, Contains, Overlaps, Equals, Covers
* Операции: Union, Distance, Intersection, Symmetric Difference, Convex Hull, Envelope, Buffer, Simplify, Polygon Assembly, Valid, Area, Length, 
* Подготовленные примитивы (предварительно пространственно проиндексированные)
* Пространственный индекс STR
* Кодеры и декодеры форматов OGC Well Known Text (WKT) и Well Known Binary (WKB)
* API для C и C++ (API для C обеспечивает стабильность программного интерфейса в долгосрочном периоде)
* Потокобезопасность (использует реентерабельное API)

Подробности
--------------------------------------------------------------------------------

**Веб-сайт:**  http://geos.osgeo.org/

**Лицензия:** `LGPL <http://www.gnu.org/copyleft/lesser.html>`_

**Версия ПО:** 3.3.2

**Поддерживаемые платформы:** Windows, Linux, Mac

**Интерфейсы API:** C, C++

**Поддержка:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile
