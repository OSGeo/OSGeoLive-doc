:Author: Paul Meems, TopX Geo-ICT The Netherlands (RST conversion)
:Reviewer: Cameron Shorter, Jirotech
:Product: MapWindow GIS Lite
:Version: osgeo-live9.0
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-MapWindow.png
  :alt: MapWindow GIS
  :align: right
  :width: 220
  :height: 38
  :target: http://www.mapwindow.org
 
MapWindow GIS Lite
================================================================================

Настольная ГИС
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapWindow GIS — это ГИС-клиент с открытым исходным кодом под Windows, в котором
можно визуализировать, организовывать, редактировать и анализировать данные, а
также составлять карты, пригодные для печати. Он включает мощные аналитические
функции через интеграцию с GEOS и GDAL/OGR. MapWindow легко встраивается как в
продукты, основанные на Microsoft Office (в том числе MS Excel и MS Access), так
и в программы, написанные на VB6, C++, C#, VB.NET и Delphi, так как базируется
на элементах управления ActiveX под названием MapWinGIS.

Версия MapWindow Lite, находящаяся на диске OSGeo-Live, не включает всю
функциональность настольной версии MapWindow Desktop (например, панели
инструментов, дополнения, полнофункциональный редактор шейп-файлов и поддержку
PostGIS).

.. note:: 
   MapWindow может быть запущен после установки под Microsoft Windows.
   Установочные файлы включены в полную версию диска `OSGeo-Live
   <http://live.osgeo.org>`_ или могут быть загружены по адресу
   https://mapwindow4.codeplex.com/releases/view/542097.

.. image:: /images/screenshots/1024x768/mapwindow_screenshot.png
  :alt: Mapwindow Open Source GIS Lite
  :scale: 50 %
  :align: right

Базовые функции
--------------------------------------------------------------------------------

* Дружественный графический интерфейс пользователя:

    * идентификация/выбор пространственных объектов;
    * перепроецирование «на лету»;
    * подписывание пространственных объектов;
    * изменение символики отображения векторных данных и растров;
	* редактор шейп-файлов;
	* поддержка пространственных баз данных;
    * и многое другое…

* Лёгкость просмотра данных в многих векторных и растровых форматах:

    * большинство векторных форматов, включая shape-файлы ESRI, форматы MapInfo,
      SDTS и GML;
    * растровые форматы, такие, как цифровые модели рельефа, аэрофотоснимки и
      снимки Landsat;
    * тайловые сервисы, например, OpenStreetMap или ArcGIS Online.

* Элемент управления ActiveX:

    * Используется элемент управления ActiveX, написанный на C++. Этот элемент
      управления можно использовать в собственных приложениях, написанных на
      таких языках, как VB6, C++, C#, VB.NET и Delphi, и в продуктах из состава
      MS Office — MS Access и MS Excel.

Реализованные стандарты
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* Стандарты OGC: 
    * TMS
    * Web Map Tile Service (WMTS)
    * GML    

Дополнительная информация
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Веб-сайт:** http://www.mapwindow.org

**Репозиторий исходного кода:** https://mapwingis.codeplex.com

**Лицензия:** `MPL версия 1.1 <http://www.mozilla.org/MPL/1.1/>`_

**Версия ПО:** MapWindowLite 4.9.5

**Поддерживаемые платформы:** Windows (версия XP или выше)

**Интерфейсы API:** Visual Basic 6, VBA (MS Access, MS Excel), C++, .NET (C#, VB.NET)

**Поддержка сообществом:** http://www.mapwindow.org/documentation/mapwingis4.9/getting_started.html

**Коммерческая поддержка:** http://www.mapwindow.nl, http://www.mapwindow.org/documentation/mapwindow5/support.html


Начало работы
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* :doc:`Введение <../quickstart/mapwindow_quickstart>`

