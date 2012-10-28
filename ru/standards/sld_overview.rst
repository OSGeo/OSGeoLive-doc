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

Style Layer Descriptor (SLD)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Стандарт OGC® Styled Layer Descriptor (SLD) предназначен для описания символики пространственных данных. Обычно применяется в сервисах Web Map Service (WMS) или Web Feature Service (WFS) (http://www.opengeospatial.org/standards/sld).

.. image:: ../../images/standards/sld.jpg
  :scale: 55%
  :alt: SLD in Context

Наличие продуманной системы управления графическим представлением данных - одно из основных требований большинства картографических приложений. Такая система предполагает существование языка описания символики, который был бы понятен как клиентским, так и серверным приложениям. 

В настоящее время стандарт OGC Web Map Service (WMS) позволяет настраивать внешний вид данных. Однако эта возможность сводится к простому указанию имён созданных заранее и доступных сервису стилей для каждого набора данных. В рамках стандарта WMS не рассматривается сам язык описания символики, то есть в принципе отсутствует возможность описания собственных правил отрисовки. 

Возможность создания подобных правил требует наличия отдельного языка описания символики. В качестве такого языка выступает стандарт OGC Symbology  Encoding (SE) (http://www.opengeospatial.org/standards/symbol). SLD профиль WMS описывает возможности, которые позволяют использовать SE для слоёв WMS. В SLD также описана операция стандартного доступа к легенде символов, которые могут храниться на удалённом сервере для совместного использования несколькими приложениями.

Отметим, что помимо использования SE в качестве языка описания символики WMS, он также может быть использован и для настройки внешнего вида данных, опубликованных в соответствии со стандартами WFS или OGC Web Coverage Service (WCS).

См. также
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`fe_overview`
* :doc:`kml_overview`
* Symbology Encoding
* :doc:`gml_overview`
* :doc:`wms_overview`
* :doc:`wfs_overview`

