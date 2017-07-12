:Author: Hamish Bowman
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-osm.png
  :alt: project logo
  :align: right
  :target: http://www.osm.org/


Open Street Map
================================================================================

开放地图数据
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　Open Street Map（OSM）开放街道地图数据库是一套依靠全球用户的参与形成的公共地图数据服务。它如今已经是全球范围内最精确和完善的地方地理数据局库之一。该系统的数据来自于全球海量的志愿者通过类似于维基百科系统的方式进行的协作。

　　OSM 最著名的数据服务方式是通过 osm.org 提供的预渲染地图切片服务。同时，其后台数据也可以任意下载，并通过 Quantum GIS、OpenLayers、ArcGIS 等软件和其它专用编辑系统显示、转换和编辑。

　　作为系统的核心，OSM 后台数据可以被任何人所使用和编辑。用户也可提取数据渲染自定义样式的地图。所有的 OSM 服务都建立在用户输入的后台数据的基础之上，而信息丰富的地图产品是其自然结果。

　　OSGeo-Live 包含 OSM 中一块城市大小的切片，可以在 Live 所包含的一些软件中使用。

.. image:: /images/screenshots/1024x768/osm-screenshot.jpg 
  :scale: 55 %
  :alt: OSM screenshot
  :align: right

核心特性
--------------------------------------------------------------------------------

* 矢量要素包含名称和其它多种属性
* 局部数据的提取
* 数据以基于 WGS84 椭球体的经纬度存储，包含元数据，支持点、线及面要素
* 丰富的属性数据设计，允许超过其它几乎任何公共数据库的精细标注
* 一套覆盖全球范围的地方地理知识数据库

OSGeo-Live 所含数据示例
--------------------------------------------------------------------------------

Nottingham.osm.bz2:
　英国诺丁汉市 OSM 数据，为以 BZip2 压缩的 XML 文件

Nottingham_CBD.osm.bz2:
　诺丁汉中央商务区数据

详细信息
--------------------------------------------------------------------------------

**官方网站：** http://www.osm.org

**版权协议：** CC-By-SA, Open Data Commons Open Database License (ODBL)

**数据版本：** 即时更新的数据库

**数据格式：** XML

**坐标系统：** WGS84 经纬度

**技术支持：** http://wiki.osm.org

