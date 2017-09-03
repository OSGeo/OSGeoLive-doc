:Author: Massimo Di Stefano
:Author: Pirmin Kalberer
:Translator(Zh): Zhengfan Lin
:Version: OSGeo-Live 4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-ossim.png
  :scale: 80 %
  :alt: project logo
  :align: right

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
Ossim 快速入门 
********************************************************************************

　　Open Source Software Image Map (OOSIM) 是一款高性能的图像引擎，适用于遥感、图像处理、地理信息系统和摄影测量领域。

　　本文介绍：

  * 在 imagelinker 子系统中查看栅格数据；
  * 运行 ossimPlanet 虚拟地球。

Imagelinker
================================================================================

* 从 "Spatial Tools" 目录启动 Imagelinker ；
* 通过 :menuselection:`File --> Open Project --> /home/user/ossim/landsatrgb.prj` 开启示例工程；
* 点击 :menuselection:`menu bar --> window --> tile` 选择平铺窗口；
* 选择 :menuselection:`image window --> pan 图标 --> 点击影像 --> 点击 "propagate"` ；
* 窗口中应出现三幅灰阶影像。

  .. image:: /images/screenshots/ossim/ossim_imagelinker2.jpg
     :scale: 100 %

　　更多内容请看相关 `博文`_ 。

.. _`博文`: http://www.geofemengineering.it/GeofemEngineering/Blog/Voci/2010/3/15_OSGEO_-_Live_-_DVD_-_%22running_imagelinker%22.html


OssimPlanet
================================================================================

* 从 "Desktop-GIS" 目录启动 OssimPlanet ；

* 选择 :menuselection:`File --> Open Image --> /home/user/data/raster/band1.tiff` 文件；

* 在 :menuselection:`menu --> Open kml --> /home/user/data/kml/*.kml` 选择 xml 文件；

* 通过 :menuselection:`legend tree --> Image Layers --> open the trees --> 双击 band1 影象` 移动视角至影像；

* 浏览影像。


.. 注：::
  　　取消 :menuselection:`File --> Preferences --> Environment --> Enable Ephemeris` 的勾选可以关闭光影渲染。


更多内容
================================================================================

* Ossim 教程

　　通过 教程_ 学习 Ossim 的更多操作。

.. _教程: http://download.osgeo.org/ossim/tutorials/pdfs/

* Live 本地文档

　　本地 文档_ 也包含了更多的操作指南。

.. _文档: ../../ossim/

