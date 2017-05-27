:Author: Paul Meems, TopX Geo-ICT The Netherlands (RST conversion)
:Reviewer: Cameron Shorter, Jirotech
:Product: MapWindow GIS 4.8.6
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-MapWindow.png
  :alt: MapWindow GIS
  :align: right
  :width: 220
  :height: 38
  :target: http://www.mapwindow.org
 
Map Window GIS
================================================================================

桌面 GIS 系统
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　Map Window GIS 是一套 MS Windows 系统下的开源地理信息软件和数据服务客户端，可以对地理信息数据进行管理、编辑、可视化表达与分析，并设计和输出可用于印刷的地图。通过对 GEOS 和 GDAL/OGR 软件的集成，它可以实现复杂的空间分析功能。

　　Map Window 基于 ActiveX Controls，适于同 MS-Office 系列中的 MS-Excel、MS-Access 和用 VB6、C++、C#、VB.NET、Delphi 等语言开发的软件联合使用。

注：Map Window 需要在 Microsoft Windows 操作系统下安装和运行。在 `OSGeo-Live <http://live.osgeo.org>`_ 完整版及 `官方下载页面 <http://mapwindow4.codeplex.com/releases>`_ 可以下载其安装文件。
   
.. image:: ../../images/screenshots/1024x768/mapwindow-screenshot.jpg
  :alt: Mapwindow Screenshot
  :scale: 50 %
  :align: right

核心功能
--------------------------------------------------------------------------------

* 友好的图形界面：

    * 要素识别与选择
    * 属性浏览、搜索和编辑
    * 即时重投影
    * 地图印刷布局设计
    * 要素标注
    * 矢量与栅格对象显示样式设置
    * 其它更多特性

* 支持众多矢量与栅格数据格式：

    * 多数常见矢量格式，包括 ESRI shp、MapInfo、SDTS 和 GML
    * 包括各类高程模型、航空照片和卫星影响在内的栅格数据
    * OpenStreetMap、ArcGIS Online 等切片服务

* 创建、编辑和输出：

    * 以矢量化工具创建 shp 矢量文件
    * 数据空间校准（Georeferencer 插件）
    * GPS 工具可输入和输出 GPX 文件，并可从其它 GPS 格式转换至 GPX 或直接对 GPS 设备输入和输出

* 基于插件系统的空间分析能力：

    * 地图代数
    * 地形分析
    * 水文学建模（TauDEM）
    * 网络分析
    * 其它更多功能

* 易于扩展的插件机制：

    * 插件机制使得 MapWindow 易于扩展。插件可以用任何 .NET language（C#、VB.NET）语言在 Visual Studio Pro 或免费的 Sharp Develop 及 Visual Studio Express 下开发。
 
* ActiveX Control：

    * 使用一套 C++ 编写的 ActiveX Control 机制，可用于 VB6、C++、C#、VB.NET 和 Delphi 开发的软件，并可用于 MS-Office 的 Access 和 Excel。

标准实现
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* OGC 开放地理信息联盟标准： 
    * WMS 网络地图服务（v1.1, v1.3）
    * WFS 网络地理要素服务v1.1（需插件支持）
    * WMTS 网络地图切片服务
    * GML 地理标注

详细信息
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**官方网站：** http://www.mapwindow.org

**开源协议：** MPLv1.1

**软件版本：** 4.8.6

**平台支持：** MS Windows

**API 接口：** Visual Basic 6, VBA (MS-Access, MS-Excel), C++, .NET (C#, VB.NET)

**社区支持：** http://www.mapwindow.org/apps/wiki/doku.php?id=forums

**商业支持：** http://www.mapwindow.nl, http://www.mapwindow.in/, http://www.mapwindow.org/pages/donate.php


快速入门
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* :doc:`快速入门文档 <../quickstart/mapwindow_quickstart>`
