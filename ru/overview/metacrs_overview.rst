:Автор: OSGeo-Live
:Автор: Mike Adair
:Проверил: Cameron Shorter, LISAsoft
:Версия: osgeo-live5.5
:Лицензия: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. (no logo) .. image:: ../../images/project_logos/logo-GDAL.png
..  :scale: 60 %
..  :alt: Логотип проекта
..  :align: right
..  :target: http://trac.osgeo.org/metacrs/wiki

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

MetaCRS
================================================================================

Трансформации координатных систем
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/project_logos/logo-metacrs.png
  :scale: 100 %
  :alt: Пример проекции карты
  :align: right
  :target: http://trac.osgeo.org/metacrs/wiki


`Группа проектов MetaCRS <http://trac.osgeo.org/metacrs/wiki>`_ предоставляет 
библиотеки методов для трансформации между различными координатными системами. 
Географические координатные системы позволяют все точки на Земле описать как набор координат 
(таких, как широта, долгота и высота). Различные системы координат используются для представления 
поверхности Земли на "плоской" двухмерной карте.

Библиотеки MetaCRS включены в другие проекты, и некоторые из них также доступны 
через интерфейс командной строки.

Подпроекты MetaCRS включают:

* PROJ.4 (C++) — используется в MapServer, GRASS GIS, PostGIS, Mapnik, Thuban, OGDI, TopoCad, OGRCoordinateTransformation и многом другом.
* Proj4js (JavaScript) — используется в OpenLayers.
* CS-Map (C++) — используется в MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  — веб-сайт, содержащий описания координатных систем.

Базовые функции
--------------------------------------------------------------------------------

* Трансформация точек из одной координатной системы в другую.
* Трансформация между датумами.
* Поддержка большого количества классов проекции.


Реализованные стандарты
--------------------------------------------------------------------------------

Как правило, проекты используют описания координатных систем, определённые в 
`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`_ и описанные в формате 
Well Known Text (WKT).

PROJ.4
--------------------------------------------------------------------------------

  **Веб-сайт:**  http://trac.osgeo.org/proj/

  **Лицензия:** `в стиле X/MIT <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_

  **Версия ПО:** 4.7.0

  **Поддерживаемые платформы:** Windows, Linux, Mac

  **Интерфейсы API:** C, C++, Python, Java, Ruby

  **Поддержка:** http://lists.maptools.org/mailman/listinfo/proj

Proj4js
--------------------------------------------------------------------------------

  **Веб-сайт:**  http://proj4js.org

  **Лицензия:** `в стиле X/MIT <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_

  **Версия ПО:** 1.1.0

  **Поддерживаемые платформы:** Windows, Linux, Mac

  **Интерфейсы API:** JavaScript

  **Поддержка:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

CS-Map
--------------------------------------------------------------------------------

  **Веб-сайт:**  http://trac.osgeo.org/csmap/

  **Лицензия:** `собственная <http://svn.osgeo.org/metacrs/csmap/trunk/CsMapDev/license.txt>`_

  **Версия ПО:** 13.0

  **Поддерживаемые платформы:** Windows, Linux, Mac

  **Интерфейсы API:** C, C++

  **Поддержка:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

GeoTIFF/libgeotiff
--------------------------------------------------------------------------------

  **Веб-сайт:**  http://trac.osgeo.org/geotiff/

  **Лицензия:** `в стиле X/MIT <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_

  **Версия ПО:** 1.4.0

  **Поддержка:** http://lists.maptools.org/mailman/listinfo/geotiff

Proj4J
--------------------------------------------------------------------------------

  **Веб-сайт:**  http://trac.osgeo.org/proj4j/

  **Лицензия:** `Apache, версия 2.0 <http://www.apache.org/licenses/LICENSE-2.0>`_

  **Версия ПО:**

  **Поддерживаемые платформы:** Windows, Linux, Mac

  **Интерфейсы API:** Java

  **Поддержка:** http://lists.osgeo.org/mailman/listinfo/proj4j

