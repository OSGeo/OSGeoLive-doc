:Author: Bob Basques
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-geomoose.png
  :alt: project logo
  :align: right
  :target: http://www.geomoose.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/


GeoMoose
================================================================================

网页 GIS 前端
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoMOOSE 是一套基于网页的分布式地图数据显示框架。它适用于管理国家、城市（GeoMOOSE 起源于市政管理的需求）等不同范围的空间和非空间信息。它对 MapServer 和 OpenLayers 的功能进行了扩展，提供了如多图层条件下基于下拉菜单的对象选取、浏览和组织，多对象选取，数据库查询等新功能。

GeoMOOSE 运行高效，能够适应上百个图层和数据源同时运作的复杂环境。每个图层具有独立的设定用于数据源、发布、符号显示、模板套用等，使得不同的管理人员得以使用不同的工具，依照各自的进度要求对不同的数据进行管理。

该框架的用户界面易于调整。高度模块化的架构设计使得新功能的加入易于实现。

.. image:: /images/screenshots/geomoose/geomoose-screenshot-800x600.png
  :scale: 55 %
  :alt: geomoose-screenshot-800x600.png
  :align: right

核心功能
--------------------------------------------------------------------------------

* 分布式的数据服务和维护
* 能够连接 MapServer, Google, VirtualEarth, YahooMaps, Tilecache, ArcGIS REST 和 WMS 服务
* 数据源可用不同试图显示
* 检索和过滤数据源
* 度量、绘制、查询、消隐显示、重排序、重投影、视域跳转、坐标输出等工具
* 地图、全局视图（鹰眼）、侧边栏、导航等显示，支持多标签页
* XML 格式的 MapBook 设置文件可控制用户界面、数据源和工具
* MapServer 集成
* 模块化设计利于同非空间系统的集成，如资产管理系统等
* 发布图层数量几乎没有限制
* PDF 输出/打印

应用标准
--------------------------------------------------------------------------------
* WMS 网页地图服务

其它信息
--------------------------------------------------------------------------------

**官方网站：** http://www.geomoose.org/

**开源协议：** MIT based license. http://www.geomoose.org/info/license.html

**软件版本：** 2.4

**系统支持：** Windows, Linux, Mac

**商业支持：** http://www.geomoose.org/info/commercial_support.html

**社区支持：** http://www.geomoose.org/info/mailing_lists.html


快速开始
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/geomoose_quickstart>`
