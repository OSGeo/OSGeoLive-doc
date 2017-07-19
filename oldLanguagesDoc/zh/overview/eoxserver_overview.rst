:Author: Stephan Meissl, Stephan Krause
:Reviewer: 
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-eoxserver-2.png
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

EOxServer
================================================================================

Web 服务
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　EOxServer 是一款用于存储地球观测（Earth Observation / EO）数据的服务器软件。它是一套基于 Python 语言的 EO 数据及元数据服务框架。

　　EOxServer 的研发目标是为支持和简化网络上通过各种公共标准交换的海量 EO 数据的存储提供一个开源的框架，使用户更容易地应用和分析数据。

* 开源协议：MIT 麻省理工学院标准协议
* 软件框架：完全基于开源工程（Python, MapServer, 
  Django/GeoDjango, GDAL, SpatiaLite, PostGIS, PROJ.4）
* 高效的数据服务：基于命令行界面或 GUI 的数据注册管理
* 海量地球观测数据存储：包含现有的公共栅格数据集
* 基于开放标准的服务：开放地理信息协会（OGC）标准; WMS, WCS, EO-WMS, EO-WCS
* 高效的数据利用：用户可自定义数据获取范围，并浏览和下载。

.. image:: /images/screenshots/1024x768/eoxserver_screenshot.png
  :scale: 50 %
  :alt: EOxServer embedded client screen shot
  :align: right


核心功能
--------------------------------------------------------------------------------

EOxServer 的核心功能包括：

* 支持 GML AP 的 RectifiedGridCoverages 规则化格网
* 支持 WCS 网络数据服务 2.0 标准，其核心功能包括 GetCapabilities 功能查询、DescribeCoverage 数据描述、GetCoverage requests 数据获取、KVP- 数据连接、XML/POST 协议支持等
* 预先准备部分未发布的扩展，包括 Coverage 数据格式，GeoTIFF 栅格标准编码，未正式发布的（包括 EPSG 地理信息技术委员会的）坐标参考，重采样和插值，非指针数据定位等。这是通过对 WCS SWG 标准工作组最新进展及 WCS 1.0/1.1 标准相关部分的追踪实现的。
* 支持通过 gmlcov:RectifiedGridCoverage 方法获取基于二维重采样规则化格网的数据
* 支持通过 gmlcov:ReferenceableGridCoverage 方法获取基于二维非线性格网参照的数据
* 支持地球观测数据系列的存储，如基于时间的系列
* 支持对数据及其系列进行 DescribeEOCoverageSet 数据集搜索操作
* 支持规则化格网下的数据融合，并且支持 contributingFootprint 数据使用范围描述
* 支持地球观测元数据的获取和评价
* 协议支持包括：

  * KVP 关键字对
  * XML/POST（通过 SOAP2POST 代理实现 XML/SOAP）

* 数据格式支持：

  * GeoTIFF
  * 所有 GDAL 支持格式（具体各个格式有待验证）

* 支持地球观测数据的 EO-WMS 网络地图服务

标准支持
--------------------------------------------------------------------------------

* 支持多种 OGC 开放地理信息联盟标准
  * WCS, EO-WCS
  * WMS, EO-WMS
  * GML, GMLCOV, EO-O&M

演示
--------------------------------------------------------------------------------

* `OSGeo Live 本地 <http://localhost/eoxsever/>`_
* `线上演示 <https://eoxserver.org/demo_stable/>`_

文档
--------------------------------------------------------------------------------

* `EOxServer 0.2.0 文档 <../../eoxserver-docs/EOxServer_documentation.pdf>`_

其它信息
--------------------------------------------------------------------------------

**官方网站：** http://eoxserver.org/

**开源协议：** `MIT 麻省理工学院协议 <http://eoxserver.org/doc/copyright.html#license>`_

**软件版本：** |version-eoxserver|

**支持平台：** Linux, Windows, Mac

**API 接口：** Python

**社区支持：** http://eoxserver.org/doc/en/users/basics.html#where-can-i-get-support

快速开始
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/eoxserver_quickstart>`
