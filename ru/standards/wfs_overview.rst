.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: ../../images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: Логотип OGC
  :align: right

.. image:: ../../images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: Логотип OGC
  :align: right

.. Writing Tip: Name of application

WFS (Web Feature Service)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Стандарт `WFS <http://www.opengeospatial.org/standards/wfs>`_ — веб-сервис пространственных
объектов, определяющий интерфейсы и операции, которые позволяют запрашивать и редактировать
векторные пространственные данные, такие, как дороги или береговые линии.

.. image:: ../../images/standards/wfs.jpg
  :scale: 55%
  :alt: Место WFS среди стандартов OGC

Данный стандарт описывает следующие операции, доступные клиентам (в скобках указано
название операции):

* Определять доступные наборы объектов (GetCapabilities)
* Определять существующие поля объектов (DescribeFeatureType)
* Фильтровать набор объектов по указанному ограничению (GetFeature)
* Добавлять, редактировать или удалять объекты (Transaction)

Входящие и исходящие данные веб-сервиса представлены в формате GML. Некоторые из
сервисов могут поддерживать и другие форматы данных, например GeoRSS или shape-файлы.

Для получения доступа к слоям векторной карты сторонней организации, представленных
в виде веб-сервисов в сети Интернет, пользователи используют веб-интерфейс или настольные
ГИС-приложения. Отличным примером предоставления открытого доступа к большим объёмам
пространственных данных на государственном портале является платформа веб-сервисов 
пространственных объектов геологической службы США, предлагаемая в поддержку развития
национальной инфраструктуры пространственных данных (`NSDI <http://frameworkwfs.usgs.gov/>`_). 
Выбранные слои карт платформы могут быть использованы и как веб-сервисы, и через
веб-интерфейс сайта геологической службы.

См. также
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`wms_overview`
* :doc:`wcs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
* :doc:`gml_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* Symbology Encoding
* :doc:`fe_overview`
