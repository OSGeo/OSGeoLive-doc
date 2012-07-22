:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GDAL/OGR
================================================================================

地理空间数据转换工具
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geospatial Data Abstraction Library (GDAL/OGR)提供命令行工具集，可转换与处理绝大多数栅格和矢量空间数据格式。

该工具集基于跨平台的C++库，可被多数编程语言访问。作为一个基础库，它给出了一个单一抽象数据模型，支持应用程序调用所有支持格式。

GDAL/OGR是一个最广泛使用的地理空间数据访问库，为许多应用系统提供了主要数据访问引擎，包括MapServer,GRASS, QGIS, 和OpenEV。同时，也被其他软件利用，诸如OSSIM, Cadcorp SIS, FME, Google Earth, VTP, Thuban, ILWIS, MapGuide and ArcGIS.

.. image:: ../../images/screenshots/1024x768/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: GDAL supports many geodata formats
  :align: right

主要功能
--------------------------------------------------------------------------------

* 命令行工具集，用于data translation, image warping, subsetting, 和其他众多的通用任务
* 高效的栅格数据访问，充分利用切片和全视图
* 支持大文件 - 大至4GB
* 库访问接口，Python, Java, C#, Ruby, VB6和Perl
* 基于PROJ.4的坐标系统引擎和OGC Well Known Text（WKT）坐标系统描述

流行的支持格式
--------------------------------------------------------------------------------

GDAL支持50余个栅格格式，OGR达20余个矢量格式。

例如:

* **栅格:** GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000, DTED, and more ...
* **矢量:** MapInfo (tab and mid/mif), ESRI Shapefile, ESRI Coverages, ESRI Personal Geodatabase, DGN, GML, PostGIS, Oracle Spatial, and more ...

已经实现的标准规范
--------------------------------------------------------------------------------

OGR矢量数据模型兼容OGC Simple Features标准规范

详情请见
--------------------------------------------------------------------------------

**网站:**  http://www.gdal.org

**版权:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**软件版本:** 1.7.0 (1.9.1)

**支持平台:** Windows, Linux, Mac

**API接口:** C, C++, Python, Java, C#, Ruby, VB6 and Perl

**支持:** http://gdal.osgeo.org/#index_maillist, http://www.osgeo.org/search_profile

快速入门
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/gdal_quickstart>`
