:Author: OSGeo-Live 
:Author: Stephan Meissl, Stephan Krause
:Reviewer: Angelos Tzotsos
:Version: osgeo-live7.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-eoxserver-2.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

================================================================================
Введение в EOxServer
================================================================================

Введение
----------

EOxServer — это сервер для работы со снимками Earth Observation (EO) с помощью
открытых стандартов. Он создан на основе набора свободного ПО, который включает Python, :doc:`MapServer <../overview/mapserver_overview>`, Django/GeoDjango, :doc:`GDAL 
<../overview/gdal_overview>`, PROJ.4 и базы данных :doc:`SpatiaLite <../overview/spatialite_overview>` или :doc:`PostGIS <../overview/postgis_overview>`.

Данное «введение» описывает:

* Как просматривать данные EO, фильтровать, делать выборки и загружать через
  веб-клиент EOxServer.
* Как регистрировать данные EO через паенль администрирования EOxServer.

.. contents:: Contents

Посмотрите также :doc:`Обзор EOxServer <../overview/eoxserver_overview>`, the 
`локальную документацию EOxServer <../../eoxserver-docs/EOxServer_documentation.pdf>`_ или `онлайн документацию <http://eoxserver.org/doc/>`_ для более подробной информации.

.. image:: /images/screenshots/1024x768/eoxserver_documentation.png
  :scale: 50 %
  :alt: EOxServer documentation

.. contents:: Contents

			  
Демонстрационный пример
---------------------------

.. Commented since Tomcat isn't started automatically anymore (#1032).
    In case you use OSGeoLive with 1GB RAM or less it is recommended to stop default Tomcat service before launching EOxServer
    :: 

      sudo service tomcat6 stop


Чтобы установить EOxServer, запустите следующую команду::

    cd /usr/local/share/gisvm/bin/
    sudo ./install_eoxserver.sh

Логин `user` , пароль `user`.

Скрипт не только устанавливает EOxServer, но и создаёт 
`демонстрационные примеры  <http://localhost/eoxserver/>`_, закачивает
документацию, добавляет ярлыки на рабочий стол и т.д.


Демонстрационные примеры
------------------------

Щёлкните по значку `EOxServer` из раздела `Web Services`. Запустится браузер,
показывающий демонстрационную страницу http://localhost/eoxserver/ с теми же
данными, которые доступны `онлайн <https://eoxserver.org/demo_stable/>`_.

.. image:: /images/screenshots/1024x768/eoxserver_start.png
  :scale: 50 %
  :alt: EOxServer demonstration start


Веб-клиент
~~~~~~~~~~~~~~~

Ссылка **Web Client** позволит вам увидеть список доступных серий данных (`Dataset Series`) 
и мозаик (`Stitched Mosaics`). В примере есть один `Dataset Series`, который называется
"MER FRS 1P RGB reduced" и содержит три сцены ENVISAT MERIS. На сайте 
`онлайн-документации <http://eoxserver.org/doc/en/users/demonstration.html>`_ есть информация  
о всех доступных данных.

.. image:: /images/screenshots/1024x768/eoxserver_webclient1.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client dataset series selection

Выбор элемента списка предоставляет обзорную карту, показывающую границы
доступных наборов данных (`Datasets`).

.. image:: /images/screenshots/1024x768/eoxserver_webclient2.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client outlines

Использование стандартных контролов OpenLayers позволяет включить также
предпросмотр имеющихся данных (preview). Нажмите на **(+** в верхнем правом углу
окна, чтобы получить список для выбора слоя; чтобы изменить масштаб, используйте
или колесо мыши, или удердивайте нажатой кнопку Shift и кликните левой кнопкой
мыши, рисуя регион на карте.

.. image:: /images/screenshots/1024x768/eoxserver_screenshot.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client outlines and previews

Слайдером (**Date slider**) наборы данных `Datasets` могут быть
ограничены по времени с помощью интересующих вас интервалов.

.. image:: /images/screenshots/1024x768/eoxserver_webclient3.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client date change

Кнопка загрузки (**Download**) показывает список доступных для загрузки наборов данных .
"Доступные для загрузки" наборы означают обозначенные либо ограничивающим прямоугольником, либо
текущим охватом карты (если первый не задан), а также соответствующие заданному временному интервалу.
Вы можете выбрать наборы данных для загрузки, определив также размеры, проекции, формат данных
и диапазон каналов.

.. image:: /images/screenshots/1024x768/eoxserver_webclient4.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client download selection

Пункт **Start Download** вызывает начало реальной загрузки данных, в том числе, 
нескольких файлов, если было выбрано несколько наборов данных.  

.. image:: /images/screenshots/1024x768/eoxserver_webclient5.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client download

Служба управления (Admin Client)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ссылка **Admin Client**  приводит на страницу входа в службу управления (`Admin Client`). 
В нашем случае пароль для пользователя `admin` — `admin`.

.. image:: /images/screenshots/1024x768/eoxserver_adminclient1.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client login

Служба управления (`Admin Client`), стандартная для Django функция администрирования,
позволяет настраивать данные. Больше информации можно найти в
`онлайн-документации <http://eoxserver.org/doc/en/users/operators.html>`__.

.. image:: /images/screenshots/1024x768/eoxserver_adminclient2.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client start

Для примера можно просмотреть и дополнить метаданные `EO Metadata` в сконфигурированных
наборах данных.

.. image:: /images/screenshots/1024x768/eoxserver_adminclient3.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client 

Просмотр сообщений (Log Viewer)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ссылка **Log Viewer** предоставляет лёгкий способ для просмотра последних сообщений.

.. image:: /images/screenshots/1024x768/eoxserver_logviewer.png
  :scale: 50 %
  :alt: EOxServer demonstration log viewer

Что дальше?
-----------

Всё написанное выше — очень простая демонстрация, вы можете сделать гораздо больше 
с помощью EOxServer. Веб-сайт проекта содержит множество ресурсов для начала работы.
Ниже перечислены некоторые из них:

*  `EOxServer Operators' Guide <http://eoxserver.org/doc/en/users/operators.html>`_.
* `Пользовательская документация EOxServer <http://eoxserver.org/doc/en/users/index.html>`_, в том числе `EOxServer Basics <http://eoxserver.org/doc/en/users/basics.html>`_.
* Готовы использовать EOxServer? Тогда присоединяйтесь к сообществу с помощью `списка рассылки <http://eoxserver.org/doc/en/users/mailing_lists.html>`_, чтобы обмениваться идеями, обсуждать улучшения ПО и для того, чтобы задавать интересующие вас вопросы.
