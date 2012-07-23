:Author: Johannes Wilden
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://deegree.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


deegree
================================================================================

Web服务
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

deegree一个免费的、稳定的、功能强大的并且容易操作的软件。 在免费和开源软件中，deegree最全面符合开放地理信息联盟标准（OGC）的,
包括Web Feature Service、通过Web Terrain Service显示三维数据以及其他诸多！

deegree一个基于地理信息系统（GIS）和空间数据基础设施（SDI）的网络和桌面解决方案。
它由全面而强大的Java应用程序接口（API）和针对简单与复杂空间模式的强大对象-关系型的映射所组成。
deegree还提供一组兼容标准的Web制图、地理要素和目录服务，以及传感器和处理等服务。

deegree提供用户SDI，支持用户自己的数据，满足各种需求.


.. image:: ../../images/screenshots/1024x768/deegree_mainpage.jpg
  :scale: 50%
  :alt: project logo
  :align: right

功能示例
--------------------------------------------------------------------------------

* Web Map Service

  * 非常灵活的适应图层内容
  * 支持使用样式定义(SLD 1.0)
  * 通过图表（饼状图、条形图、线）绘制专题图
  * 数据源: 所有常见的OGC网络服务(WMS, WFS, WCS), PostgreSQL/PostGIS, Oracle Spatial, 任何SQL语句均可提供用于创建WMS图层内容
  * 即使大尺度地图也很稳定
  * 支持HTTP GET, HTTP POST协议和要素信息请求
  * 已被认证与OGC标准相兼容

* Web Feature Service

  * 支持简单和复杂的功能
  * 3000多种坐标参考系统的动态转换
  * 支持灵活的输出格式
  * 容易改善以支持INSPIRE指令

* Web Coverage Service

  * 支持HTTP GET和HTTP POST请求
  * 数据源: 图像 (tif, png, jpeg, gif, bmp); GeoTIFF; ECW文件; Oracle GeoRaster
  * 高速访问大数据量coverages

* Catalogue Service

  * 数据源: PostgreSQL-Database; Oracle-Database
  * 支持请求: GetCapabilities; DescribeRecord; GetRecordById; GetRecords; Transaction - Insert, Update, Delete; Harvesting

* Web Map Print Service

  * 支持不同的打印格式(HTML, PDF, PNG)
  * 长时间运行的批处理作业
  * 支持异步请求，以进行大幅面图绘制
  * 即使管理员或者机器故障停止了WMPS，请求存储在数据库中，仍然可用。

* Web Perspective View Service

   * 数据源: remote/local-WMS, remote/local-WFS, local-WCS, Postgres/PostGIS, Oracle Spatial
   * 高程模型可以用矢量数据或者栅格数据
   * 请求: Get3DFeatureInfo, GetView


已实现的标准规范
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.0*, 1.1.1, 1.3.0*
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0 (2.0 in progress)
* OGC Web Coverage Service (WCS) 1.0.0* (1.1.0 in progress)
* OGC Catalogue Service-Web (CSW) 2.0.0, 2.0.1, 2.0.2; including OGC ISOAP 1.0 and INSPIRE profile
* OGC Web Perspective View Service (WPVS) Draft 6
* OGC Web Coordinate Transformation Service (WCTS) 0.4.0
* OGC Web Processing Service (WPS) 0.4.0, 1.0.0
* OGC Sensor Observation Service (SOS) 1.0.0

详情请见
--------------------------------------------------------------------------------

**网站:** http://deegree.org

**版权:** LGPL

**软件版本:** 3.0

**支持平台:** Windows, Linux

**API接口:** Java

**支持:** http://wiki.deegree.org/deegreeWiki/GettingSupport

快速入门
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/deegree_quickstart>`
