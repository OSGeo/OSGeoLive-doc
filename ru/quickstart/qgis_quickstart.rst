:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-QGIS.png
  :scale: 100 %
  :alt: Лого проекта
  :align: right
  :target: http://www.qgis.org

********************************************************************************
QGIS: начало работы
********************************************************************************

Quantum GIS (QGIS) — это дружественная к пользователю настольная ГИС с открытым
исходным кодом, позволяющая отображать, редактировать и анализировать данные, 
управлять ими, а также создавать печатные карты.

Этот документ описывает, как:

  * обновить существующий проект QGIS;
  * создать новый проект QGIS с простым векторным слоем.


Редактирование проекта QGIS
================================================================================

#. Нажмите :menuselection:`Desktop --> Desktop GIS --> Quantum GIS`.

#. Выберите в меню :menuselection:`File --> Open Project...`.

#. Укажите файл :file:`QGIS-NaturalEarth-Example.qgs` и нажмите :guilabel:`Open`.

   * Вы должны увидеть карту мира.

#. В списке слоёв установите галку напротив **10m_populated_places_simple**

   * Отобразятся города:

     .. image:: ../../images/screenshots/1024x768/qgis.png
        :scale: 50 %

#. Дважды щёлкните на **10m_rivers_lake_centerlines** в списке слоёв.

#. Измените цвет в Outline Options на другой оттенок голубого.

#. Нажмите :guilabel:`OK`.

   * Реки должны отобразиться другим цветом.


Создание нового проекта QGIS
================================================================================

#. Выберите :menuselection:`File --> New Project`.

#. Нажмите :menuselection:`Layer --> Add Vector Layer...`.

#. Перейдите к набору данных :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp`.

#. Нажмите :guilabel:`Open`.

   * Вы должны увидеть границы стран мира.


Подключение к пространственной базе данных PostGIS
================================================================================

#. Выберите :menuselection:`File --> New Project`.

#. Выберите :menuselection:`Layer --> Add PostGIS Layers...`.

   * Доступны две базы данных *Natural Earth* и *OpenStreetMap*.

#. Выберите базу данных *OpenStreetMap* и нажмите :guilabel:`Connect`.

   * Появится список таблиц базы данных.

#. Выберите ``planet_osm_roads`` и нажмите :guilabel:`Add`.

   * Более подробное упражнение можно найти в :doc:`PostGIS Quickstart <postgis_quickstart>`.

Использование инструментов GRASS
================================================================================

#. Выберите :menuselection:`File --> New Project`.

#. Выберите :menuselection:`Plugins --> Manage Plugins`.

#. Введите ``grass`` в окно фильтра и выделите модуль `GRASS`. Затем нажмите :guilabel:`Ok`.

   * Появится вложенное меню `GRASS` в меню `Plugin`, а также новая панель инструментов.

#. Выберите :menuselection:`Plugins --> GRASS --> Open mapset`.

   * Путь к базе данных GRASS будет автоматически установлен в `~/grassdata`.

#. Выберите область `nc_basic_smp` и набор данных `user1`, затем нажмите :guilabel:`Ok`.

#. Выберите :menuselection:`Plugins --> GRASS --> Add GRASS raster layer`.

   * Из набора данных PERMANENT выберите карту `elevation_shade` и нажмите :guilabel:`Ok`.

#. Выберите :menuselection:`Plugins --> GRASS --> Add GRASS raster layer`.

   * Из набора данных PERMANENT выберите карту `elevation` и нажмите :guilabel:`Ok`.

   * Дважды щёлкните на слое `elevation` в списке слоёв QGIS и установите его
     прозрачность в 65%.

#. Выберите :menuselection:`Plugins --> GRASS --> Add GRASS vector layer`.

   * Из набора данных PERMANENT выберите карту `roadsmajor` и нажмите :guilabel:`Ok`.

Вы также можете использовать множество аналитических модулей GRASS.

.. maybe describe a raster processing task instead of a NVIZ one?

#. Выберите :menuselection:`Plugins --> GRASS --> Open GRASS tools`.

   * Появится длинный список инструментов анализа.

#. Введите ``nviz`` в поле фильтра и выберите `NVIZ`. Возможно, вам нужно
   будет изменить размер окна, потянув его за угол.

#. В появившейся вкладке модуля выберите карту `elevation` в качестве
   источника данных о высоте. Затем отключите кнопку с изображением
   прямогольника с красными углами справа от названия карты, чтобы
   использовать границы и разрешение карты. Правильно заданная рабочая
   область — ключевое действие в обработке растров в GRASS.

#. Выберите векторный слой `roadsmajor` и нажмите :guilabel:`Run`.

#. После того как откроется окно NVIZ, максимизируйте его и при помощи
   ползунка в окне компаса установите точку обзора.

#. Выберите :menuselection:`Visualize --> Raster surfaces` и установите
   разрешение `fine` в 1, затем нажмите зеленую кнопку :guilabel:`DRAW`
   в верхней левой части окна и дождитесь окончания отрисовки.


Использование инструментов Sextante
================================================================================

#. Выберите :menuselection:`Plugins --> Manage Plugins`.

#. Введите ``sextante`` в поле фильтра и выберите модуль `SEXTANTE`. Нажмите :guilabel:`Ok`.

   * Появится новый пункт меню `Analysis`.

#. Выберите :menuselection:`Analysis --> Sextante Toolbox`.

   * В правой части окна появится новая панель с различными инструментами
     анализа.


Использование модуля OpenStreetMap
================================================================================

#. Запустите эмулятор терминала из меню Xubutu :menuselection:`Applications --> Accessories`.

   * Скопируйте данные OSM в домашний каталог:

::

  cp data/osm/feature_city_CBD.osm.bz2 .
  bzip2 -d feature_city_CBD.osm.bz2

#. В QGIS, выберите :menuselection:`File --> New Project`.

#. Зайдите в :menuselection:`Plugins --> Manage Plugins`.

#. Введите ``open`` в поле фильтра и выберите модуль `OpenStreetMap`. Нажмите :guilabel:`Ok`.

   * В меню `Web` появится новое подменю, также появится новая панель инструментов.

#. Зайдите в :menuselection:`Web --> OpenStreetMap --> Load OSM from file`.

#. Укажите файл `feature_city_CBD.osm`, который вы только что скопировали
   в домашний каталог.

#. Активируйте переключатели `name`, `highway` и `amenity`.

#. Выберите тип отрисовки :guilabel:`Medium scale` и нажмите :guilabel:`Ok`.


Что дальше?
================================================================================

Обучающие материалы, посвященные более сложным аспектам использования QGIS, 
собраны в `OSGeo-Live QGIS tutorials`_.

Начать изучение QGIS можно со страницы `Documentation`_ её сайта.

OSGeo-Live содержит руководства `A Gentle Introduction to GIS`_  и
`QGIS User Guide`_.

.. _`OSGeo-Live QGIS tutorials`: ../../qgis/tutorials/
.. _`Documentation`: http://www.qgis.org/en/documentation.html
.. _`A Gentle Introduction to GIS`: ../../qgis/qgis-1.0.0_a-gentle-gis-introduction_en.pdf
.. _`QGIS User Guide`: ../../qgis/qgis-1.7.0_user_guide_en.pdf
