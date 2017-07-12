:Author: OSGeo-Live
:Author: Javier Sanchez, GeoNaTec
:Reviewer: Cameron Shorter, Jirotech
:Translator: Zhengfan Lin
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-tilemill.png
  :alt: TileMill
  :align: right
  :target: http://www.tilemill.com

TileMill
================================================================================


网页地图设计系统
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　TileMill 是一款用于创建基于网页的美观的交互地图服务的系统。它支持众多的地理信息数据来源。

.. Review Comment
  If MBTiles is an Open Standard, we probably should provide a link to it.

　　TileMill 创建的地图可以具有浮动工具提示、点击弹出信息框、交互图表、SVG 矢量标记、富文本、多图层等特性。地图产品可以到处至 .png, .pdf, .svg 和 MBTiles 格式保存和发布。MBTiles 规范将一个切片服务保存在单个 SQLite 数据库中。其数据可以取自矢量的 CSV、shp、KML、GeoJSON 和栅格 GeoTiff 以及 OpenStreetMap、Postgres、SQLite 等数据库。

　　Tilemill 使用 :doc:`Mapnik <mapnik_overview>` 地图渲染函数库 （OpenStreeMap 也使用该函数库）和 CartoCSS 样式注记语言。

　　TileMill 常和 QuantumGIS 等桌面 GIS 一并使用以准备数据，并通过 GIMP 等图形编辑器创建图标、纹理等素材。

.. image:: /images/screenshots/1024x768/tilemill_interface2.png
  :scale: 70 %
  :alt: TilleMill user interface
  :align: right

核心功能
--------------------------------------------------------------------------------

* 从多种数据源载入数据
  
  * ESRI shp 文件
  * KML
  * GeoJSON
  * GeoTiff
  * CSV spreadsheet
  * OpenStreetMap

* 连接地理空间数据库

  * PostgreSQL + PostGIS
  * SQLite

* 配置自定义图层

* 地图样式

  * 使用预设或自定样式
  * 条件样式配置

* 图例与工具提示

* 服务发布

  * 位图文件：.png、.pdf、.svg、MBTiles
  * 网页发布
  * 在网页或内容管理系统（WordPress、Drupal）插入

* JavaScript API

兼容标准
--------------------------------------------------------------------------------

* TileMill 目前并不使用 WMS、WFS 等 OGC 标准。它使用 Google 和 OSM 的 z/x/y 切片方式并遵循 MBTiles 和 UTFGrid 标准。

其它信息
--------------------------------------------------------------------------------

**官方网站：** http://tilemill.com

**开源协议：** BSD

**软件版本：** 0.10.1

**支持平台：** Windows, Linux, Mac

**接口语言：** JavaScript

**技术支持：** http://www.tilemill.com


快速入门
--------------------------------------------------------------------------------
    
* :doc:`快速入门文档 <../quickstart/tilemill_quickstart>`
