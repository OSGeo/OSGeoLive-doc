:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org), Simon Jirka (s.jirka@52north.org)
:Reviewer:
:Version: osgeo-live10.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/sos


********************************************************************************
Начало работы с 52°North SOS
********************************************************************************

52°North SOS является веб-сервисом, который позволяет собирать пространственные
данные с сенсоров и давать к ним доступ (включая метаданные и данные
наблюдений).

Данное введение описывает:
* Как делать запросы 52°North SOS Capabilities для определения того, какие
  запросы поддерживаются
* Как запрашивать подробности о наблюдениях из SOS
* Как использовать простой инструмент для визуализации, поставляемый вместе с
  SOS, для исследований доступных данных
* Как использовать конечный REST API для клиентов разработчиков.

.. contents:: Contents

1) Чтобы запустить 52°North SOS, выберите :menuselection:`Geospatial --> Web
   Services --> 52North --> Start 52North SOS` или перейдите по `ссылке <http://localhost:8080/52nSOS/>`_.

2) Связанный браузер откроет страницу приглашения тестового клиентского приложения 52°North SOS (см. Рис. 1). Пожалуйста выберите версию спецификации, которую вы хотели бы использовать, например, 1.0.0:

.. image:: ../../images/screenshots/1024x768/52n_sos_start.png
  :scale: 100 %
  :alt: 52°North SOS client welcome page
  :align: center

**Рис. 1**: Стартовой страницы тестового клиентского приложения 52°North SOS

3) Тестовый клиент может быть использован для отправки(`запросов <http://localhost:8080/52nSOS/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=2.0.0>`_, (см. Рис._2)) к сервису, используя простую форму. В выпадающем списке можно выбрать один из предопределенных запросов, адаптированных к выбранной на предыдущем шаге версии сервиса.

.. image:: ../../images/screenshots/1024x768/52n_sos_get_capabilities.png
  :scale: 100 %
  :alt: Тестовый клиент 52°North SOS с запросом GetCapabilities
  :align: center

**Рис. 2**: Тестовый клиент 52°North SOS с запросом GetCapabilities.

4) Чтобы получить для каждой временной серии доступные данные наблюдений за временной интервал с 2017-02-28T23:45:00.000+00:00 по 2017-03-01T23:45:00.000+00:00, вставьте следующий запрос после выбора "SOS" --> version
   "2.0.0" --> binding "SOAP" --> operation "GetObservation" в `test client <http://localhost:8080/52nSOS/client>`_ в поле запроса:

.. code-block:: xml

  <?xml version="1.0" encoding="UTF-8"?>
  <env:Envelope
      xmlns:env="http://www.w3.org/2003/05/soap-envelope"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.w3.org/2003/05/soap-envelope http://www.w3.org/2003/05/soap-envelope/soap-envelope.xsd">
      <env:Body>
          <sos:GetObservation service="SOS" version="2.0.0"
              xmlns:sos="http://www.opengis.net/sos/2.0"
              xmlns:fes="http://www.opengis.net/fes/2.0"
              xmlns:gml="http://www.opengis.net/gml/3.2"
              xmlns:swe="http://www.opengis.net/swe/2.0"
              xmlns:xlink="http://www.w3.org/1999/xlink"
              xmlns:swes="http://www.opengis.net/swes/2.0"
              xsi:schemaLocation="http://www.opengis.net/sos/2.0 http://schemas.opengis.net/sos/2.0/sos.xsd">
              <sos:temporalFilter>
                  <fes:During>
                      <fes:ValueReference>phenomenonTime</fes:ValueReference>
                      <gml:TimePeriod gml:id="tp_1">
                          <gml:beginPosition>2017-02-28T23:45:00.000+00:00</gml:beginPosition>
                          <gml:endPosition>2017-03-01T23:45:00.000+00:00</gml:endPosition>
                      </gml:TimePeriod>
                  </fes:During>
              </sos:temporalFilter>
          </sos:GetObservation>
      </env:Body>
  </env:Envelope>

**Листинг 1:** Запрос по наблюдениям.


Что ещё можно попробовать
============================================================
* Примеры некоторых других запросов из выпадающего списка
* Изменять запросы для получения различной информации
* `SOS administrator <http://localhost:8080/52nSOS/admin/index>`_,
  используя имя пользователя "user" и пароль "user".
* `View Client <http://localhost:8080/52nSOS/static/client/jsClient/>`_ (см. Рис. 3).
.. image:: ../../images/screenshots/1024x768/52n_sos_viewclient.png
  :scale: 100 %
  :alt: 52°North SOS — JavaScript-клиент для временных серий данных.
  :align: center

**Рис. 3**: 52°North SOS — JavaScript-клиент для временных серий данных.

* Попробуйте `REST API <http://localhost:8080/52nSOS/api/v1/>`_ (see Listing 2):

.. code-block:: js

    [
        {
            id: "services",
            label: "Service Provider",
            description: "A service provider offers timeseries data."
        },
        {
            id: "stations",
            label: "Station",
            description: "A station is the place where measurement takes place."
        },
        {
            id: "timeseries",
            label: "Timeseries",
            description: "Represents a sequence of data values measured over time."
        },
        {
            id: "categories",
            label: "Category",
            description: "A category group available timeseries."
        },
        {
            id: "offerings",
            label: "Offering",
            description: "An organizing unit to filter resources."
        },
        {
            id: "features",
            label: "Feature",
            description: "An organizing unit to filter resources."
        },
        {
            id: "procedures",
            label: "Procedure",
            description: "An organizing unit to filter resources."
        },
        {
            id: "phenomena",
            label: "Phenomenon",
            description: "An organizing unit to filter resources."
        }
    ]
    
**Листинг 2:** Вывод конечной точки REST API.

Дополнительная информация
================================================================================

Подробную информацию о сервисе 52°North SOS и/или сообществе 52°North Sensor Web можно найти по следующим ссылкам:

* Обзор :doc:`52°North SOS <../overview/52nSOS_overview>`,
* Список рассылки 52°North Sensor Web: swe@52north.org,
* `Форум сообщества 52°North Sensor Web <http://sensorweb.forum.52north.org/>`_,
* `Клиент для 52°North SOS <http://sensorweb.demo.52north.org/SOSclient/>`_,
* `Официальная страница 52°North SOS <http://52north.org/communities/sensorweb/sos/>`_, or
* Веб-сайт сообщества `52°North Sensor Web <http://52north.org/communities/sensorweb/>`_.


Если сервис SOS недоступен, проверьте, запущен ли контейнер сервлетов Tomcat, используя следующие команды:

::

  user@osgeolive:~$ sudo service tomcat7 status
  * Tomcat servlet engine is running with pid 1234          <-- Tomcat is running
  [...]
  * Tomcat servlet engine is not running.                   <-- Tomcat not runing, so please start:
  user@osgeolive:~$ sudo service tomcat7 start
  * Starting Tomcat servlet engine tomcat7           [ OK ] <-- Tomcat is running, now

**Листинг 3:** Tomcat Status and Start (password for sudo: user).
