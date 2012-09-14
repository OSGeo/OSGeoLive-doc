:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-osgearth.gif
  :scale: 100 %
  :alt: Лого проекта
  :align: right

********************************************************************************
osgEarth: начало работы
********************************************************************************

**osgEarth** — масштабируемый набор инструментов для визуализации земной поверхности 
на основе OpenSceneGraph_.

.. _OpenSceneGraph: http://www.openscenegraph.org/

Здесь описывается процесс запуска 3D-глобуса с разными дополнительными данными.


Запуск osgearth_viewer
================================================================================

* Откройте терминал (командную строку) и запустите osgearth_viewer::

   export OSG_FILE_PATH=/usr/share/osgearth
   osgearth_viewer --window 50 50 900 700 /usr/share/osgearth/maps/srtm.earth

Вы должны увидеть глобус со спутниковыми снимками.

* Щёлкайте мышью для навигации; щелчок правой клавишей мыши или вращение
  колеса меняют масштаб.
* Для изменения угла обзора перетаскивайте мышь с зажатыми левой и правой
  кнопками.
* Нажмите :kbd:`h` для вызова справки.
* Нажмите :kbd:`ESCAPE` для выхода.


Запуск osgviewer с данными OpenStreetMap
================================================================================

* В командной строке введите::

   osgviewer /usr/share/osgearth/maps/openstreetmap.earth

*  Нажмите :kbd:`h` для вызова справки. Больше информации доступно на сайте openscenegraph.org_.

.. _openscenegraph.org: http://www.openscenegraph.org/projects/osg/wiki/Support/UserGuides/osgviewer


Что дальше?
================================================================================

Узнать больше о osgEarth можно на странице `Documentation`_ в вики проекта.

.. _`Documentation`: http://osgearth.org/wiki/Documentation
