:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://mapserver.org/trunk/tinyows/

********************************************************************************
TinyOWS 快速入门文档
********************************************************************************

　　TinyOWS 是一款高性能的事务性网络地理要素服务（WFS-T）系统。它使用 CGI 或 FastCGI 接口和 :doc:`PostGIS <../overview/postgis_overview>` 存储，轻量而易于部署。

　　本文演示：

  * 在 QGIS 渲染显示 WFS 图层
  * 在 QGIS 以 WFS-T 工具编辑 WFS 图层


以 QGIS 显示 WFS 图层
================================================================================

#. 在桌面选择 :menuselection:`Desktop --> Desktop GIS --> Quantum GIS` 。

#. 点击菜单 :menuselection:`Layer --> Add PostGIS Layer...` 。

   * 首先显示 PostGIS 原有图层。

#. 选择 :guilabel:`New` 新建。

#. 以 **tinyows_demo** 为连接名称。

#. 点击 :guilabel:`OK` 。

#. 点击 :guilabel:`Connect` 连接。

#. 在表单列表中选择 **france** 。

#. 点击 :guilabel:`Add` 添加。

#. 放大至合适的比例。

#. 选择 :menuselection:`Plugins -> Manage Plugins -> WFS Plugin -> OK` 。

   * 打开 WFS 图层插件

#. 点击 :menuselection:`Layer --> Add WFS Layer...` 。

   * 现在从表单导入 WFS 图层。

#. 点击 :guilabel:`New` 。

#. 输入 **tinyows** 为名称（name），**http://localhost/cgi-bin/tinyows** 为 URL

#. 点击 :guilabel:`OK` 。

#. 点击 :guilabel:`Connect` 连接。

#. 在图层列表选择 **ows:france** 。

#. 选中 :guilabel:`Only request features overlapping the current view extent` （只获取当前显示范围内的要素）。

#. 点击 :guilabel:`OK` 。

   * WFS 图层将显示：

.. image:: /images/screenshots/800x600/tinyows_wfs_layer.png
  :scale: 80 %

使用 WFS-T 编辑数据
================================================================================

#. 选择 :menuselection:`Layer --> Toggle Editing` 启动编辑。

#. 选择 :menuselection:`Edit --> Node Tool` 节点工具。

#. 将一个节点（十字线）拖动。

#. 点击 :menuselection:`Layer --> Save edits` 保存。

#. 取消勾选 **tows:france** 图层。

   * 新的数据将直接从 PostGIS 载入，以新的颜色显示。


其它信息
================================================================================

　　请访问 MapServer 主页的 `TinyOWS 文档`_ 了解进一步的信息。

.. _`TinyOWS 文档`: http://mapserver.org/trunk/tinyows/

