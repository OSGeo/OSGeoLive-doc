:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right
  :target: http://www.gaia-gis.it/spatialite/


SpatiaLite
================================================================================

空间数据库
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SpatiaLite是SQLite数据的空间数据引擎。 

SQLite是一个深受欢迎的数据库管理系统，具有简单、稳定、易于使用和真正的轻量级特点。 每个SQLite数据库是一个简单文件，用户可以自由复制、压缩，以及通过局域网LAN和广域网WEB毫不费力地传送。

数据库是扩平台的，同一个数据库文件可以在多种操作系统环境工作，如：Windows, Linux, MacOs等。

.. _SQLite: http://www.sqlite.org/

.. image:: ../../images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

主要功能
--------------------------------------------------------------------------------

SpatiaLite对SQLite的扩展，使其能够兼容OGC的空间数据规范。

* 支持WKT和WKB格式
* 支持SQL空间函数AsText(), GeomFromText(), Area(), PointN()
* 对OpenGIS空间函数集的完全支持需要借助于GEOS，支持高级复杂空间分析函数如：Overlaps(), Touches(), Union(), Buffer()等
* 遵循OpenGIS规范完全支持空间元数据格式
* 支持对Shape文件的导入与导出
* 采用PROJ.4和EPSG支持坐标系的投影变换
* 采用GNU libiconv支持各语言字符编码 
* 基于SQLite的RTree扩展真正地实现了空间索引
* VirtualShape扩展使得SQLite访问Shape文件就像操作VIRTUAL TABLE一样
* 用户可以对外部Shape文件进行标准SQL查询操作，而无需导入或者转换Shape文件
* VirtualText扩展使得SQLite访问CSV/TxtTab文件就像操作VIRTUAL TABLE一样
* 用于可以对外部CSV/TxtTab文件进行标准SQL查询操作，而无需导入或者转换CSV/TxtTab文件
* GUI工具用户界面友好，支持上述所有功能


详情请见
--------------------------------------------------------------------------------

**网站:** http://www.gaia-gis.it/gaia-sins/

**版权:** MPL v1.1 and GPL v3

**软件版本:** spatialite 3.0.0 / librasterlite 1.0 / spatialite-gui 1.3.0 / spatialite-gis 1.0.0

**支持平台:** Linux, Mac, Windows

**API接口:** C++


快速入门
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/spatialite_quickstart>`


