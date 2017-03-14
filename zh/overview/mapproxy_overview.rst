:Author: Oliver Tonnhofer
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

Map Proxy
================================================================================

网络地图服务及切片代理程序
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: right

　　Map Proxy 是一款通过预渲染和缓存不同来源的数据加速地图服务的服务器程序。它支持透明图层、重投影、多图层拼合、水印等多种功能。

　　Map Proxy 设计灵活，规模化能力强，可适应简单小型项目到大型复杂服务的各种应用场景。从简单的切片缓存服务器或 Open Layers 客户端到一套聚合和加速大量分布式数据服务的大型地理信息服务系统，Map Proxy 均可胜任。

　　Map Proxy 被德国 German Broadband Atlas 地图服务用于为数以千记的用户提供数据，也被德国联邦测量与制图局用于对其 16 个州提供即时的地图服务。


核心功能
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/800x600/mapproxy_demo.png
  :width: 796
  :height: 809
  :scale: 70 %
  :alt: MapProxy demo
  :align: right

数据源支持：
  * WMS 网络地图服务 1.0.0–1.3.0（MapServer、GeoServer 等）
  * TMS 地图切片服务、WMTS 网络地图切片标准（TileCache、GeoWebcache 等）
  * Mapserver 和 Mapnik（直接读取，无需 WMS 支持）
  * 任何常见的切片缓存，包括 Google Maps 和 Bing 的 API

服务功能：
  * WMS 网络地图服务（1.0.0-1.3.0）
  * TMS 地图切片服务
  * WMTS 网络地图切片标准
  * KML Super Overlays 层级缩略图

切片缓存：
  * 相同图片（如海洋区域的纯色图）只存储一次
  * 以通用文件系统、MBTile 文件或 CouchDB 数据库存储缓存
  * 水印功能

数据源：
  * 以多边形裁切数据源（例如从指定的 shp 文件中）
  * 不透明图层半透明显示
  * 多数据源组合
  * 投影变换

WMS 网络地图服务：
  * 多数据源的图层树
  * 为桌面 GIS 系统提供任意缩放和任何投影的数据
  * 为现有网络地图服务实现十倍至百倍的缓存加速
  * 响应“Get Legend Graphic”图例查询请求
  * 串联处理“Get Feature Info”地理要素描述请求，支持 XSL 文档格式转换
  * 即时重投影
  * 转换 WMS 服务版本和栅格数据格式

安全服务：
  * 灵活强健的安全 API
  * 服务于数据具备良好的粒度划分
  * 以多边形限制数据访问区域
  * 与现有的用户管理和权限控制机制整合

其它：
  * 简洁而强有力的设置文件格式（来自 YAML/JSON）
  * 基于 OpenLayers 的客户端
  * 单个 MapProxy 实例可以并行提供多个 WMS 地图服务
  * 图像中可添加注释文字
  * 支持非影响类栅格数据，如数字高程模型等
  * 其它更多特性

技术标准实现
--------------------------------------------------------------------------------

Map Proxy 实现了以下开放地信技术标准：

* OGC WMS 网络地图服务 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC WMTS 网络地图切片服务 1.0.0（KVP and RESTful）
* OSGeo TMS 地图切片服务 1.0.0
* OGC KML 地理要素标注 2.2 Super Overlays 层级缩略图


详细信息
--------------------------------------------------------------------------------

**官方网站：** http://mapproxy.org/

**开源协议：** `Apache 协议 2.0 版本 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**软件版本：** 1.8.0

**平台支持：** GNU/Linux, Mac, Windows

**技术支持：** http://mapproxy.org/support.html

**官方文档：** <../../mapproxy/index.html>`_


快速入门
--------------------------------------------------------------------------------

* :doc:`快速入门文档 <../quickstart/mapproxy_quickstart>`
