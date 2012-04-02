.. Writing Tip:
  Writing tips describe what content should be in the following section.
  The postgis_overview.rst document is used as a reference example
  for other overviews.
  All other overviews should remove the writing tips in order to make the
  overview documents easier to translate.

.. Writing Tip:
  Metadata about this document

:Author: OSGeo-Live
:Author: Barry Rowlingson
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _postgis-overview:

.. Writing Tip:
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>

.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.refractions.net/

.. Writing Tip:
  Include an OSGeo logo if the project is an OSGeo project, or is in
  incubation. OSGeo projects are listed on this page: http://www.osgeo.org/
  .. image:: images/logos/OSGeo_incubation.png
  .. image:: images/logos/OSGeo_project.png

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project in Incubation
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

.. Writing Tip: Name of application

PostGIS
================================================================================

.. Writing Tip:
  Application Category Description:

空间数据库
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

PostGIS使得深受欢迎的PostgreSQL对象关系型数据库能够支持空间数据的管理与处理，使其成为GIS和WEB制图应用系统的后台数据库，就像Oracle Spatial在Oracle数据库中的作用一样。

PostGIS性能稳定、快速、兼容各标准规范，具有数百个空间函数，成为当今最为广泛使用的开源空间数据库。PostGIS被用于各种各样的世界组织，包括规避风险的政府部门和组织，每日要存储TB级数据、服务数百万次WEB请求。

数据库管理可通过pgAdmin、phpPgAdmin及其他工具，实现桌面和WEB管理方式。数据导入或导出可通过命令行工具（shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis）实现，也可通过桌面GIS或WEB GIS客户端实现。这些客户端也能以地图方式显示和管理PostGIS空间数据库表。

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.gif . Eg: udig_main_page.gif
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: ../../images/screenshots/800x600/pgadmin.gif
  :scale: 55 %
  :alt: pgAdmin database manager
  :align: right

主要功能
--------------------------------------------------------------------------------

* 数百个空间函数
  
  * Buffers, unions, overlays, distance等

* ACID事务完整性
* R-Tree空间索引
* 多用户支持
* Row-level加锁功能
* 复制
* 分区功能
* 角色安全管理
* 表空间，数据库对象集合

已实现的标准规范
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* 兼容OGC标准规范(SFSQL)

详情请见
--------------------------------------------------------------------------------

**网站:** http://postgis.refractions.net/

**版本:** GNU General Public License (GPL) version 2

**软件版本:** 1.5

**运行平台:** Windows, Linux, Mac

**API接口:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.

**支持:** http://www.osgeo.org/search_profile


快速入门
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/postgis_quickstart>`
