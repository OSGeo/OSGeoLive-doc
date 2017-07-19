.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip: 
  Project logos are stored here:
    https://github.com/OSGeo/OSGeoLive-doc/tree/master/images/project_logos
  and accessed here:
    /images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: /images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: /images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Geography Markup Language (GML) 地理注记
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

　　GML (http://www.opengeospatial.org/standards/gml) 是一种 XML 语法，用于表述地理要素。它既是 GIS 系统的数据类型，也是网络中公开交换地理信息的媒介。它不仅包含了传统的矢量信息，也包含了观测信息的某些成分，具有很高的通用性。

.. image:: /images/standards/gml.jpg
  :scale: 55%
  :alt: GML in Context

　　GML 原型有多种，各自适用于不同的用途：

* Feature 地理要素
* Geometry 几何对象
* Coordinate Reference System 坐标系统
* Topology 拓扑对象
* Time 时间
* Dynamic feature 动态要素
* Coverage (including geographic images) 栅格数据
* Unit of measure 单位
* Directions 方向
* Observations 观测
* Map presentation styling rules 样式规则

　　理解 “Feature”、“Geometry” 和 “CRS” 是实现 GML 的核心。

　　OGC 于 1998 年开始制定 GML，首次正式成为标准在 2001 年。它于 2007 年成为 ISO 标准。GML 3.2.16 是 OGC-ISO 联合标准的最新版本。3.2.20 和 4.0 正在修订中。

相关信息
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* CityGML
* GeosciML
* GML in JPEG 2000
* :doc:`wfs_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* :doc:`fe_overview`
