:Author: Jan Drewnak (j.drewnak@52north.org)
:Reviewer: Sergio Baños Calvo
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/security

********************************************************************************
Начало работы с 52°North WSS 
********************************************************************************

52°North WSS — это веб-сервис, который позволяет задавать и ограничивать доступ
к данным, поставляемым веб-сервисами OGC, выступая в роли прокси.


Этот документ описывает, как:
* начать управлять интерфейсом WSS;
* защитить локальный экземпляр WMS;
* регистрировать новых пользователей;
* назначать разрешения существующим пользователям;
* загружать защищенные сервисы.

В дистрибутиве OSGeo-Live сервис 52°North WSS уже настроен и защищает один
экземпляр сервисов WMS, WFS, WPS, и SOS.

.. contents:: Contents

Введение
================================================================================
			  
Чтобы получить список защищаемых сервисов и тестовый доступ к WMS:

#. Выберите :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WSS`, чтобы запустить 52°North WSS, или перейдите по `прямой ссылке <http://localhost:8080/wss/site/manage.html>`_.
  
#. В окне браузера откроется интерфейс управления 52°North WSS. Нажмите *Manage WSS* (**1**), чтобы получить список сервисов, к которым можно подключиться через WSS.

   .. image:: /images/screenshots/52nWSS/52nWSS_start_manager.png
	  :scale: 70 %
     
.. tip::
   Если это необходимо, войдите как *user/user*.


WSS-менеджер
==================================================

Для каждого защищаемого сервиса (называются *Enforcement Point*) в таблице
указана базовая ссылка к сервису с методом аутентификации (*httpauth*, *saml*,
*WSS*, ...).

Таблица имеет следующие колонки:

   .. image:: /images/screenshots/52nWSS/52nWSS_manager_interface.png
     :scale: 70 %


* Усиленный идентификатор точек

* Защищенный URL на базе OGC-сервиса

* Тип OGC-сервиса

* Доступные методы аутентификации

* Доступные действия 


Безопасность WMS
==================================================

В этом разделе мы попытаемся защитить локальный экземпляр WMS


Создание точки усиления
--------------------------------------------------

#. Запустите :doc:`GeoServer <../overview/geoserver_overview>` WMS, включённый в состав OSGeo-Live DVD, выбрав |osgeolive-appmenupath-geoserver|. GeoServer потребует минуту для старта и затем он откроет страницу браузера.

#. Нажмите ссылку `Create` (**1**) в главном окне менеджера

   .. image:: /images/screenshots/52nWSS/52nWSS_create_enforcement_point.png
     :scale: 70 %

#. Заполните свойства нового защищенного сервера

   * `ID` : geoserver_localhost (**1**),
   * `Protected Service URL` : http://localhost:8082/geoserver/ows? (**2**)
   * `Type` : WMS (**3**)
   * `Autenthication Scheme` : HTTP Basic (**4**)

   .. image:: /images/screenshots/52nWSS/52nWSS_create_new_enforcement_point_properties.png
     :scale: 70 %

#. Нажмите кнопку :guilabel:`Create` для создания новой `защищенной точки`. В главном окне менеджера появится новая строка.

   .. image:: /images/screenshots/52nWSS/52nWSS_new_enforcement_point_added.png
     :scale: 70 %



Создание нового пользователя
--------------------------------------------------------------------------------     
     
#. Запустите терминал, выбрав в меню :menuselection:`Applications --> Accessories --> Terminal Emulator` 

#. Отредактируйте файл :file:`users.xml` в директории :file:`/var/lib/tomcat6/webapps/wss/WEB-INF/classes/`::

    $ cd /var/lib/tomcat6/webapps/wss/WEB-INF/classes/
    $ sudo medit users.xml

#. Добавьте нового пользователя с именем `livedvd` путём добавления следующего текста как новой записи в графе <UserRepository> (**1**)::

    <User  username="livedvd" password="livedvd" realname="LiveDVD">
      <Role name="livedvd"/>
    </User>

   .. image:: /images/screenshots/52nWSS/52nWSS_users_xml.png
     :scale: 70 %

#. Сохраните изменения и закройте текстовый редактор

.. note::
  Файл users.xml доступен только для пользователей с root-доступом, которые могут получить его через команду "sudo". Используйте пароль "user".

Отрегулируйте новые пользовательские политики
--------------------------------------------------------------------------------

Теперь мы зададим следующие политики доступа в защищенному WMS:

* Пользователь `livedvd` -> Полный доступ ко всем слоям из WMS 
* Пользователь `bob` и `guest` -> Доступ только к слою `tasmania`
* Другие пользователи -> Не авторизованы в WMS

#. Вернёмся в окно терминала

#. Поправим файл :file:`permissions.xml` в директории :file:`/var/lib/tomcat6/webapps/wss/WEB-INF/classes/`::

    $ sudo medit permissions.xml

#. Добавим новое разрешение с именем `Geoserver localhost` путём добавления
   следующего текста в качестве новой записи в графе <SimplePermissions> level
   (**1**)::

    <PermissionSet name="Geoserver localhost">
      <ResourceDomain value="http://localhost:8080/wss/service/geoserver_localhost/*"/>
      <ActionDomain value="http://localhost:8080/wss/service/geoserver_localhost/*"/>
      <SubjectDomain value="urn:n52:security:subject:role"/>
      <Permission name="livedvd_all_geoserver">
        <Resource value="layers/*"/>
        <!-- Any layers -->
        <Action value="operations/*"/>
        <!-- Any operations -->
        <Subject value="livedvd"/>
      </Permission>
      <Permission name="bobAndGuest_most_GetMap_GetCaps_geoserver">
        <Resource value="layers/tasmania"/>
        <Action value="operations/GetCapabilities"/>
        <Action value="operations/GetMap"/>
        <Subject value="bob"/>
        <Subject value="guest"/>
      </Permission>
    </PermissionSet>

   .. image:: /images/screenshots/52nWSS/52nWSS_permissions_xml.png
     :scale: 70 %

#. Сохраните изменения и закройте текстовый редакторю


Перезапуск Tomcat
--------------------------------------------------------------------------------

Чтобы изменения, касаемые пользователей и разрешений, вступили в силу,
необходимо перезапустить сервис Tomcat:

#. Вернитесь в окно терминала.

#. Перезапустите Tomcat service::

    $ sudo service tomcat6 restart



Загрузка защищенного OGC-сервиса
================================================================================

Чтобы запросить "capabilities" защищенного WMS-сервиса Geoserver, выполните следующие шаги:

#. Скопируйте http://localhost:8080/wss/service/geoserver_localhost/httpauth?SERVICE=WMS&REQUEST=GetCapabilities в адресную строку браузера

#. Войдите как `livedvd`/`livedvd`, чтобы получить доступ к полным разрешениям или войдите как `bob`/`bob`, чтобы получить доступ к сервису с ограниченными правами (будет доступен только слой `tasmania`)

   .. image:: /images/screenshots/52nWSS/52nWSS_authorization_required.png
     :scale: 70 %

.. note::
  Если вы захотите запросить "capabilities" под аккаунтом другого пользователя, вы должны будете перезапустить браузер, чтобы сделать недействительными полномочия в кэше текущего пользователя.

Чтобы продолжить тестирование защищенных сервисов, подключите http://localhost:8080/wss/service/geoserver_localhost/httpauth как WMS в любой клиент, который поддерживает простую аутентификацию HTTP (HTTP Basic Authentication). 
Следуйте шагам из этого документа: :doc:`QGis <../overview/qgis_overview>`.

#. Выберите из меню :menuselection:`Geospatial --> Desktop GIS --> Quantum GIS` 

#. Приложение будет запускаться несколько секунд (во время запуска показывается заставка)

#. Нажмите кнопку :guilabel:`Add WMS Layer` на главной панели инструментом (**1**)

   .. image:: /images/screenshots/52nWSS/52nWSS_qgis_add_wms_layer.png
     :scale: 70 %

#. Нижмите кнопку :guilabel:`New` (**1**) для того чтобы создать новое подключение к WMS

   .. image:: /images/screenshots/52nWSS/52nWSS_qgis_new_wms_connection.png
     :scale: 70 %

#. Задайте параметры подключения и нажмите кнопку :guilabel:`Ok` (**5**) для создания подключения

   * `Name` : geoserver (**1**),
   * `URL` : http://localhost:8080/wss/service/geoserver_localhost/httpauth (**2**)
   * `User name` : livedvd (**3**)
   * `Password` : livedvd (**4**)

   .. image:: /images/screenshots/52nWSS/52nWSS_livedvd_wms_connection_properties.png
     :scale: 70 %

#. Нажмите кнопку :guilabel:`Connect` (**1**) для загрузки WMS-слоёв. Полный список слоёв будет доступен для пользователя `livedvd`.

   .. image:: /images/screenshots/52nWSS/52nWSS_qgis_livedvd_wms_layers.png
     :scale: 70 %

#. Нажмите кнопку :guilabel:`Edit` (**1**) для редактирования свойств соединения

   .. image:: /images/screenshots/52nWSS/52nWSS_qgis_edit_wms_connection.png
     :scale: 70 %

#. Снова задайте свойства соединения и нажмите кнопку :guilabel:`Ok` (**3**) для редактирования соединения

   * `User name` : bob (**1**)
   * `Password` : bob (**2**)

   .. image:: /images/screenshots/52nWSS/52nWSS_bob_wms_connection_properties.png
     :scale: 70 %

#. Нажмите кнопку :guilabel:`Connect` (**1**) для перезагрузки WMS-слоёв. Только слой `tasmania` будет доступен для пользователя `bob`

   .. image:: /images/screenshots/52nWSS/52nWSS_qgis_bob_wms_layers.png
     :scale: 70 %



Что можно попробовать
================================================================================

Здесь перечислены некоторые дополнительные действия, которые вы можете
попробовать сделать

#. Защитить WFS из локального экземпляра Geoserver
#. Добавить больше пользователей к защищённому OGC-сервису
#. Изменять политики доступа к любому другому защищённому сервису для пользователя `livedvd`.



Что далее?
================================================================================

Прочитайте `Руководство пользователя <http://52north.org/communities/security/general/user_guide_intro.html>`_ 52°North.
