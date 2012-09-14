:Author: OSGeo-Live
:Author: Massimo Di Stefano
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-ossim.gif
  :scale: 80 %
  :alt: Лого проекта
  :align: right

********************************************************************************
OSSIM: начало работы
********************************************************************************

Open Source Software Image Map (OSSIM) — высокопроизводительный инструмент для
обработки данных дистанционного зондирования, географических информационных
систем и фотограмметрии.

Этот документ описывает, как:

  * Просматривать изображения в ImageLinker
  * Запускать ossimPlanet

ImageLinker
================================================================================

* Запустите ImageLinker, используя иконку в папке "Spatial Tools" на рабочем столе
* Выберите файл проекта :menuselection:`File --> Open Project --> /home/user/ossim/landsatrgb.prj`
* Выберите :menuselection:`Меню --> window --> tile`
* Затем :menuselection:`Image window --> select the pan icon --> click on the image --> press the button "propagate"`
* Убедитесь, что вы видите 3 серых спутниковых снимка.

  .. image:: ../../images/screenshots/800x600/ossim_imagelinker2.jpg
     :scale: 100 %

Развернутое описание можно найти в `блоге`_.

.. _`блоге`: http://www.geofemengineering.it/GeofemEngineering/Blog/Voci/2010/3/15_OSGEO_-_Live_-_DVD_-_%22running_imagelinker%22.html


OssimPlanet
================================================================================

* Запустите OssimPlanet, используя иконку в папке "Desktop-GIS" на рабочем столе
* Выберите :menuselection:`File --> Open Image --> /home/user/data/raster/band1.tiff`
* Затем выберите :menuselection:`menu --> Open kml --> /home/user/data/kml/*.kml`
* Далее :menuselection:`legend tree --> Image Layers --> open the trees --> double-click on the band1 image`,
  вы должны увидеть сцену, увеличенную до границ изображения
* Рассмотрите сцену.

.. note::
   Чтобы отключить смену дня и ночи, снимите галку :menuselection:`File --> Preferences --> Environment --> Enable Ephemeris`


Что дальше?
================================================================================

* Литература по OSSIM

  Узнать больше об OSSIM можно из пособий_.

.. _пособий: http://download.osgeo.org/ossim/tutorials/pdfs/

* Документация на DVD

  Также смотрите документацию_ на этом DVD.

.. _документацию: ../../ossim/
