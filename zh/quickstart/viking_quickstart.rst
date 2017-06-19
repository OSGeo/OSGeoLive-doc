:Author: Hamish Bowman
:Version: osgeo-live6.5
:Translator: Zhengfan Lin
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-viking.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://sourceforge.net/apps/mediawiki/viking/

********************************************************************************
Viking 快速入门 
********************************************************************************

启动和运行
================================================================================

启动程序
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. from /usr/share/doc/viking/GETTING_STARTED

　　按照以下说明尝试基本操作：

1) 从 GPS 设备得到一些航迹数据。在 :file:`~/data/vector/R/test_trk2.gpx` 可以得到一份样本。

2) 打开 Viking 并使用 :menuselection:`File --> Open` 打开 GPX 航迹文件。Viking 将自动调整地图的中心点。某些时候路径点很分散导致图上没有显示。此时可以使用鼠标滚轮缩小比例，使用左键或中间拖拽移动视图，或者展开图层列表中加入的数据，在路点（Waypoints）中选择一个右击选择“Goto”移动到其位置。

3) 通过 (:menuselection:`Layers --> New Map Layer`) 添加地图图层。使用 *OpenStreetMap (Mapnik)* 是一个不错的方案。若有必要，调整缓存位置（cache directory）。调整“alpha”可以改变该图层的透明度。选中 `Autodownload map` 将开启自动下载。使用 :menuselection:`Tools --> Maps Download` 可以手动下载。将 `Zoom level` 设为 *Use Viking Zoom Level* 可以让底图缩放级别与 Viking 一致。

4) 此时底图会显示在航迹线上方。在图层表中，"Map" 底图图层位于 Track/Waypoint 航迹图层之上。推拽图层可以改变其叠压顺序。

.. TODO: some explanation of the layers, etc. is required.

.. Geocoding: available in version 1.3 and newer
