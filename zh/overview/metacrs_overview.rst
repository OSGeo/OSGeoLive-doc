:Author: Mike Adair
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. (no logo) .. image:: /images/project_logos/logo-GDAL.png
..  :alt: project logo
..  :align: right
..  :target: http://trac.osgeo.org/metacrs/wiki

.. image:: /images/logos/OSGeo_community.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

Meta CRS
================================================================================

地理坐标变换系统
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/project_logos/logo-metacrs.png
  :alt: map projection example
  :align: right
  :target: http://trac.osgeo.org/metacrs/wiki


　　 `Meta CRS 计划工作组 <http://trac.osgeo.org/metacrs/wiki>`_ 提供了一套函数库，用于对不同地理坐标系统和投影系统下的坐标数据进行转换。地理坐标系统使得地球上的一切点位可以用一组坐标表示，例如经度、纬度和高程。三维空间到二维地图表示的投影系统有不同的定义。

　　Meta CRS 函数库被用于许多地理信息系统中，也能以命令行的方式使用。

　　Meta CRS 包含了以下分支：

* PROJ.4 (C++) - 用于 MapServer, GRASS GIS, PostGIS, Mapnik, Thuban, OGDI, TopoCad, OGRCoordinateTransformation 等众多项目
* Proj4js (JavaScript) - 用于 Open Layers
* CS-Map (C++) - 用于 Map Guide
* GeoTIFF/libgeotiff (C++)
* Proj4J (Java)
* `SpatialReference.org <http://spatialreference.org/>`_  - 坐标系统数据网络服务

核心功能
--------------------------------------------------------------------------------

* 提供坐标点位在不同坐标系统中的变换
* 提供不同地理椭球参考间的变换
* 支持大量的坐标系统


标准实现
--------------------------------------------------------------------------------

该项目主要使用 `欧洲石油勘探协会（EPSG） <http://www.epsg.org/>`_ 提供的坐标系统数据，并使用 Well Known Text (WKT) 格式储存。

PROJ.4
--------------------------------------------------------------------------------

  **官方网站：**  http://trac.osgeo.org/proj/
  
  **开源协议：** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **软件版本：** 4.7.0
  
  **平台支持：** Windows, GNU/Linux, Mac
  
  **API 接口：** C, C++, Python, Java, Ruby
  
  **技术支持：** http://lists.maptools.org/mailman/listinfo/proj

Proj4js
--------------------------------------------------------------------------------

  **官方网站：**  http://proj4js.org
  
  **开源协议：** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **软件版本：** 1.1.0
  
  **平台支持：** Windows, GNU/Linux, Mac
  
  **API 接口：** JavaScript
  
  **技术支持：** http://lists.osgeo.org/mailman/listinfo/MetaCRS

CS-Map
--------------------------------------------------------------------------------

  **官方网站：**  http://trac.osgeo.org/csmap/
  
  **开源协议：** `custom <http://svn.osgeo.org/metacrs/csmap/trunk/CsMapDev/license.txt>`_
  
  **软件版本：** 13.0
  
  **平台支持：** Windows, GNU/Linux, Mac
 
  **API 接口：** C, C++

  **技术支持：** http://lists.osgeo.org/mailman/listinfo/MetaCRS

GeoTIFF/libgeotiff
--------------------------------------------------------------------------------

  **官方网站：**  http://trac.osgeo.org/geotiff/
  
  **开源协议：** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **软件版本：** 1.4.0
  
  **技术支持：** http://lists.maptools.org/mailman/listinfo/geotiff
  
Proj4J
--------------------------------------------------------------------------------

  **官方网站：**  http://trac.osgeo.org/proj4j/
  
  **开源协议：** `Apache License, Version 2.0 <http://www.apache.org/licenses/LICENSE-2.0>`_
    
  **平台支持：** Windows, GNU/Linux, Mac
 
  **API 接口：** Java
  
  **技术支持：** http://lists.osgeo.org/mailman/listinfo/proj4j
  
