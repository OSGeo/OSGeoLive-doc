:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-osgearth.png
  :alt: project logo
  :align: right
  :target: http://osgearth.org/


osgEarth
================================================================================

地形渲染引擎
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　osgEarth 是一款可规模化的地景渲染工具箱，用于在 OpenSceneGraph_ （OSG），一款开源、高性能的 3D 渲染工具处理地理信息。只需创建一个简单的 XML 文件，指向影响、高程和矢量模型信息，导入 OpenSceneGraph 中，即可实现渲染。

　　osgEarth 支持大量的数据格式。它带有众多的教学示例帮助用户快速上手。

.. _OpenSceneGraph: http://www.openscenegraph.org/

.. image:: /images/projects/1024x768/osgearth.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Core Features
--------------------------------------------------------------------------------

osgEarth 用于快速地部署不同精度的地景模型：

* 收集数据后离线或直接在数据采集中即时生成地形模型
* 无需编程即可处理全球地形模型 
* 层叠高分辨率影象与低分辨率的底图上
* 即时组合显示多种影响、高程和矢量数据 
* 地图切片缓存加速 
* 多影象半透明叠加 

osgEarth 不仅能够渲染地表环境，还可以： 

* 将矢量数据投影至地形模型
* 转换不同坐标和投影系统
* 通过坐标添加额外模型
* 高速的模型重叠检测
* 输出数据至 Virtual Planet Builder 数据库
* 对于非可视化处理，可直接指向所需的数据切片

osgEarth 可以渲染：

* GeoTIFF 影响与 DEM 数字高程文件，以及众多其它格式
* ESRI shp 等矢量格式 
* OGC 标准兼容的网络地图服务数据（例如 WMS_）
* MapServer_ 或 `ESRI ArcGIS Server`_ 发布的 GIS 数据
* OpenStreetMap_ 、 `ArcGIS Online`_ 、 `NASA OnEarth`_ 等网络服务

.. _WMS: http://www.opengeospatial.org
.. _MapServer: http://mapserver.org
.. _`ESRI ArcGIS Server`: http://www.esri.com/software/arcgis/arcgisserver/
.. _OpenStreetMap: http://openstreetmap.org
.. _`ArcGIS Online`: http://resources.esri.com/arcgisonlineservices/
.. _`NASA OnEarth`: http://onearth.jpl.nasa.gov


详细信息
--------------------------------------------------------------------------------

**官方网站：** http://osgearth.org/

**开源协议：** GNU Lesser General Public License (LGPL) 

**软件版本：** 2.5.0

**平台支持：** GNU/Linux, Mac, Windows

**API 接口：** C++

**商业支持：** http://osgearth.org/#ProfessionalServices


快速入门
--------------------------------------------------------------------------------

* :doc:`快速入门文档 <../quickstart/osgearth_quickstart>`


