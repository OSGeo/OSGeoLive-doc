:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org), Daniel Nüst (d.nuest@52north.org)
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: логотип проекта
  :align: right
  :target: http://52north.org/sos


52°North SOS
================================================================================

Веб-сервис
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Сервис сенсорного наблюдения (Sensor Observation Service (SOS)) <../standards/sos_overview>` 
компании 52°North :doc: поддерживает чтение оперативных и архивных данных
с локальных и удаленных сенсоров. Сенсором может выступать камера на спутнике 
или измеритель уровня воды в реке.

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_v1.0.0_GetCapabilities.png
  :scale: 60 %
  :alt: снимок экрана тестового клиента 52°North SOS версии 1.0.0
  :align: right

Особенности
--------------------------------------------------------------------------------

* Реализует стандарны SOS 1.0.0 и 2.0.0.

* Клиентское приложение для браузера предоставляет тестовые XML-запросы для всех поддерживаемых операций.

OGC SOS 1.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Базовые операции SOS**:

* GetCapabilities для запроса информации о сервисе.
* GetObservation для запроса чистых данных с сенсора в виде Наблюдений и Измерений
(Observations & Measurements (O&M).
* DescribeSensor для запроса метаданных о самом сенсоре в виде документа на языке описания сенсорной модели (Sensor Model Language (SensorML).

**Транзакционные операции SOS**:

* RegisterSensor для подключения новых сенсоров.
* InsertObservation для добавления новых наблюдений для зарегистрированных сенсоров.

**Дополнительные операции SOS**:

* GetResult для более эффективного периодического получения данных сенсора.
* GetObservationById для получения определенных отдельных наблюдений.
* GetFeatureOfInterest для получения представлений целевого объекта наблюдений
в формате GML.
* GetFeatureOfInterestTime для определения временной доступности данных сенсора.

OGC SOS 2.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* GetCapabilities для запроса информации о сервисе.
* GetObservation для запроса чистых данных с сенсора в виде Наблюдений и Измерений
(Observations & Measurements (O&M).
* DescribeSensor для запроса метаданных о самом сенсоре в виде документа на языке 
описания сенсорной модели (Sensor Model Language (SensorML).
* GetFeatureOfInterest для получения представлений целевого объекта наблюдений в формате GML.

В рамках этих запросов также возможны следующие операции фильтрации:

* Пространственный фильтр: BBOX, использует ограничивающий прямоугольник.
* Временной фильтр: During, использует промежуток времени.
* Временной фильтр: TEquals, использует момент времени.

Связанные стандарты
--------------------------------------------------------------------------------

* :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>`
* :doc:`Geography Markup Language (GML) <../standards/gml_overview>`
* :doc:`Sensor Model Language (SensorML) <../standards/sensorml_overview>`

Дополнительная информация
--------------------------------------------------------------------------------

**Веб-сайт:** http://52north.org/communities/sensorweb/sos

**Лицензия:** `GPL версия 2 <http://www.gnu.org/licenses/gpl-2.0.html>`_

**Версия ПО:** SOS 3.5.0

**Поддерживаемые платформы:** Windows, Linux, Mac

**Интерфейсы API:** Java

**Коммерческая поддержка:** http://52north.org/

**Поддержка сообществом:** http://sensorweb.forum.52north.org/

**Веб-сайт сообщества:** http://52north.org/communities/sensorweb/

Начало работы 
--------------------------------------------------------------------------------

* :doc:`Введение<../quickstart/52nSOS_quickstart>`

