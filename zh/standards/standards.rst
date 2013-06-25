.. Geospatial Standards documentation master file, created by
   sphinx-quickstart on Mon Jul 19 08:52:52 2010.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Open Geospatial Consortium 开放地理空间信息联盟标准
================================================================================

简介
--------------------------------------------------------------------------------
　　开放地理空间信息联盟 Open Geospatial Consortium (OGC) 成立于 1994 年，其认为是将地理空间信息融入的到世界信息服务的框架之中。OGC 成员包括技术开发者和用户。他们在全球范围内合作建立地理信息技术的开放标准和最佳实践，为地理信息交换的便捷提供技术支持。这些技术从人造地球观测卫星复杂的运行设计和控制到简单的地理坐标编码和地图图像显示。您可以访问 `OGC Domain Working Groups <http://www.opengeospatial.org/projects/groups/wg>`_ 了解该组织各个部门当前的工作内容。

OGC 基准与 OGC 参考模型
--------------------------------------------------------------------------------

　　OGC 标准化包含了 OGC 标准 (http://www.opengeospatial.org/standards) 用于规范接口、编码、功能描述、应用类型和最佳实践文档。OGC 参考模型 (ORM) (http://www.opengeospatial.org/standards/orm) 描述了这些标准相互间以及与 ISO 标准的关系。ORM 提供了对 OGC 标准群的概览，并适用于描述各类应用体系。

　　使用 OGC 标准开发应用并了解各个标准间的关系有利于促进在网络环境下发布、发现和连接重要的地理空间服信息务功能。

* 发布：信息源所有者提供其信息
* 发现：用户可以在业务运行时找到所需的资源
* 连接：用户可以在业务运行时获取资源

　　最近一些年来发展的多数标准都是基于网络服务的。这些标准合成 OGC 网络服务（OGC Web Services, OWS）。下面所展示的是基本框架，包含了在各种地理空间信息处理和地理相关活动中的应用模式。


.. figure:: ../../images/standards/publish_find_bind.jpg
  :scale: 55%
  :alt: Web services framework of OGC geoprocessing standards

　　其中的名称解释如下。其中某些是确定的 OGC 标注，另一些则是待议论文（Discussion Papers）、请求（Requests）和建议论文（Discussion Papers）。其中有一部分目前只对 OGC 成员开放。

.. add all standard overview documents to the toc and add all others right behind

.. toctree::
   :maxdepth: 1
   :glob:
   
   *_overview

* Sensor Planning Service (SPS) 传感器使用规划
* Web Terrain Service (WTS) 网络地形数据服务
* Grid Coverage Service 地理格网系统
* Coordinate Transformation Service 坐标转换
* Web Coverage Processing Service (WCPS) 网络地理编录处理
* Web Map Tile Service (WMTS) 网络地图切片
* Simple Features (SF) 简单地理要素
* Sensor Web Enablement (SWE) 网络传感器控制
* XML for Image and Map Annotation (XIMA) 用于图像和地图注记的 XML 文档
* CityGML 城市地理信息标注语言
* GeosciML 地学信息标注语言
* GML in JPEG 2000 地理编码（用于 JPEG 2000 图像）
* Observations and Measurements (O&M) 观测和测量
* Symbology Encoding 图形符号编码
* Transducer Markup Language (TML) 传感器标注语言


.. 各个标准的说明链接
  * :doc:`wms_overview` (http://www.opengeospatial.org/standards/wms)
  * :doc:`wfs_overview` (http://www.opengeospatial.org/standards/wfs)
  * :doc:`wcs_overview` (http://www.opengeospatial.org/standards/wcs)
  * :doc:`wps_overview` (http://www.opengeospatial.org/standards/wps)
  * :doc:`csw_overview` (http://www.opengeospatial.org/standards/specifications/catalog)
  * :doc:`sos_overview` (http://www.opengeospatial.org/standards/sos)
  * Sensor Model Language (SensorML) (http://www.opengeospatial.org/standards/sensorml) 
  * Sensor Planning Service (SPS) (http://www.opengeospatial.org/standards/sps)
  * Web Terrain Service (WTS) (http://portal.opengeospatial.org/files/?artifact_id=1072)
  * Grid Coverage Service (http://www.opengeospatial.org/standards/gc)
  * Coordinate Transformation Service (http://www.opengeospatial.org/standards/ct)
  * Web Coverage Processing Service (WCPS) (http://www.opengeospatial.org/standards/wcps)
  * Web Map Tile Service (WMTS) (http://www.opengeospatial.org/standards/wmts)
  * :doc:`gml_overview` (http://www.opengeospatial.org/standards/gml) 
  * :doc:`kml_overview` (http://www.opengeospatial.org/standards/kml)
  * :doc:`sensorml_overview` (http://www.opengeospatial.org/standards/sensorml)
  * Styled Layer Descriptor (SLD) (http://www.opengeospatial.org/standards/sfc) 
  * Filter Encoding (http://www.opengeospatial.org/standards/filter)
  * Simple Features (SF) (http://www.opengeospatial.org/standards/sfa) 
  * Sensor Web Enablement (SWE) (http://www.opengeospatial.org/ogc/markets-technologies/swe)
  * XML for Image and Map Annotation (XIMA) (http://portal.opengeospatial.org/files/?artifact_id=1020) 
  * CityGML (http://www.opengeospatial.org/standards/citygml)
  * GeosciML (http://www.geosciml.org/)
  * GML in JPEG 2000 (http://www.opengeospatial.org/standards/gmljp2)
  * Observations and Measurements (O&M) (http://www.opengeospatial.org/standards/om)
  * Symbology Encoding (http://www.opengeospatial.org/standards/symbol)
  * Transducer Markup Language (TML) (http://www.opengeospatial.org/standards/tml)

其它信息
--------------------------------------------------------------------------------

* OGC 标准完整列表 http://www.opengeospatial.org/standards/
* OGC 教程（IGARSS 2010） http://www.ogcnetwork.net/node/1481 
* OGC 线上教程 http://www.ogcnetwork.net/learn
