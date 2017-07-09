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

Style Layer Descriptor (SLD) 图层样式注记
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

　　OGC® Styled Layer Descriptor (SLD) 为地图要素的标记样式提供指导。它常用于 Web Map Services 网络地图服务的渲染以及 GML（来自 WFS）的要素的样式处理。(http://www.opengeospatial.org/standards/sld) 

.. image:: /images/standards/sld.jpg
  :scale: 55%
  :alt: SLD in Context

　　精细的样式控制对用许多地理信息服务至关重要。这要求一种客户端和服务器端均能使用的样式注记语言。

　　目前 OGC Web Map Service (WMS) 标准已经内建了一部分样式。然而，这种实现只能对用户传输样式的名称。具体的样式信息并没有一致的规范，也无法实现自定义。
　　OGC Symbology Encoding (SE) 符号编码标准 (http://www.opengeospatial.org/standards/symbol) 规定了一种用户和服务器均能解释的注记语言。WMS 的 SLD 部分使得 SE 可通过 WMS 操作对 WMS 图层应用样式。同时，SLD 定了标准的图例获取方法，使其能够远程获取。

　　除了对 WMS 配置样式，SE 也用于 WFS 和 WCS 。

相关信息
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`fe_overview`
* :doc:`kml_overview`
* Symbology Encoding
* :doc:`gml_overview`
* :doc:`wms_overview`
* :doc:`wfs_overview`

