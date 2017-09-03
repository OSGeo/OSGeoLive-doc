:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Translator: Zhengfan Lin
:Version: OSGeo-live 4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-qgis_mapserver.png
  :scale: 100 %
  :alt: project logo
  :align: right

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
QGIS 服务器 快速入门
********************************************************************************

　　QGIS Server 服务器利用 Quantum GIS（QGIS）桌面应用程序的组件为用户提供了一套网络地图服务（WMS）系统。

　　本文叙述的内容有：

  * 更新一个已有的 QGIS 工程并以 QGIS Server 渲染输出。
  * 新建 QGIS 工程并与浏览器中访问 WMS 服务。

QGIS Server 文档：
  * http://www.qgis.org/wiki/QGIS_Server_Tutorial

在 Debian/Ubuntu 安装：

  * :command:`apt-get install qgis-mapserver libapache2-mod-fcgid`
  * -> http://localhost/cgi-bin/qgis_mapserv.fcgi

QGIS 网页客户端：
  * https://github.com/qgis/qgis-web-client

启动 GeoExt 查看器
================================================================================

　　OSGeo-Live 包含了一个使用 GeoExt Javascript 框架建立的客户端，显示由 QGIS Server 渲染的地图图像。

* 选择 :menuselection:`Geospatial --> Web Services --> QGIS Server` 启动。

　　浏览器中将显示一幅世界地图。
   
.. image:: /images/screenshots/qgis/qgis_mapserver_browser.jpg

　　访问 http://localhost/qgis_server 这个 URL 也可以得到同样的结果。

　　接下来演示在 QGIS 中调整地图样式。


编辑 QGIS 工程
================================================================================

#. 选择 :menuselection:`Geospatial --> Desktop GIS --> Quantum GIS` 。

#. 从菜单选择 :menuselection:`File --> Open Project...` 。

#. 选择 :file:`QGIS-NaturalEarth-Example.qgs` 并点击 :guilabel:`Open` 打开文件。

   * 同样的地图现在由 QGIS 桌面系统渲染显示。

　　现在改变河流的样式，并在网页客户端查看结果。

#. 双击图层列表中的 :file:`ne_10m_rivers_lake_centerlines` 。

#. 在 Outline 选项改变颜色。

#. 点击 :guilabel:`OK` 确认。

   * 河流的渲染颜色改变。

#. 点击 :menuselection:`File --> Save Project` 保存工程。

#. 再次打开网页客户端。

#. 放大查看河流。

   * 河流现在以新的颜色显示。


新建 QGIS 工程
================================================================================

#. 打开 QGIS 界面。

#. 选择 :menuselection:`File --> New Project` 新建。

#. 选择 :menuselection:`Layer --> Add Vector Layer...` 添加图层。

#. 选择文件 :file:`/home/user/data/natural_earth2/ne_10m_admin_0_countries.shp` 。

#. 点击 :guilabel:`Open` 打开。

   * 界面中将显示世界的所有国家的疆界。

#. 选择 :menuselection:`File --> Save Project` 保存工程。

#. 输入 :file:`/home/user/world.qgs` 为工程名并点击 :guilabel:`Save` 保存。

#. 打开 `WMS URL <http://localhost/cgi-bin/qgis_mapserv?map=/home/user/world.qgs&SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=-91.901820,-180.000000,83.633800,180.000000&CRS=EPSG:4326&WIDTH=722&HEIGHT=352&LAYERS=ne_10m_admin_0_countries&STYLES=default&FORMAT=image/png&DPI=96&TRANSPARENT=true>`_ 。

   * 浏览器中将显示 QGIS Server 渲染的结果。


更多信息
================================================================================

　　更多有关 QGIS 服务器的信息请参阅 `QGIS 用户指南`_ 和 `QGIS 服务器维基`_ 。


.. _`QGIS 用户指南`: http://docs.qgis.org/html/en/docs/user_manual/working_with_ogc/ogc_server_support.html
.. _`QGIS 服务器维基`: http://hub.qgis.org/wiki/quantum-gis/QGIS_Server_Tutorial

