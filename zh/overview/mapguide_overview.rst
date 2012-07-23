:Author: Trevor Wekel
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-MapGuideOS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://mapguide.osgeo.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapGuide Open Source
================================================================================

Web服务
--------------------------------------------------------------------------------

`MapGuide Open Source <http://mapguide.osgeo.org/>`_ 是一个Web-GIS平台，支持用户开发和部署Web制图应用系统和地理空间Web服务系统。MapGuide特色均体现在一个交互式显示插件中，支持地物选择、属性检查、地图提示、以及诸如buffer、select within和measure空间操作。

MapGuide包括了一个XML数据库用以管理内容，支持用户使用Maestro编辑XML数据库和构建网站而无需编写任何程序代码。MapGuide还支持多数流行的空间数据相关的文件格式、数据库和标准规范。

MapGuide可以部署在Linux或Windows上，支持Apache和IIS服务器，提供众多的PHP, .NET, Java和JavaScript等API接口以支持应用程序开发。MapGuide Open Source版权是LGPL。

.. image:: ../../images/screenshots/1024x768/mapguide_viewer.png
  :scale: 50%
  :alt: screenshot
  :align: right

.. note:: Due to space constraints on the DVD, MapGuide is currently
  not installed. To install it open up a terminal and
  run ``cd gisvm/bin; sudo ./install_mapguide.sh``

主要功能
--------------------------------------------------------------------------------

**交互式地图显示**

* 动态的基于浏览器的显示插件 
* 地物选择和属性表示 
* 缓冲区操作、查询操作
* 打印和绘图

**高质量制图输出**

* 对应于比例尺的地图细节
* 规则驱动的专题图风格定制
* 抗锯齿性能的图像渲染
* 真彩色支持

**内置资源数据库支持强大管理**

* 分层存储的XML资源文档定义了地图、图层和数据连接
* 定义一次数据源和图层，可在多个地图中使用
* 基于访问控制的安全模型，支持可继承的许可

**统一的数据访问**

* 优先采用了特有的Feature Data Objects (FDO) API接口访问矢量和栅格数据
* 提供标准化方法访问各种各样的数据源，包括SHP, SDF, Oracle, MySQL, 和PostGIS

**灵活的应用开发**

* PHP, .NET, 和Java均可用于开发应用

**广泛的服务器端API接口**

* 创建、查询、读和写永久的或基于会话session的XML资源文档
* 查询和更新地物要素数据
* 投影坐标转换
* 创建、操作和分析几何图形
* 操作正运行的地图和图层

**快速、可扩展、安全的服务器平台**

* 完全多线程化，充分利用多核服务器机能
* 服务器间的负载平衡
* 数据库连接池
* 集成式的切片缓存

**多平台支持**

* 可部署在Microsoft Windows或Linux
* 采用Apache或Microsoft IIS支持应用系统服务
* 浏览器支持Microsoft Internet Explorer, Mozilla Firefox, Safari和Chrome

已实现的标准规范
--------------------------------------------------------------------------------

* OGC Web Map Service 1.1.1 

详情请见
--------------------------------------------------------------------------------

**网站:** http://mapguide.osgeo.org/

**版权:** GNU Lesser General Public License (LGPL) 

**软件版本:** 2.4.0 Pre-Release

**支持平台:** Linux, Windows

**商业支持:** http://www.osgeo.org/search_profile


快速入门
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/mapguide_quickstart>`


