:Author: Friedjoff Trautwein, http://www.geops.de
:Author: Patric Hafner, http://www.geops.de
:Reviewer: Cameron Shorter, http://jirotech.com
:Version: osgeo-live6.5
:Translator: Zhengfan Lin
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-cartaro.png
  :alt: project logo
  :align: right
  :target: http://cartaro.org

Cartaro
================================================================================

地理空间内容管理系统
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
　　Cartaro 为 Drupal Content Management System (CMS) 内容管理系统提供空间操作能力。通过简单的几次点击操作，Cartaro 用户就可以设置和运行 OGC 标准的网络服务，并生成相应的网页。Cartaro 使用 the :doc:`PostGIS <../overview/postgis_overview>` 数据库、 :doc:`GeoServer <../overview/geoserver_overview>` 、GeoWebCache 缓存服务、 :doc:`OpenLayers <../overview/openlayers_overview>` 网页客户端等可靠的开源技术，并同 `Drupal <http://drupal.org>`_ CMS 系统结合。

　　Cartaro 为需要处理空间数据的 CMS 站点和需要轻量化空间数据基础服务（SDI）的组织设计，对用户配置和二次开发的要求很小。

.. image:: /images/screenshots/cartaro/cartaro_frontpage.png
  :scale: 50%
  :alt: Cartaro Frontpage
  :align: right

Core Features
--------------------------------------------------------------------------------

　　Cartaro 的 SDI 系统将 Drupal 同 PostGIS 和 GeoServer 紧密结合。主要特性有：

* 几何空间数据类型的存储
* 图形界面下的要素创建
* 集成的在线数据编辑
* 内嵌地图的数据发布
* 地图布局与行为配置
* 符号样式配置
* 基于 OGC 标准网络服务（例如 WMS 和 WFS）的数据发布
* 基于 GeoWebCache 的高性能服务
* 对所有空间数据的权限管理
* 内容发布与回退管理
* 通过 GeoServer-GUI 获取元数据
* 可由数千种 Drupal 模块或二次开发扩展

兼容标准
--------------------------------------------------------------------------------

  * :doc:`../standards/wms_overview`
  * :doc:`../standards/wfs_overview`
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview` 
  * :doc:`../standards/gml_overview`

其它信息
--------------------------------------------------------------------------------

**官方网站：** http://cartaro.org/

**开源协议：** GNU General Public License (GPL) version 2

**软件版本：** 1.0-beta4

**支持平台：** Windows, Linux, Mac

**接口语言：** JavaScript, PHP

**技术支持：** http://www.geops.de

快速入门
--------------------------------------------------------------------------------
    
* :doc:`快速入门文档 <../quickstart/cartaro_quickstart>`
