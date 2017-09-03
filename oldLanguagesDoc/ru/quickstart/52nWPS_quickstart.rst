:Author: Benjamin Pross, Kristof Lange
:Version: osgeo-live8.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Начало работы с 52°North WPS 
********************************************************************************

52°North WPS представляет собой фреймворк для обработки гео(данных) через
Интернет. Сервис реализует стандарт OGC Web Processing Service 1.0.

Данное введение описывает, как обрабатывать данные и выводить результат
посредством другого веб-сервиса, используя операции WPS.

.. contents:: Contents

Запуск
================================================================================

* Чтобы запустить 52°North WPS с Live DVD, выберите |osgeolive-appmenupath-52nWPS| или перейдите по `прямой ссылке <http://localhost:8080/52nWPS/>`_. Если сервис недоступен, попробуйте запустить контейнер сервлетов Tomcat, следуя шагам, описанным в конце страницы :doc:`Начало работы с SOS <../quickstart/52nSOS_quickstart>`.

* Появится стартовая страница 52°North WPS.

.. image:: /images/projects/52nWPS/52nWPS_welcome_page.png
  :scale: 70 %
  :alt: снимок экрана

Получение информации о сервисе
==================================================

* Проверьте возможности 52°North WPS следующим запросом 

  http://localhost:8080/52nWPS/WebProcessingService?Request=GetCapabilities&Service=WPS


Обработка данных
==================================================
		
* Щёлкните по ссылке, чтобы открыть тестовый клиент 52nWPS. 

  .. image:: /images/projects/52nWPS/52nWPS_welcome_page_2.png
    :scale: 70 %
    :alt: screenshot

* Убедитесь, что запущен :doc:`GeoServer <../overview/geoserver_overview>`,
  демонстрация использует данные от локально установленного GeoServer. Чтобы
  сделать это, попытайтесь открыть страницу
  http://localhost:8082/geoserver/web. Если страница не будет найдена, выберите
  |osgeolive-appmenupath-geoserver| в меню. GeoServer должен запуститься через
  несколько мгновений.
  
* Выберите пример запроса "SimpleBuffer_out_wfs.xml" из выпадающего списка:
  
  .. image:: /images/projects/52nWPS/52nWPS_test_client.png
    :scale: 70 %
    :alt: screenshot

* Нажмите кнопку *Send*, и 52°North WPS отправит запрос, который создаст XML-представление буферной зоны вокруг основных дорог Тасмании с шириной 0.05 градусов, и сохранит результат в GeoServer.

  .. image:: /images/projects/52nWPS/52nWPS_output_stored_in_wfs.png
    :scale: 70 %
    :alt: screenshot

* Скопируйте ResourceID из ответа. Это имя слоя GeoServer. Добавьте ID в следующий запрос: http://localhost:8082/geoserver/wms?service=WMS&version=1.1.0&request=GetMap&styles=&bbox=145.14757902405984,-43.47330297262748,148.32274986232298,-40.80286290459129&width=512&height=430&srs=EPSG:4326&format=application/openlayers&layers=Add-ResourceID-here
  Вы должны получить такой результат:

  .. image:: /images/projects/52nWPS/52nWPS_result_in_geoserver.png
    :scale: 70 %
    :alt: screenshot

Что можно попробовать
==================================================
* Попробуйте примеры других запросов, выбрав их из выпадающего списка в тестовом
  клиенте WPS.

* Вы можете также установить WPS-плагин для :doc:`QGIS <../overview/qgis_overview>` и попробовать его в действии с 52°North WPS.

Что далее?
==================================================
* Создайте собственные процессы и исполняйте их на различных клиентах.

* Настройте WPS на исполнение процессов GRASS 7.

* Настройте WPS на исполнение скриптов :doc:`R <../overview/R_overview>` в качестве процессов.


Дополнительные вопросы можно задавать в списке рассылки 52°North WPS:

  geoprocessingservices@52north.org

