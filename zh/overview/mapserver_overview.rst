:Author: Alan Boudreault, Steve Lime
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _mapserver-overview:

.. image:: ../../images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://mapserver.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapServer
================================================================================

Web服务
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapServer是一个采用C语言开发的`开源 <http://www.opensource.org>`_ 地理数据渲染引擎。 除了浏览GIS数据，MapServer还允许用户创建"geographic image maps"，也就是引导用户浏览Web内容的地图。例如：Minnesota DNR `Recreation Compass <http://www.dnr.state.mn.us/maps/compass.html>`_ 仅通过一个单独应用系统就提供给用户10,000多Web页面、报告和地图。该系统还同时作为"map engine"为其他站点服务，提供所需的空间信息背景。

MapServer起初是由University of Minnesota (UMN)和NASA、Minnesota Department of Natural Resources (MNDNR)一起合作的ForNet项目开发的。后来，又由NASA资助的UMN与土地管理业者联盟共同负责的TerraSIP项目主管。

MapServer目前是`OSGeo <http://www.osgeo.org>`_的一个项目, 由一个日渐增长的开发团队（约20名）所维护，成员来自世界各地。它得到了各种各样组织的资金支持以提高软件质量和进行日常维护。在OSGeo内部，由Mapserver项目执行委员会负责具体管理，委员会成员由开发人员和资助者组成。

主要功能
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/1024x768/mapserver.png
  :scale: 50 %
  :alt: screenshot
  :align: right

* 高级制图输出

  * 基于比例尺变化的地物要素图形绘制和应用
  * 地物要素的注记，包括注记文字重叠冲突避免
  * 注记和符号库的TrueType字体支持
  * 地图元素自动化（比例尺、全视图和图例）
  * 采用逻辑或正则表达式选择地物要素类别，制作专题图
  * 可插入式的渲染驱动支持如AGG, Cairo, GD, OpenGL以及其他
  * 提供切片式等特殊要求输出

* 高级空间查询支持

  * 通过属性、点、矩形或者几何图形等选择方式，在一个或多个图层中标示出选中的地物要素
  * 支持栅格查询
  * 全面支持定制基于模板的输出
  * 基于OGR查询的输出产生 

* 支持流行的脚本编程和开发环境

  * CGI/FastCGI
  * PHP, Python, Perl, Ruby, Java, 和.NET

* 支持跨平台

  * Linux, Windows, Mac OS X, Solaris, 和更多

* 多种栅格和矢量数据格式

  * 内置驱动支持ESRI shape, PostGIS, ESRI ArcSDE和Oracle Spatial
  * 采用GDAL和OGR支持更多其它格式

* 支持地图投影

  * 通过Proj.4库支持动态地图投影，超过1000余种

已实现的标准规范
--------------------------------------------------------------------------------

* 支持众多的Open Geospatial Consortium  (OGC)标准规范

  * WMS (client/server), non-transactional WFS (client/server), WMC, WCS, Filter Encoding, SLD, GML, SOS, OM

实例
--------------------------------------------------------------------------------

* `Itasca <http://localhost/mapserver_demos/itasca/>`_

文档
--------------------------------------------------------------------------------

* `MapServer 6.0.2 Documentation <../../mapserver/doc/index.html>`_

详情请见
--------------------------------------------------------------------------------

**站点:** http://www.mapserver.org/

**版权:** `MIT-style license <http://mapserver.org/copyright.html#license>`_

**软件版本:** 6.0.2

**支持平台:** Windows, Linux, Mac

**API接口:** C, PHP, Python, Perl, Ruby, Java, and .NET

**支持:** http://mapserver.org/community/

快速入门
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/mapserver_quickstart>`
