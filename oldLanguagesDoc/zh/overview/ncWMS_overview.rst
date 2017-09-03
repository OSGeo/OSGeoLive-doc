:Author: Guy Griffiths (guy.griffiths@reading.ac.uk)
:Reviewer: Cameron Shorter
:Tranlater: Bu Kun(bukun@osgeo.cn)
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-ncWMS.png
 :alt: project logo
 :align: right
 :target: http://www.resc.rdg.ac.uk/trac/ncWMS/

ncWMS
================================================================================

Web地图服务
~~~~~~~~~~~~~~~


ncWMS使用OGC兼容的Web地图服务（WMS）发布多维数据（如环境和气象数据）。
ncWMS快速有效地提取从通常与环境数据相关的非常大型的数据文件的地图影像。

.. image:: /images/screenshots/ncWMS/ncWMS-03-timeseries.png
  :scale: 60 %
  :alt: Screen Shot of GeoServer
  :align: right


核心功能
-------------

* 快速提取数据
* 时间序列和垂直剖面图的生成
* 可以沿断面绘制数据
* 自动识别矢量分量并能产生矢量箭头
* 支持大范围预测（对于源数据和目标图像
* 支持创建动画
* 自备浏览器客户端
* 支持生成 Google Earth KML格式
* 输入格式: NetCDF, GRIB, OPeNDAP
* 输出格式: PNG, JPEG, animated GIF, KML

实现的标准
---------------------

* :doc:`../standards/wms_overview` (v1.1.1, v1.3.0)

* :doc:`../standards/kml_overview`

详情
-------

**网站:** http://www.resc.rdg.ac.uk/trac/ncWMS/

**授权:** `Modified BSD License <http://www.resc.rdg.ac.uk/trac/ncWMS/wiki/LicencePage>`_

**软件版本:** 1.1.1

**支持平台:** 所有Java 1.5平台: Windows, Linux, Mac

**API接口:** Java; WMS

**支持:** http://www.resc.rdg.ac.uk/trac/ncWMS/wiki/MailingLists


快速入门
----------

* :doc:`快速入门文档 <../quickstart/ncWMS_quickstart>`
