:Author: Klokan Petr Pridal
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-maptiler.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://www.maptiler.org/


MapTiler
================================================================================

地图发布
--------------------------------------------------------------------------------

MapTiler是一款桌面版应用程序，用于创建地图切片，支持快速栅格地图发布。它将地理数据转换成同Google Maps和Earth相兼容的切片，可直接上载到任何WEB服务器或云存储装置（如Amazon S3）进行发布。

在服务器端无需额外配置，任何简单文件配置即可。诸如平移与缩放、标记和矢量数据的重叠等动态交互均由强大的浏览器功能提供。

该应用程序直接产生一个基于OpenLayers和Google Mapserver API的即生即用式的简单查看器，可以容易地进行再定制。

MapTiler是一个多平台桌面应用程序。安装程序版本有Windows, Mac OS X和linux (Debian/Ubuntu).

主要功能
--------------------------------------------------------------------------------

* 支持知名的Javascript API: OpenLayers, Google Maps API
* 无需额外服务器端软件
* 随处都可部署: 云存储如Amazon S3，或者任何便宜的可通过FTP访问的"unlimited" Web站点
* 容易同商业图层(Google, Bing, Yahoo)或OpenStreetMap混搭使用
* 切片遵循OSGEO TMS (Tile Map Service规范)
* 能够处理各种格式的栅格数据: TIFF/GeoTIFF, MrSID, ECW, JPEG2000, Erdas HFA, NOAA BSB, JPEG and more...
* 可得到较好的商业支持和多核CPU或Amazon EC2集群的并行渲染

详情请见
--------------------------------------------------------------------------------

**网站:** http://www.maptiler.org/

**版权:** New BSD License

**软件版本:** 1.0beta2

**支持平台:** Windows, Linux, Mac

**社团:** http://groups.google.com/group/maptiler 

**商业支持和应用:** http://www.maptiler.com/

快速入门
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/maptiler_quickstart>`
