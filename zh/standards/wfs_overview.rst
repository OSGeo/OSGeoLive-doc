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

Web Feature Service (WFS) 网络地理要素服务
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

　　OGC® Web Feature Service Interface Standard (WFS) 定义了一套接口用于传输矢量地理要素数据，比如道路和湖泊等(http://www.opengeospatial.org/standards/wfs)。

.. image:: /images/standards/wfs.jpg
  :scale: 55%
  :alt: WFS in Context

　　WFS 标准使用户可以：

* 发现存储的要素类型(GetCapabilities)
* 获得其属性描述(DescribeFeatureType)
* 以一定的过滤器获得一部分要素(GetFeature)
* 添加、编辑和删除要素(Transaction)

　　所有 WFS 系统都支持 Geography Markup Language (GML) 地理主机语言。某些 WFS 也支持 GeoRSS 或 shp 等。

　　用户通常使用网页客户端或桌面 GIS 系统使用 WFS 服务，通过网络获取来自其它机构的数据。例如，美国地质调查局使用 WFS 作为其 National Spatial Data Infrastructure (NSDI) (http://frameworkwfs.usgs.gov/) 地理数据基础服务工程的一部分。其数据以 WFS 图层和网页客户端两种形式提供。

其它信息
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`wms_overview`
* :doc:`wcs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
* :doc:`gml_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* Symbology Encoding
* :doc:`fe_overview`
