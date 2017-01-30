:Author: Frank Warmerdam
:Reviewer: Cameron Shorter, LISAsoft
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GEOS.png
  :alt: project logo
  :align: right
  :target: http://geos.osgeo.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GEOS
================================================================================

空间信息处理函数库
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　GEOS (Geometry Engine - Open Source) 是 `JTS 拓扑学工具箱 <https://sourceforge.net/projects/jts-topo-suite/>`_ 的 C++ 接口。它具备了 OpenGIS 标准的空间对象操作能力及 JTS 所提供的增强的拓扑运算功能。

　　GEOS 是目前应用最为广泛的 C++ 地理空间集合函数库。它被用于 :doc:`PostGIS <postgis_overview>` 、:doc:`QGIS <qgis_overview>` 、:doc:`GDAL/OGR <gdal_overview>` 、:doc:`MapServer <mapserver_overview>` 等开源软件以及 `FME <http://www.safe.com/fme/fme-technology/>`_ 等私有软件。

标准规范实现
--------------------------------------------------------------------------------

* OpenGIS Simple Features SQL 空间数据库检索与编辑

核心功能
--------------------------------------------------------------------------------
    
* 几何要素：点、线、面、多点、多线、多面、混合几何要素集
* 检索操作：重叠、接触、非接触、相交、包含、交叠、等同、覆盖
* 编辑操作：并集、交际、距离运算、异或、包络线、边界框、缓冲、抽稀、面组合、拓扑校验、几何尺寸运算 
* Prepared geometries 检索信息缓存与重用
* STR 空间索引
* OGC Well Known Text (WKT) 及 Well Known Binary (WKB) 编码支持
* C/C++ 接口（C 接口提高了底层 ABI 接口的兼容性）
* 多线程安全性（基于可重入的 API）

详情请见
--------------------------------------------------------------------------------

**官方网站：**  http://geos.osgeo.org/

**开源协议：** LGPL

**软件版本：** 3.4.2

**平台支持：** Windows, Linux, Mac

**API 接口** C, C++

**技术支持：** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile


