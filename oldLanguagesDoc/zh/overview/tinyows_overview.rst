:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-TinyOWS.png
  :alt: project logo
  :align: right
  :target: http://mapserver.org/trunk/tinyows/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

TinyOWS
================================================================================

网络地理要素服务
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　TinyOWS 是一套高性能的事务性网络地理要素服务（WFS-T）系统。它使用 CGI/FastCGI 接口运行，利用 :doc:`PostGIS <postgis_overview>` 存储数据，轻量而易于部署。

.. image:: /images/projects/tinyows/tinyows_digitizing.jpg
  :scale: 55 %
  :alt: digitizing
  :align: right

　　TinyOWS 通常与 :doc:`MapServer <mapserver_overview>` 协作，为 :doc:`QGIS <qgis_overview>` 和 :doc:`OpenLayers <openlayers_overview>` 等客户端提供 WFS-T 和高速 WFS 服务。它被全球众多机构用于实际业务之中，其中包括政府隐患监控机构等。

　　TinyOWS 严格遵照 WFS 1.0 / 1.1 标准，通过了所有的 OGC CITE 标准测试（共有约一千项测试）。

核心功能
--------------------------------------------------------------------------------

* 事务性网络地理要素服务
* CGI / FastCGI 接口
* PostGIS 数据连接
* GML 2.1.2 / 3.1.1 和 GeoJson 1.0 格式的输出
* 使用 MapServer 的配置文件，可直接从 MapServer 导入

标准实现
--------------------------------------------------------------------------------
* WFS 1.0 / 1.1 基本事务处理
* FE 1.0.0 / FE 1.1.0 数据　过滤器编码
* GML 2.1.2 / 3.1.1 地理标记语言基本模型（SF-0）

详细信息
--------------------------------------------------------------------------------

**官方网站：** http://mapserver.org/trunk/tinyows/

**开源协议：** MIT

**软件版本：** 1.0.0

**平台支持：** Linux, Unix, Mac, Windows

**API 接口：** CGI/FastCGI

**技术支持：** http://lists.osgeo.org/mailman/listinfo/mapserver-users


快速入门
--------------------------------------------------------------------------------
    
* :doc:`快速入门文档 <../quickstart/tinyows_quickstart>`

