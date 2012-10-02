.. Writing Tip:
  Writing tips describe what content should be in the following section.
  The postgis_overview.rst document is used as a reference example
  for other overviews.
  All other overviews should remove the writing tips in order to make the
  overview documents easier to translate.

.. Writing Tip:
  Metadata about this document

:Автор: OSGeo-Live
:Автор: Barry Rowlingson
:Проверил: Cameron Shorter, LISAsoft
:Версия: osgeo-live5.5
:Лицензия: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. Writing Tip:
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>

.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: Логотип проекта
  :align: right
  :target: http://postgis.refractions.net/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: Проект OSGeo
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

PostGIS
================================================================================

.. Writing Tip:
  Application Category Description:

Пространственная база данных
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.
  * First sentence should explain the application.
  * Usually the application domain will not be familiar to readers. So the
    next line or two should explain the domain. Eg: For GeoKettle, the next
    line or two should explain what GoeSpatial Business Intelligence is.
  * Remaining paragraph or 2 in this overview section should provide a
    wider description and advantages from a user perspective.

PostGIS — пространственное "расширение" для популярной объектно-реляционной СУБД PostgreSQL, позволяющее использовать её в качестве серверной базы данных для геоинформационных систем (ГИС) и картографических веб-приложений. Расширения PostGIS для PostgreSQL подобны расширению Oracle Spatial для СУБД Oracle.

PostGIS отличается стабильностью, скоростью работы и, кроме этого, соответствует стандартам. Она содержит сотни пространственных фунций и является наиболее широко используемой пространственной базой данных с открытым кодом. PostGIS используется различными организациями по всему миру, в том числе, несклонными к риску правительственными агенствами, а также организациями, хранящими терабайты данных и обслуживающими миллионы веб-запросов каждый день.

Администрирование баз данных возможно на десктопе и через веб-интерфейс при помощи pgAdmin, phpPgAdmin и пр. Импорт и экспорт данных может быть выполнен как при помощи инструментов командной строки (shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis) так и через десктопные и веб ГИС-приложения. Эти приложения также позволяют отображать пространственные таблицы PostGIS и манипулировать ими.

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.gif . Eg: udig_main_page.gif
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: ../../images/screenshots/800x600/pgadmin.gif
  :scale: 55 %
  :alt: Менеджер баз данных pgAdmin
  :align: right

Базовые функции 
--------------------------------------------------------------------------------

* Сотни пространственных функций
  
  * Буферы, объединения, перекрытия, расстояния и многое другое

* Целостность транзакций ACID
* Пространственные индексы на R-деревьях
* Поддержка нескольких пользователей
* Блокировка на уровне записей
* Репликация
* Разбиение
* Система прав, основанная на ролях
* Пространства таблиц, схемы

Реализованные стандарты
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* Соответствует стандартам OGC (SFSQL)

Дополнительная информация
--------------------------------------------------------------------------------

**Веб-сайт:** http://postgis.refractions.net/

**Лицензия:** `GPL версия 2 <http://www.gnu.org/licenses/gpl-2.0.html>`_

**Версия ПО:** 1.5

**Поддерживаемые платформы:** Windows, Linux, Mac

**Интерфейсы API:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.

**Поддержка:** http://www.osgeo.org/search_profile


Начало работы
--------------------------------------------------------------------------------
    
* :doc:`Введение <../quickstart/postgis_quickstart>`
