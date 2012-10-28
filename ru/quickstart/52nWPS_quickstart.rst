:Author: Kristof Lange
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Начало работы с 52°North WPS 
********************************************************************************

Запуск
================================================================================

* Чтобы запустить 52°North WPS с Live DVD, выберите :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WPS` или перейдите по `ссылке <http://localhost:8080/52nWPS/>`_. Если сервис недоступен, попробуйте запустить контейнер сервлетов Tomcat, следуя шагам, описанным в конце страницы :doc:`Начало работы с SOS <../quickstart/52nSOS_quickstart>`.

* Появится стартовая страница 52°North WPS.

.. image:: ../../images/screenshots/800x600/52nWPS_welcome_page.png
  :scale: 100 %
  :alt: снимок экрана
  :align: center

* Щёлкните по ссылке, чтобы открыть тестовый клиент 52nWPS. 
* Убедитесь, что запущен :doc:`GeoServer <../overview/geoserver_overview>`, демонстрация использует данные от локально установленного GeoServer.


.. image:: ../../images/screenshots/1024x768/52n_test_client.png
  :scale: 100 %
  :alt: снимок экрана
  :align: center
  
  
* Нажмите кнопку *Send*, 52°North WPS отправит запрос который создаст XML-представление буферной зоны вокруг основных дорог Тасмании с шириной 0.05 градусов.

.. image:: ../../images/screenshots/1024x768/52n_wps_response.png
  :scale: 100 %
  :alt: снимок экрана
  :align: center
  

* Получите "capabilities" сервиса 52°North WPS с помощью запроса:

  http://localhost:8080/52nWPS/WebProcessingService?Request=GetCapabilities&Service=WPS

	
* Дополнительные вопросы можно задавать в списке рассылки 52°North WPS:

  geoprocessingservices@52north.org

