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

Filter Encoding (FE) 过滤器编码
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

　　OGC® Filter Encoding Standard (FE) 定义了表达空间信息查询范围的 XML 语法，是查询可以根据一定的属性筛选结果。(http://www.opengeospatial.org/standards/filter)

.. image:: /images/standards/fe.jpg
  :scale: 55%
  :alt: FE in Context

　　FE 查询的结果可以被以特别的样式标注或转换成某种格式。XML 编码在转换成目标语言前可以轻松地解释和验证。FE 被应用在多种 OGC 网络服务中，包括 WFS、CSW 和 SLD 。

　　过滤的属性值可以是空间范围，例如“寻找 Omstead 地区 Peter Vretanos 名下的所有产业”。对于时间的过滤如“选择马萨诸塞州 1900 年前建造的水坝”。另外也可以使用如“寻找巴黎所有度数在 20-24 摄氏度的温度传感器”的过滤器。

相关信息
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`sld_overview`
* :doc:`csw_overview`
* :doc:`wfs_overview`
* :doc:`wms_overview`

