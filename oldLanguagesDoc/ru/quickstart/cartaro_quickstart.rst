.. Writing Tip:
  This Quick Start should describe how to run a simple example, which
    covers one of the application's primary functions.
  The Quick Start should be able to be executed in around 5 minutes.
  The Quick Start may optionally include a few more sections
    which describes how to run extra functions.
  This document should describe every detailed step to get the application
    to work, including every screen shot involved in the sequence.
  Finish off with "Things to Try" and "What Next?" sections.
  Assume the user has very little domain expertise, so spell everything out.

:Author: Friedjoff Trautwein (http://www.geops.de)
:Author: Augustus Kling (http://www.geops.de)
:Author: Patric Hafner (http://www.geops.de)
:Version: osgeo-live7.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-cartaro.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://cartaro.org

********************************************************************************
Начало работы с Cartaro 
********************************************************************************

Cartaro — геопространственная CMS (система управления контентом) для управления (гео)контентом и его публикации.

Этот документ научит вас выполнять следующие задачи:
#. создание нового типа геоконтента;
#. настройка Cartaro для отображения нового типа контента;
#. добавление нового геоконтента.

Все задачи будут выполнены на примере туристического веб-портала с целью картирования озёр.

.. contents:: Contents
  
Запуск Cartaro
================================================================================

.. Writing Tip:
  Describe steps to start the application
  This should include a graphic of the pull-down list, with a green circle
  around the application menu option.
  #. A hash numbers instructions. There should be only one instruction per
     hash.

#. Запустите OSGeo-Live DVD
#. Выберите :menuselection:`Geospatial --> Browser Clients --> Start Cartaro` to start Cartaro
#. Должна автоматически открыться веб-страница Cartaro (http://localhost/cartaro).

.. Writing Tip:
  For images, use a scale of 50% from a 1024x768 display (preferred) or
  70% from a 800x600 display.
  Images should be stored here:
    https://github.com/OSGeo/OSGeoLive-doc/tree/master/images/projects/1024x768/


Главная страница
================================================================================

Когда Cartaro откроется, вы увидите главную страницу (см. рис. ниже). Она
содержит горбальную карту со столичными городами.

.. image:: /images/projects/cartaro/cartaro_frontpage.png
    :scale: 60 %
    :align: center


* Далее необходимо залогиниться (см. **Log in** в верхнем правом углу) для
  доступа к административному интерфейсу. Используйте *admin* как имя
  пользователя и *geoserver* в качестве пароля. После этого вы сможете увидеть
  административную панель меню сверху страницы.

.. image:: /images/projects/cartaro/cartaro_userpage.png
    :scale: 60 %
    :align: center
  
.. tip:: Вы можете вернуться на главную страницу в любое время, кликнув на
          значке с домиком в верхнем левом углу.


Создание нового типа контента
================================================================================

Типы содержимого и поля определяют структуру конкретного контента. Например, тип
контента *столица* содержит поля "имя " и "местоположение" , чтобы генерировать
элементы контента для соответствующих столиц , отображаемых на карте .

Чтобы создать новый тип контента, выполните нижеследующие шаги:

* Выберите :menuselection:`Structure --> Content types` на панели меню и кликните на **Add content type**.


.. image:: /images/projects/cartaro/cartaro_addcontenttype.png
    :scale: 80 %
    :align: center

* Наберите имя нового типа контента и опишите его, если пожелаете.

.. image:: /images/projects/cartaro/cartaro1.png
    :scale: 50 %
    :align: center

* Закончите, кликнув на **Save and add fields**.


* Добавьте новое поле для вашего типа контента путём ввода описательного
  имени. Мы хотим создать поле с геопространственной информацией под названием
  *Geometry*. Выберите тип поля *Geospatial data* и *OpenLayers Map* как виджет.

.. image:: /images/projects/cartaro/cartaro2.png
    :scale: 70 %
    :align: center

* Закончите нажатием на **Save**.

* Задайте свойства поля в новом окне: выберите тип геометрии, который
  соответствует геопространственной информации. Укажите *Polygon*, как в нашем
  примере.

.. image:: /images/projects/cartaro/cartaro3.png
    :scale: 70 % 
    :align: center

.. tip:: Прочитайте текст под выпадающим списком *Geometry type*, чтобы найти
          тип геометрии, подходящий под ваши задачи.

* Закончите нажатием на **Save field settings**.

.. image:: /images/projects/cartaro/cartaro4.png
    :scale: 70 % 
    :align: center

* Нажмите *Save settings*, чтобы закончить создание поля.

.. image:: /images/projects/cartaro/cartaro5.png
    :scale: 70 % 
    :align: center

* Под вкладкой *Manage fields* вы можете создать дополнительные поля (без
  геоинформации). В нашем примере нет такой необходимости.


Настройка GeoServer
================================================================================

:doc:`GeoServer <../overview/geoserver_overview>` используется как источник слоёв посредством сервисов :doc:`Web Feature Service (WFS) <../standards/wfs_overview>` и :doc:`Web Map Service (WMS) <../standards/wms_overview>` с геопространственным полем из недавно созданного нами типа контента.

* Выберите :menuselection:`Structure --> GeoServer` в меню для открытия конфигурационной страницы GeoServer.

.. image:: /images/projects/cartaro/cartaro_geoserver_entry.png
    :scale: 70 %
    :align: center

Создание нового слоя в GeoServer
``````````````````````````````````````````
* Используйте слои GeoServer для публикации ваших геоданных
* Выберите :menuselection:`Structure --> GeoServer` в меню, чтобы открыть конфигурационную страницу GeoServer.
* Выберите :menuselection:`Layers` и кликните **Add** для добавления нового слоя.

.. image:: /images/projects/cartaro/cartaro_geoserver_addnewlayer.png
    :scale: 60 %
    :align: center

#. Наберите подходящее имя слоя (например, "lakes"). 
#. Укажите тип слоя. Мы выбрали *PostGIS Field* для продвинутого геоанализа и хранения геоданных.
#. В качестве источника укажите созданный вами тип контента, которые бует ассоциироваться с вашим новым слоем.
#. Отметьте галочку *Provide an OpenLayers WFS layer* в разделе OpenLayers.
#. Закончите настройку, кликнув **Save**.

.. image:: /images/projects/cartaro/cartaro7.png
    :scale: 55 %
    :align: center


* Поздравляем! Ваш новый слой был добавлен в GeoServer.

.. tip:: Вы можете также получить доступ к геопространственным полям вашего типа контента через WPS или WMS с помощью других приложений (например, в :doc:`QGIS <../overview/qgis_overview>`). 


Настройка OpenLayers для активации вашего слоя GeoServer на карте
================================================================================

:doc:`OpenLayers <../overview/openlayers_overview>` используется для отображения вашего слоя на карте. Теперь вы должны связать ваш слой GeoServer с вашей картой в OpenLayers.

* Перейдите в меню в :menuselection:`Structure --> OpenLayers --> Maps`, чтобы открыть конфигурационную страницу OpenLayers.

* Обратите внимание на *frontmap* — заранее сформированную карту (по умолчанию) и выберите **Edit** справа.

.. image:: /images/projects/cartaro/cartaro_openl_maps_frontmapedit.png
    :scale: 70 %
    :align: center

* Конфигурационная страница для текущей карты выглядит так, как показано на скриншоте
  ниже.

.. image:: /images/projects/cartaro/cartaro_openlayers_frontmapediting.png
    :scale: 70 %
    :align: center

* Выберите :menuselection:`Layers & Styles` на левой боковой панели, чтобы добавить наш новосозданный слой на текущую карту.

* Обратите внимание на созданный слой GeoServer («lakes» в нашем случае).
* Поставьте галочки для *Enabled*, *Activated* и *In Switcher*, чтобы активировать ваг новый слой «*lakes*» на карте.

.. image:: /images/projects/cartaro/cartaro_openl_layersstylessettings.png
    :scale: 70 %
    :align: center

* Закончите настройку, кликнув **Save** внизу.

Добавление геопространственного контента
================================================================================

После создания типа контента и настройки GeoServer и OpenLayers вы можете теперь
добавить столько элементов содержимого, сколько вам нужно.

* Выберите :menuselection:`Content` в меню, чтобы увидеть все имеющиеся элементы
  контента в Cartaro.

.. image:: /images/projects/cartaro/cartaro_contentlist.png
    :scale: 70 %
    :align: center

* Выберите **Add content** для доавления другого контента и укажите ваш новый
  тип содержимого в появившемся окне (не показано). На конфигурационной странице
  вашего нового типа контента (называемого «узлом» в Drupal) задайте следующие
  настройки:

#. Наберите имя
#. Вы можете отрисовывать геометрию вашего элемента контента. Выберите символ
   рисования в верхнем правом углу карты. Обратите внимание, что инструмент
   подсказки отображается, когда вы наводите на значки на панели
   инструментов. Нажмите на карту, чтобы создать новую геометрию. Закончите
   рисунок двойным щелчком мыши.
#. Сохраните вашу геометрию (**Save**).

.. note:: В нашей тестовой конфигурации для каждого элемента может быть отрисована только одна геометрия. Создайте дополнительные элементы контента для добавления большего числа полигонов.
		  
.. image:: /images/projects/cartaro/cartaro8.png
    :scale: 70 %
    :align: center

* Теперь вы должны увидеть ваш новый элемент контента.

.. image:: /images/projects/cartaro/cartaro_addedcontent_lakefr.png
    :scale: 50 %
    :align: center

* Чтобы увидеть ваш новый элемент контента на текущей карте, кликните на значке
  с домиком в левом верхнем углу.

.. image:: /images/projects/cartaro/cartaro_addedcontent_frontmap.png
    :scale: 50 %
    :align: center

Поздравляем! Вы только что закончили данное «введение». Ваш первый элемент
контента готов. Чтобы добавить другие элементы, повторите все пункты заново.


Что можно попробовать
================================================================================

* Используйте **Layer Assistant** для включение внешних слоёв :menuselection:`Structure --> Open Layers --> Layers --> Add using assistant`.
* Изменяйте поведение карты по умолчанию и создавайте собственные карты.
* Попроьуйте различные типы геометрии и формируйте более сложные типы контента.


Что далее ?
================================================================================

.. Writing tip
  The final heading should provide pointers to further tutorials,
  documentation or further things to try.
  Present a list of ideas for people to try out. Start off very specific
  with something most people can do based on the materials as presented.
  Continue on with a challenge that involves a small bit of research (it
  is recommended that research be limited to something that can be
  found in documentation packaged on OSGeo-Live, as users might not be
  connected to the Internet.


.. Writing tip
  Provide links to further tutorials and other documentation.

Данное «Введение» имеет целью дать первое впечатление о возможностях Cartaro. Но
там ещё имеется много чего для исследования.
  
Вашим следующим шагом могла бы стать установка Cartaro на ваших
серверах. Посетите страницу http://cartaro.org/documentation/getting-started для ознакомления с процессом установки.

В контексте данного документа можете ознакомиться с документацией `Layer Assistant <http://cartaro.org/blog/21-layer-creation-assistant/>`_ и `Styling <http://cartaro.org/blog/14-how-use-qgis-great-looking-symbols-cartaro/>`_.


Страница документации находится здесь: http://cartaro.org/documentation


    Доступно на http://cartaro.org

                                                                      
