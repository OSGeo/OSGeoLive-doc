:Author: Ian Turton
:Author: Frank Gasdorf
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GeoServer.png
  :scale: 100%
  :alt: project logo
  :align: right
  :target: http://geoserver.org/display/GEOS/Welcome

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GeoServer
================================================================================

Web服务
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoServer是一个Web服务器，支持将地图和各种格式的数据通过Web服务提供给标准客户端程序，如Web浏览器和桌面版GIS程序。这意味着空间数据可以任何 `格式 <http://docs.geoserver.org/stable/en/user/data/index.html>`_ 存储，而最终用户无需了解GIS数据细节。最简单的水准是，只需一个Web浏览器，最终用户即可查看开发者所定制的地图。

GeoServer是 `Open Geospatial Consortium <http://www.opengeospatial.org>`_ (OGC)标准规范的参考实施平台，
:doc:`../standards/wfs_overview` 和 
:doc:`../standards/wcs_overview` 标准, 
还有高性能的、兼容性得到充分验证的 
:doc:`../standards/wms_overview`。
GeoServer已成了Geospatial Web的一个核心组件。 

.. image:: ../../images/screenshots/800x600/geoserver.gif
  :scale: 60 %
  :alt: Screen Shot of GeoServer
  :align: right

主要功能
--------------------------------------------------------------------------------

**数据服务，支持各种各样的数据集:**
    * 矢量
        - Shape文件, 外部WFS
        - PostGIS, ArcSDE, DB2, Oracle Spatial, MySql, SQL Server
    * 栅格
        - GeoTiff, JPG和PNG (需附带world文件), image pyramid, GDAL formats, Image Mosaic, Oracle GeoRaster

**采用WMS协议，可以安全快捷的图像方式提供各种数据:**
    由于数据是以图像方式提供，数据本身安全与保密性得到全面保证。除非通过重新数字化，否则无法偷窃数据。
    每个图层的显示可以通过SLD标准进行控制，如：地物要素着色和注记。通过结合OGC Filter，可支持对应各比例尺的地物风格定制，允许用户放大时查看更多细节。此外，还实现了文字注记重叠管理、分组和优先级别。

**采用WFS协议，矢量数据可以发送到客户端:**
     WFS客户端可以下载矢量数据，用于制图、空间分析和其他操作。得到授权的用还可以修改数据，并将其通过WFS-T协议送回到服务器更新数据库。
     数据可以采用GML(压缩格式)、Shape和json等其他标准文件格式传输。

**采用WCS协议，栅格数据值能够被发送到客户端:**
     GIS客户端能够请求实际的栅格数据，用于空间分析。这就允许用户创建应用程序，对该数据处理建模。

**动态投影变换:**
     GeoServer支持大多数EPSG投影参数库，可以按照需求重投影到其中任何一种投影。给予客户端有限的重投影支持，将负载数据传输到服务器进行重投影。

**WMS切片缓存**
    `GeoWebCache <http://geowebcache.org/>`_ 是一个WMS切片客户端程序。它类似一个介于地图客户端和地图服务器之间的代理服务器，缓存着常被请求的切片库，消除了冗余的请求，节省了大量处理时间。GeoWebCache已经集成在了GeoServer中。

已经实现的标准规范
--------------------------------------------------------------------------------

支持众多的Open Geospatial Consortium  (OGC)标准规范:

  * :doc:`../standards/wms_overview`
  * :doc:`../standards/wfs_overview`, WFS-T (transactional)
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview` 
  * :doc:`../standards/gml_overview`

详情请见
--------------------------------------------------------------------------------

**网站:** http://geoserver.org/display/GEOS/Welcome

**版权:** GNU General Public License (GPL) version 2

**软件版本:** 2.1.3

**支持平台:** All Java 1.5 platforms: - Windows, Linux, Mac

**API接口:** WMS, WFS, WCS, REST

**支持:** http://geoserver.org/display/GEOS/Commercial+Support

快速入门
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/geoserver_quickstart>`
