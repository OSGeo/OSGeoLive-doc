:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-GDAL.png
  :alt: project logo
  :align: right
  :target: http://gdal.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GDAL/OGR
================================================================================

地理空间数据转换工具
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　Geospatial Data Abstraction Library (GDAL/OGR) 提供命令行工具集，可转换与处理绝大多数栅格和矢量空间数据格式。

　　该工具集基于跨平台的C++库，可被多数编程语言访问。作为一个基础库，它给出了一个单一抽象数据模型，支持应用程序调用所有支持格式。

　　GDAL/OGR 是一个最广泛使用的地理空间数据访问库，为许多应用系统提供了主要数据访问引擎，包括 MapServer、GRASS、QGIS 和 OpenEV 。同时，也被其他软件利用，诸如OSSIM, Cadcorp SIS, FME, Google Earth, VTP, Thuban, ILWIS, MapGuide and ArcGIS.

.. image:: /images/screenshots/1024x768/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: GDAL supports many geodata formats
  :align: right

主要功能
--------------------------------------------------------------------------------

* 命令行工具集，用于数据转换、矫正、裁切和其他众多的常规操作
* 高效的栅格数据访问，充分利用切片和全视图
* 支持大文件 - 大至4GB
* 库访问接口，Python, Java, C#, Ruby, VB6 和 Perl
* 基于 PROJ.4 的坐标系统引擎和 OGC Well Known Text（WKT）坐标系统描述

流行的支持格式
--------------------------------------------------------------------------------

　　GDAL支持 50 余个栅格格式，`OGR <http://trac.osgeo.org/mapserver/wiki/OGR>`_ 的 20 余个矢量格式。

例如:

* **栅格:** GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000, DTED 等
* **矢量:** MapInfo (tab and mid/mif), ESRI Shapefile, ESRI Coverages, ESRI Personal Geodatabase, DGN, GML, PostGIS, Oracle Spatial 等

已经实现的标准规范
--------------------------------------------------------------------------------

OGR矢量数据模型兼容 OGC Simple Features 标准规范

详情请见
--------------------------------------------------------------------------------

**网站:**  http://www.gdal.org

**版权:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**软件版本:** |version-gdal|

**支持平台:** Windows, Linux, Mac

**API接口:** C, C++, Python, Java, C#, Ruby, VB6 and Perl

**支持:** http://lists.osgeo.org/mailman/listinfo/gdal-dev, http://www.osgeo.org/search_profile

快速入门
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/gdal_quickstart>`
