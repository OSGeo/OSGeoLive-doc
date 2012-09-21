:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://mapserver.org/trunk/tinyows/

********************************************************************************
Начало работы с TinyOWS
********************************************************************************


TinyOWS — это легковесный и простой в развёртывании высокопроизводительный WFS-сервер
с поддержкой режима редактирования (WFS-T) и интерфейсов CGI и FastCGI.
Для хранения данных используется :doc:`PostGIS <../overview/postgis_overview>`.

Данное "введение" содержит описание следующих операций:

  * отображение WFS слоя в QGIS;
  * редактирование WFS слоя с использованием расширения WFS в QGIS.


Отображение WFS-слоя в QGIS
================================================================================

#. Выберите :menuselection:`Desktop --> Desktop GIS --> Quantum GIS`

#. Выберите :menuselection:`Layer --> Add PostGIS Layer...`

   * Вначале подключим слой PostGIS напрямую

#. Нажмите :guilabel:`New`

#. Укажите одинаковое значение — **pgrouting** — для имени подключения и базы данных

#. Нажмите :guilabel:`OK`

#. Нажмите :guilabel:`Connect`

#. Выберите таблицу **ways** из списка

#. Нажмите :guilabel:`Add`

#. Измените масштаб до границ появившегося слоя

#. Выберите :menuselection:`Plugins -> Manage Plugins -> WFS Plugin -> OK`

   * Активация расширения WFS, поддерживающего работу с WFS слоями

#. Выберите :menuselection:`Layer --> Add WFS Layer...`

   * Добавляем слой WFS, созданный на базе той же PostGIS-таблицы **ways** 

#. Нажмите :guilabel:`New`

#. В качестве имени подключения укажите **tinyows** и задайте URL - **http://localhost/cgi-bin/tinyows**

#. Нажмите :guilabel:`OK`

#. Нажмите :guilabel:`Connect`

#. Выберите **tows:ways** в списке слоёв

#. Отметьте пункт :guilabel:`Only request features overlapping the current view extent`, это означает, что будут загружены только те объекты, границы которых пересекают текущий охват

#. Нажмите :guilabel:`OK`

   * Отобразился WFS слой:

.. image:: ../../images/screenshots/800x600/tinyows_wfs_layer.png
  :scale: 80 %

Редактирование слоя WFS-T
================================================================================

#. Выберите :menuselection:`Layer --> Toggle Editing`

#. Выберите :menuselection:`Edit --> Node Tool`

#. Переместите любой узел(крест) в новое положение

#. Выберите :menuselection:`Layer --> Save edits`


Что дальше?
================================================================================

Чтобы узнать больше о TinyOWS, ознакомьтесь с `документацией TinyOWS`_ на сайте MapServer.

.. _`документацией TinyOWS`: http://mapserver.org/trunk/tinyows/




