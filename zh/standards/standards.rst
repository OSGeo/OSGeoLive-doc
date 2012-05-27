.. Geospatial Standards documentation master file, created by
   sphinx-quickstart on Mon Jul 19 08:52:52 2010.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

开源地理信息基金会 （Open Geospatial Consortium） 标准
================================================================================

介绍
--------------------------------------------------------------------------------
为了让地理信息成为全球信息基础设施的一个组成部分， 开源地理信息基金会 (OGC) 成立于1994年. OGC的成员 – 技术提供商和技术使用者 -- 合作开发的开放式接口标准和相关的编码标准, 以及最佳做法, 使开发人员能够创建可以很容易地与其他信息系统交换"地理信息"的信息系统。 从复杂的地球观测卫星调度控制系统， 到在网络上显示简单的地图图像以及用几个字节来编码地理位置，您只要看一下OGC区域工作组(http://www.opengeospatial.org/projects/groups/wg)， 您就会知道OGC当前活动的范围之广。

OGC基准和OGC参考模型
--------------------------------------------------------------------------------

OGC对于接口，编码，型材，应用模式，基准，和最佳实践文件都有标准， 参见http://www.opengeospatial.org/standards。 OGC参考模型 (ORM) (参见http://www.opengeospatial.org/standards/orm) 描述了这些标准， 以及这些标准和相关ISO标准的关系。 ORM提供了一个OGC标准的概述，并给一些专业项目的设计工作提供了有用的资源。

在使用OGC标准开发web service时 (以及学习OGC的不同标准的关系时），应该将发布(publish)，查找(find)和绑定(bind)看作web service环境关键功能。

* 发布（Publish）: 资源提供者宣传他们的资源.
* 查找（Find）: 最终用户和他们的应用程序可以在运行时发现他们需要的资源.
* 绑定（Bind）: 最终用户和他们的应用程序可以在运行时使用资源.

近几年制定的OGC标准大部分都是给web service环境的。 这些标准统称为OGC Web Services (OWS). OWS框架见下图。 图中显示了运用到地理处理（geoprocessing）等方面的通用web service class. 

.. figure:: ../../images/standards/publish_find_bind.jpg
  :scale: 55%
  :alt: Web services framework of OGC geoprocessing standards

图中的缩略语定义见下段。 它们其中有些是 “OGC标准”， 其它是公开的“讨论文件”，“请求”和“推荐论文”。 (注释: 有一些正在制定的标准还未公开， 但OGC 的成员可看到.) 

.. add all standard overview documents to the toc and add all others right behind

.. toctree::
   :maxdepth: 1
   :glob:
   
   *_overview

* Sensor Planning Service (SPS)
* Web Terrain Service (WTS)
* Grid Coverage Service
* Coordinate Transformation Service
* Web Coverage Processing Service (WCPS)
* Web Map Tile Service (WMTS)
* Simple Features (SF)
* Sensor Web Enablement (SWE)
* XML for Image and Map Annotation (XIMA)
* CityGML
* GeosciML
* GML in JPEG 2000
* Observations and Measurements (O&M)
* Symbology Encoding
* Transducer Markup Language (TML)


.. links to standards
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

更多参考:
--------------------------------------------------------------------------------

* OGC标准的综合列表: http://www.opengeospatial.org/standards/
* 在IGARSS 2010会议上作的OGC教程介绍: http://www.ogcnetwork.net/node/1481 
* OGC的网络学习网页 (http://www.ogcnetwork.net/learn).
