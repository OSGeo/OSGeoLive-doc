:Author: Jody Garnett
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GeoTools.png
  :scale: 60 %
  :alt: Логотип
  :align: right
  :target: http://geotools.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GeoTools
================================================================================

GeoTools — это Java-библиотека с открытым исходным кодом (LGPL), которая предоставляет стандартные методы для работы с геопространственными данными и использует структуры данных, основанные на спецификациях Open Geospatial Consortium (OGC).

.. image:: ../../images/screenshots/800x600/geotools-overview.png
  :scale: 60 %
  :alt: GeoTools - это модульная библиотека с поддержкой дополнительных форматов при помощи плагинов
  :align: right

Библиотека GeoTools используется в ряде проектов, включая веб сервисы, утилиты командной строки и настольные приложения. Приложения из состава OSGeo-Live , которые используют GeoTools, включают: 
:doc:`52nSOS_overview`, :doc:`52nWPS_overview`, :doc:`atlasstyler_overview`, :doc:`geomajas_overview`, :doc:`geopublisher_overview`, :doc:`geoserver_overview`, and :doc:`udig_overview`.

Базовые функции
--------------------------------------------------------------------------------

* Определение интерфейсов для основных пространственных представлений и структур данных
  
  * Встроенная поддержка геометрии посредством `JTS Topology Suite (JTS) <http://tsusiatsoftware.net/jts/main.html>`_
  * Атрибутивные и пространственные фильтры с использованием спецификации OGC Filter Encoding
  
* Простой API доступа к данным, поддерживающий доступ к записям; транзакции и блокировки между потоками
  
  * Доступ к ГИС данным в множестве файловых форматах и баз геоданных
  * Поддержка систем координат и преобразований между ними
  * Работа с широким спектром картографических проекций
  * Выборка и анализ данных в терминах пространственных и непространственных атрибутов

* Без сохранения состояния отрисовка требует немного памяти, наиболее полезна в серверных средах.
  
  * Создавать и отображать карты со сложными стилями

* Мощная технология разбора на основе "схем" с использованием XML для связи с данными в формате GML
  
  * Технология разбора / декодирования предоставляется с привязками ко многим стандартам OGC, включая GML, Filter, KML, SLD и SE.
  
* Плагины GeoTools: открытая система плагинов, позволяющая изучить дополнительные форматы библиотеки
  
  * Плагины для проекта ImageIO-EXT, которые позволяют читать дополнительные растровые форматы из GDAL
 
* Расширения GeoTools

  * Предоставляет дополнительные возможности по сборке, используя пространственные возможности базовой библиотеки
  
  .. image:: ../../images/screenshots/800x600/geotools-extension.png
     :alt: Сборка расширения с использованием библиотеки GeoTools

  * Расширения предоставляют графические и сетевые возможности (поиск кратчайшего пути), возможности валидации, клиент для картографического веб-сервера, привязки к инструментам разбора XML, декодирования и создания палитр.

* Поддержка GeoTools
  
  * Библиотека GeoTools поддерживается обширным сообществом, а также выступает в качестве "точки входа" для начала работы и для стимулирования новых талантов и содействия экспериментам.
  
  * Отмечается поддержка **swing** (по данным руководств по geotools), **swt**, поддержка локальной и удалённой (веб) обработки, расширенная символика, дополнительные форматы данных, генерация сеток и несколько реализаций ISO Geometry.

Поддерживаемые форматы
-----------------  

* Растровые форматы и доступ к данным:
  
  ArcSDE, Arc GRID, GeoTIFF, GRASS raster, GTOPO30, растры (JPEG, TIFF, GIF, PNG), imageio-ext-gdal, imagemoasaic, imagepyramid, JP2K, Matlab.
  
* Поддержка баз данных "jdbc-ng":
  
  DB2, H2, MySQL, Oracle, PostGIS, SpatiaLite, SQL Server.

* Векторные форматы и доступ к данным:
  
  app-schema, ArcSDE, CSV, DXF, EDIGEO, Excel, GeoJSON, OGR, shp-файлы, WFS.

* Привязки XML:

  Структуры данных языка Java и привязки предоставляются для следующих типов:
  xsd-core (простые типы XML), fes, filter, GML2, GML3, KML, OWS, SLD, WCS, WFS, WMS, WPS, VPF.
  
  Дополнительно парсеры/декодеры для геометрий, фильтров и стилей доступны для приложений DOM и SAX.
  
Реализованные стандарты
--------------------------------------------------------------------------------

Поддержка большого числа стандартов Open Geospatial Consortium (OGC):

* OGC Style Layer Descriptor / Symbology Encoding data structures and rendering engine
* OGC General Feature Model including Simple Feature support
* OGC Grid Coverage representation of raster information
* OGC Filter and Common Constraint Language (CQL)
* Clients for Web Feature Service (WFS), Web Map Service (WMS) и экспериментальная поддержка Web Process Service (WPS)
* ISO 19107 Geometry

Дополнительная информация
--------------------------------------------------------------------------------
 
**Веб-сайт:** http://geotools.org/

**Лицензия:** LGPL

**Версия ПО:** 8.0

**Поддерживаемые платформы:** Кроссплатформенное ПО, т.к. написано на Java

**Интерфейсы API:** Java

**Поддержка:** http://docs.geotools.org/latest/userguide/welcome/support.html


Начало работы
--------------------------------------------------------------------------------

* `Введение <http://docs.geotools.org/latest/userguide/tutorial/quickstart/index.html>`_
