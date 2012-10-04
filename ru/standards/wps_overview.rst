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

WPS (Web Processing Service )
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Стандарт `WPS <http://www.opengeospatial.org/standards/wps>`_ (веб-сервис геопроцессинга) 
описывает правила для входящих и исходящих данных (запросов и ответов на них) для
сервисов геопроцессинга (геообработки), таких, как пересечение полигонов и др.

.. image:: ../../images/standards/wps.jpg
  :scale: 55%
  :alt: Место WPS среди стандартов OGC

WPS определяет веб-интерфейсы доступа к сервису геопроцессинга. Геопроцессинг может
включать любой алгоритм, расчёт или модель, оперирующие векторными или растровыми
данными с пространственной привязкой. WPS может описывать как простые расчёты, такие,
как вычитание одного набора пространственных данных из другого (например разница между
областями распространения гриппа по сезонам года), так и более сложные, такие, как глобальная
модель изменения климата.

WPS обычно используется для:

* Уменьшения сложности при обработке данных, предоставляя алгоритмы plug & play 
* Объединения процессов геообработки
* Использования единожды установленного сервиса геообработки во многих местах
* Упрощения технического обслуживания. Процессы / модели поддерживаются в одном месте их создателями.
* Использования высокой вычислительной мощности выделенного центрального сервера
* Простого совместного доступа к сложным процессам, например, к модели изменения климата.

См. также:
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

Другие стандарты сервисов OGC: 

* Web Coverage Processing Service
* Sensor Planning Service
* :doc:`wcs_overview`
* :doc:`wms_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
