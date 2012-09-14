:Author: Bastian Schaeffer, Kristof Lange, Benjamin Pross
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: логотип проекта
  :align: right
  :target: http://52north.org/wps


52°North WPS
================================================================================

Веб-сервис
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The 52°North :doc:`Web Processing Service (WPS) <../standards/wps_overview>` делает доступным через веб алгоритмы обработки пространственной информации, предоставляемые Sextante, ArcGIS Server, R, GRASS 7 или пользовательские функции.
Алгоритм может быть простым, как, например, подсчёт разницы заболеваемости гриппом для разных сезонов, 
так и сложным, как, например, глобальная модель изменения климата.

.. image:: ../../images/screenshots/1024x768/52n_test_client.png
  :scale: 50 %
  :alt: снимок экрана
  :align: right

Базовые функции
--------------------------------------------------------------------------------

Базовые ГИС-функции:

* SimpleBufferAlgorithm
* DouglasPeuckerAlgorithm
* IntersectionAlgorithm
* AddRasterValuesAlgorithm
* CoordinateTransformAlgorithm

Алгоритмическая поддержка доступна через:

* Sextante
* ArcGIS Server
* R
* GRASS 7

Поддерживаемые форматы исходных и выходных данных:

* Векторные данные: GML2, GML3, SHP, KML, WKT (Well-known Text), DGN
* Растровые данные: GeoTIFF, ASCII Grid, NetCDF, JPEG, PNG, HDF-EOS, ERDAS HFA

Браузерное клиентское приложение

Поддерживаемые стандарты
--------------------------------------------------------------------------------

* OGC Web Processing Service (WPS)
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures

Дополнительная информация
--------------------------------------------------------------------------------

**Веб-сайт:** http://52north.org/wps

**Лицензия:** `GPL <http://www.gnu.org/licenses/gpl.html>`_

**Версия ПО:** WPS 3.0

**Поддерживаемые платформы:** Windows, Linux, Mac

**Коммерческая поддержка:** http://www.52north.org


Начало работы
--------------------------------------------------------------------------------

* :doc:`Введение <../quickstart/52nWPS_quickstart>`


