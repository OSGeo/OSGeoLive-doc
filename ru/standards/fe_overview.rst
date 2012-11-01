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
  :alt: OGC logo
  :align: right

.. image:: ../../images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Filter Encoding (FE)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

Стандарт OGC® Filter Encoding (FE) определяет кодировку XML для фильтров выражений
для пространственных запросов. Это делается для того, чтобы выбрать подмножество
объектов, основанных на конкретных атрибутах.
(http://www.opengeospatial.org/standards/filter)

.. image:: ../../images/standards/fe.jpg
  :scale: 55%
  :alt: FE in Context


Подмножество объектов может быть определено, например, для их отрисовки в определённых
цветах или конвертации в определённый пользователем формат.               

Нейтральное кодирование XML-фильтра способствует лёгкому разбору и валидации сервером,
реализующим стандарт OGC WFS, до того, как выражение фильтра преобразуется в целевой язык
хранилища данных, к которому сделан запрос. Этот стандарт используется в ряде веб-сервисов
OGC, включая стандарты Web Feature Service, Catalogue Service и Styled Layer Descriptor (SLD).

Ограничения фильтра могут быть определены через значения пространственных, временных
и скалярных свойств. Пример пространственного фильтра: "Найти все свойства в Omstead County,
принадлежащие Peter Vretanos". Пример временного фильтра: "Найти все плотины в штате Массачусетс, 
которые были построены до 1900 года". Пример скалярного фильтра: "Найти все датчики температуры в
Париже, показывающие температуру между 20°С и 24°С."


См. также
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`sld_overview`
* :doc:`csw_overview`
* :doc:`wfs_overview`
* :doc:`wms_overview`

