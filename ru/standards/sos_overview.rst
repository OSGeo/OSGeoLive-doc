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

Сервис данных с датчиков (SOS)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

OGC-сервис данных с датчиков (SOS) — это стандарт, описывающий интерфейс к сервису, предоставляющему данные. Стандарт OGC SOS определяет стандартизированные интерфейсы и операции для доступа к результатам наблюдений с датчиков, что соответствует всем системам датчиков, включая удалённые, локальные, фиксированные и мобильные датчики. SOS предоставляет результаты запросов в стандартном формате наблюдений и измерений (O&M) для создания систем наблюдения и в соответствии со спецификацией SensorML для создания датчиков и систем датчиков. (http://www.opengeospatial.org/standards/sos)

.. image:: ../../images/standards/sos.jpg
  :scale: 55%
  :alt: SOS в контексте

Стандарт SOS определяет общую модель для датчиков и систем датчиков, которые не являются предметно-ориентированными и могут быть использованы без априорного знания предметно-ориентированных схем приложений.

Наблюдение — это событие, результат которого определяется значением свойства некоторой области интереса, полученного при помощи определённых процедур. Наблюдения определяются:

* *eventTime* — когда было получено измерение;
* *featureOfInterest* — что было измерено;
* *observedProperty* — какая характеристика была измерена;
* *procedure*  — каким образом было проведено измерение.

Обязательные операции SOS включают в себя:
* *GetObservation* — доступ к результатам наблюдений и измерений при помощи пространственно-временных запросов, которые могут быть отфильтрованы по явлению;
* *GetCapabilities* — метаданные сервиса SOS;
* *DescribeSensor* — информация о датчиках, процессах и платформах в SensorML.

Дополнительные операции включают: GetResult, GetFeatureOfInterest, GetFeatureOfInterestTime, DescribeFeatureofInterest, DescribeObservationType, DescribeResultModel, Register Sensor и InsertObservation.

.. Link below is a dead link, so we have commented out this paragraph
.. There are numerous excellent implementations of SOS. The OpenIOOS.org has thirteen organizations providing SOS service instances providing access to over 1400 oceans sensors (http://www.openioos.org/real_time_data/gm_sos.html). This operational demonstration “represents an effort to develop a Web Services Architecture for Ocean Observing”.

Также по теме
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`wcs_overview`
* :doc:`wfs_overview`
* Grid Coverage Service (сервис покрытий)
* Sensor Planning Service (сервис планирования съёмки)
* Coordinate Transformation Service (сервис трансформирования координат)

