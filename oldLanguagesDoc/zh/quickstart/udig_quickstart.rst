.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  This Quick Start should describe how to run a simple example, which
    covers one of the application's primary functions.
  The Quick Start should be able to be executed in around 5 minutes.
  The Quick Start may optionally include a few more sections
    which describes how to run extra functions.
  This document should describe every detailed step to get the application
    to work, including every screen shot involved in the sequence.
  Finish off with "Things to Try" and "What Next?" sections.
  Assume the user has very little domain expertise, so spell everything out.
  If using example data, please use the general layers from NaturalEarth
   and Open Street Map. These layers are loaded into:
   Open Street Map:
     /home/user/data/osm/
   Vector Data: Available as .shp files
     /home/user/data/natural_earth2/
       cultural/ne_10m-populated-places
       cultural/ne_10m-admin-0-countries
       cultural/ne_10m-urban-area
       physical/ne_10m-land
       physical/ne_10m-ocean
       physical/ne_10m-lakes
       physical/ne_10m-rivers-lake-centerlines
   Raster Raster basemap Cross Blended Hypso with Shaded Relief and Water
     1:50 million (40mb). Available as .tif
     /home/user/data/natural_earth2/HYP_50M_SR_W.*

.. Writing Tip:
  Metadata about this document

:Author: OSGeo-Live
:Author: Jody Garnett
:Author: Frank Gasdorf
:Version: osgeo-live5.0draft
:Translator: Zhengfan Lin
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
:Thanks: udig-devel list

.. image:: ../../images/project_logos/logo-uDig.png
  :scale: 60 %
  :alt: project logo
  :align: right

********************************************************************************
uDig 快速入门 
********************************************************************************

.. Writing Tip:
  First sentence defines what the application does.
  You may also need to include a sentence of two describing the domain.
  Eg: For a Business Intelligence application, you should describe what
  Business Intelligence is.

　　uDig（User Friendly Internet Desktop GIS）是一款用于浏览和编辑地理信息的桌面 GIS 系统。

.. Writing Tip:
  Describe what will be covered in this Quick Start.

　　本文演示：

  * 从 shp 文件和 :doc:`Web Map Service (WMS) <../standards/wms_overview>` 导入数据
  * 基本工具操作
  * 配置要素样式的颜色

.. contents:: 目录
  
启动 uDig
================================================================================

.. Writing Tip:
  Describe steps to start the application
  This should include a graphic of the pull-down list, with a red circle
  around the application menu option.
  #. A hash numbers instructions. There should be only one instruction per
     hash.

.. TBD: Add menu graphic to this uDig Quickstart

#. 从桌面 |osgeolive-appmenupath-udig| 启动。
#. 系统初始化将花费一些时间。

.. image:: ../../images/screenshots/800x600/udig_Quickstart1Splash.png
   :scale: 70 %

.. Writing Tip:
  For images, use a scale of 50% from a 1024x768 display (preferred) or
  70% from a 800x600 display.
  Images should be stored here:
    https://github.com/OSGeo/OSGeoLive-doc/tree/master/images/screenshots/1024x768/


　　若启动软件有任何问题，请查看 `Running uDig <http://udig.refractions.net/files/docs/latest/user/Running%20uDig.html>`_ 文档。

欢迎界面
================================================================================

#. 首次启动时，欢迎界面将展示教程、文档和项目网站信息。

#. 点击箭头形的 Workbench 图标（右上角）开启主界面。
  
  .. image:: ../../images/screenshots/800x600/udig_welcome.png
   :scale: 70 %
   
　　在主界面菜单栏选择 :menuselection:`Help --> Welcome` 可以回到欢迎界面。

主界面
================================================================================

　　主界面提供了一种编辑面板（显示地图）和信息面板（显示与地图和要素有关的信息）。

  .. image:: ../../images/screenshots/800x600/udig_workbench.png
   :scale: 70 %

　　一个典型的 uDig 会话如下：

	#. 图层 (1), 
	#. 项目 (2), 
	#. 编录 (3), 
	#. 地图 (4). 

　　其具体功能详见后述。

文件
================================================================================

　　首先，读取 Live 系统上内建的数据集。

#. 从菜单选择 :menuselection:`Layer --> Add` 打开 **Add Data** 界面。

#. 从数据来源（data sources）选择 **Files** 。

#. 点击 :guilabel:`Next` 打开文件对话框。

#. 在 OSGeo-Live DVD 包含的示例数据位于：

   * :file:`~/data` (a short cut to :file:`/usr/local/share/data`)

#. 从 :file:`natural_earth2` 选择：
   
   * :file:`ne_10m_admin_0_countries.shp`
   
#. 点击 :guilabel:`Open` 打开。
   
   * 一个新的编辑器将启动。其默认名称和投影是根据源文件设定的。
   
   * 同时，在 **Catalog view** 显示了数据文件 :file:`ne_10m_admin_0_countries.shp` 。这个面板显示当前 uDig 使用的数据。
   
   * 在 **Layers** 图层表显示了一个图层。该面板可以更改图层顺序和样式。
   
   * 在 **Projects** 工程面板可以看到当前工程是 `projects > ne 10m admin 0 countries` 。用户可以同时操作多个工程，各个工程也可以同时使用多个地图视图。

#. 从文件管理器打开 :file:`~/data/natural_earth2/` 目录：

#. 将 :file:`HYP_50M_SR_W.tif` 拖拽到地图试图即可添加新图层。

#. 图层表显示了图层的叠压顺序。当前 `HYP_50M_SR_W` 位于 `ne 10m admin 0 countries` 之上。

#. 选择 `HYP_50M_SR_W` 图层拖拽至列表底部。
  
  .. image:: ../../images/screenshots/800x600/udig_QuickstartCountriesMap.png
   :scale: 70 %

.. Writing Tip:
  Notes are used to provide descriptions and background information without
  getting in the way of instructions. Notes will likely be rendered in
  the margin in some printed formats.

.. note::
   企业和大型组织用户常常关心的一个问题是 uDig 的内存消耗。uDig 系统的内存资源占用很小，只有在必须渲染或操作时数据才会载入内存。

.. Writing Tip:
  Tips are used to provide extra useful information, and will 
  likely be rendered in the margin in some printed formats.

.. tip:: 您也可以直接推拽 shp 文件载入。

Map
================================================================================

　　在地图编辑界面中，顶部导航工具栏的工具可用于移动和缩放视野。


#. 缩放 |ZOOM| 是默认工具。
   
   .. |ZOOM| image:: ../../images/screenshots/800x600/udig_zoom_mode.png
   
   * 拖拽放大到指定区域
   * 右键缩小，右键推拽将控制当前视野在缩放后的范围。

#. 平移 |PAN| 工具用于移动视野。
  
   .. |PAN| image:: ../../images/screenshots/800x600/udig_pan_mode.png

#. 其它工具：

   * 全局试图 |SHOWALL| 

     .. |SHOWALL| image:: ../../images/screenshots/800x600/udig_zoom_extent_co.png

   * 放大 |ZOOM_IN| 和缩小 |ZOOM_OUT| 每次动作的比例可以调节。

     .. |ZOOM_IN| image:: ../../images/screenshots/800x600/udig_zoom_in_co.png
     .. |ZOOM_OUT| image:: ../../images/screenshots/800x600/udig_zoom_out_co.png

   * 回退 |BNAV| 前进 |FNAV| 可以返回之前的设置。

     .. |BNAV| image:: ../../images/screenshots/800x600/udig_backward_nav.png
     .. |FNAV| image:: ../../images/screenshots/800x600/udig_forward_nav.png

.. tip:: 按住鼠标中键可以平移，滚轮可用于缩放。

网络地图服务（WMS）
================================================================================

　　使用 uDig 可以方便地使用众多的公共网络地图服务。本例使用 WMS 服务混合其它信息。

.. note:: 若没有英特网连接，运行 |osgeolive-appmenupath-geoserver| 可以获得一个本地 WMS 服务。该脚本会开启一个 "Service Capabilities" 并显示两个 WMS URL 。将其拖拽至 uDig 即可。

.. tip:: 使用 **Add Data** （:menuselection:`Layer --> Add...`）也可以连接 WMS 。

#. 从菜单选择 :menuselection:`File --> New --> New Map` 。

#. 点击 **Catalog** 旁边的 *Web* 更换至网络服务试图。

	.. image:: ../../images/screenshots/800x600/udig_WebViewClick.png
		:scale: 50 %

#. 点击 link WMS\:`dm solutions`_ 连接

	.. _dm solutions: http://www2.dmsolutions.ca/cgi-bin/mswms_gmap?Service=WMS&VERSION=1.1.0&REQUEST=GetCapabilities

#. 在 Resource Selection 选择：

   * Elevation/Bathymetry
   * Parks
   * Cities
   
	.. image:: ../../images/screenshots/800x600/udig_AddWMSLayers.png
		:scale: 70 %

#. 点击 :guilabel:`Finish` 添加图层
   
	.. image:: ../../images/screenshots/800x600/udig_WMSMap.png
		:scale: 70 %

#. 使用 |ZOOM| 放大至一个公园（park）

#. 使用 |INFO| 属性工具点击一个要素了解其属性

.. |INFO| image:: ../../images/screenshots/800x600/udig_info_mode.png

.. tip:: 使用 `Z` 和 `I` 可以在两个工具间快速切换。

样式
================================================================================

#. 选择 `project > ne 10m admin 0 countries` 并双击打开。

#. 选择 countries 图层。

#. 右击 `ne 10m admin 0 countries` 选择 :guilabel:`Change Style` 打开 **Style Editor** 样式编辑器。

#. 调整该图层的几个样式设置：

   * 边界线：点击 :guilabel:`Border` 选择颜色（color）并调整。
   
   * 填充：点击 :guilabel:`Fill` 并取消 :guilabel:`enable/disable fill` 可关闭填充。
   
   * 标注：点击 :guilabel:`Labels` 选择 :guilabel:`enable/disable labeling` 并选中 **NAME** 字段用于标注。

   .. image:: ../../images/screenshots/800x600/udig_StyleEditor.png
      :scale: 70 %

#. 点击 :guilabel:`Apply` 应用样式，在 **Layer** 视图中的渲染结果会更新。

#. 点击 :guilabel:`Close` 关闭。

.. note:: 有些文件可以存储样式信息，例如 :file:`*.sld` 。其主文件名同相应的数据文件应相同。这样的 :doc:`Styled Layer Description (SLD) <../standards/sld_overview>` 样式文件存在时会被自动应用。

　　若图层较多，编辑样式时可能难以看清效果。点击 :menuselection:`Map --> Mylar` 并在 *Layer* 试图关闭一些图层可能有助于编辑。再次选取 :menuselection:`Map --> Mylar` 可以关闭这一效果。
  
	.. image:: ../../images/screenshots/800x600/udig_MapMylar.png
		:scale: 70 %

.. Writing tip
  The final heading should provide pointers to further tutorials,
  documentation or further things to try.
  Present a list of ideas for people to try out. Start off very specific
  with something most people can do based on the materials as presented.
  Continue on with a challenge that involves a small bit of research (it
  is recommended that research be limited to something that can be
  found in documentation packaged on OSGeo-Live, as users might not be
  connected to the Internet.

其它尝试
================================================================================

　　您可以继续尝试其它操作：

#. 添加您自己的数据或 :doc:`Web Feature Service <../standards/wfs_overview>` 服务。
#. 更改 WFS 样式。

其它信息
================================================================================

.. Writing tip
  Provide links to further tutorials and other documentation.

　　完成以上基本的演示后，您可以通过 **Walkthrough** 文档了解更多有关 uDig 的具体信息。

* Walkthrough 1

  使用 :doc:`PostGIS <../overview/postgis_overview>` 从 WFS 读取要素。了解 **Themes** 主题配置和 `Color Brewer` 技术。

  :file:`/usr/local/share/udig/udig-docs/uDigWalkthrough 1.pdf`

* Walkthrough 2 - 学习如何创建 shp 文件并编辑要素数据。本文涉及安装 :doc:`GeoServer <../overview/geoserver_overview>` 和配置 WFS 。

  地址：http://udig.refractions.net/

