:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Translator: (Zh) Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-uDig.png
  :alt: udig logo
  :align: right
  :target: http://udig.refractions.net/

User-friendly Desktop Internet GIS (uDig)
================================================================================

桌面 GIS 环境
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/udig/udig-overview.png
  :scale: 50
  :alt: udig workshop
  :align: right

User-friendly Desktop Internet GIS (uDig) 是一套用户友好的开源 GIS 系统，用于显示和编辑地理数据。它遵循 OGC/OpenGIS 标准，适用于 WMS 网络地图服务、WFS 网络地理要素服务等网络应用。

uDig 具有以下特性：

*  **用户友好** ，提供了多数 GIS 用户熟悉的操作环境
*  **基于桌面** ，MS Windows、Mac OS/X、GNU/Linux 本地运行
*  **面向网络** ，支持网络服务标准和主流产品
*  **GIS 框架** ，为复杂的分析功能提供了一套框架，并逐渐开发和发布这些功能

　　对于开发人员而言，uDig 提供可一套开源的通用 Java GIS 开发平台。在官方网站中可以找到从制作简单工具到发布定制版本的一系列详细教程。

核心功能
--------------------------------------------------------------------------------

* 桌面客户端支持同文件管理器或浏览器间的拖拽通讯
* 同 ArcSDE、Oracle、DB2 等数据框架集成
* 本地文件支持：Shp, jpeg, png, tiff 等
* 支持 ECW, MrSID, JPEG 2000 等高级栅格数据格式
* 支持符合标准的网络地图服务（GeoServer 和 MapServer 集成经过测试）
* 系统集成的浏览器能够识别 OGC 标准网络服务，并在地图中流畅地集成显示
* 在 SLD 地图样式注记控制之下，uDig 可以采用同流行的网络服务相同的方式渲染地图
* 严格的标准实现使得不同数据源可以轻易地互换并保留显示和编辑功能不变
* 打印输出和 PDF 输出
* 对于开发者而言
  
  * 系统为基于 :doc:`GeoTools <geotools_overview>` 、 `JTS Topology Suite (JTS) <https://sourceforge.net/projects/jts-topo-suite/>`_ 的 Java 程序
  * 由 Eclipse Rich Client 平台提供的工业级插件系统
  * 使用本地界面组件


标准实现

--------------------------------------------------------------------------------

* OGC Web Map Server (WMS) 网络地图服务
* OGC Web Feature Server (WFS) 网络地理要素服务
* OGC Web Feature Server Transactional (WFS-T) 事务性地理要素服务
* OGC Simple Features for SQL (SFQL) SQL 地理要素基本模型
* Web Map Server Cache (WMS-C) 网络地图缓存
* OGC Style Layer Descriptor (SLD) 地图样式注记


详细信息

--------------------------------------------------------------------------------

**官方网站：** http://udig.refractions.net/

**开源协议：** GNU Lesser General Public License (LGPL) version 2

**软件版本：** |version-udig|

**平台支持：** MS Windows, GNU/Linux, Mac

**API 接口：** GeoTools, ImageIO-Ext, Java Advanced Imaging, Eclipse Rich Client Platform, Eclipse Modelling Framework

**技术支持：** http://udig.refractions.net/users/

**开发指南：** http://udig.refractions.net/developers/


快速入门

--------------------------------------------------------------------------------

* :doc:`快速入门文档 <../quickstart/udig_quickstart>`


