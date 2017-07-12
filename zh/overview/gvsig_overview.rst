:Author: Jorge Sanz 
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-gvSIG.png
  :alt: project logo
  :align: right
  :target: http://www.gvsig.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/


gvSIG 桌面系统
================================================================================

桌面 GIS 系统
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　gvSIG 是一套地理信息系统桌面应用环境，可用于获取、存储、操作、分析和发布任何地理信息数据，用于支持解决复杂的管理与规划问题。gvSIG 具有友好的用户界面，并能处理所有常用的栅格或矢量数据。它提供了一整套工具用于处理地理数据，包括数据库查询、布局设计、空间运算、网络分析等，使得该系统适用于几乎任何地理信息处理应用。

　　gvSIG 具备以下特性：

* 运用基于 OGC 标准的接口与格式集成本地与网络数据
* 易于扩展，开发持续且对二次开发友好
* 支持二十余种语言
* 支持 MS Windows、GNU/Linux、Mac OS X 平台

.. image:: /images/screenshots/1024x768/gvsig_desktop.png
  :scale: 50 %
  :alt: screenshot
  :align: right

核心功能
--------------------------------------------------------------------------------

* GIS 基础功能，包括数据载入、地图导航、数据查询、距离度量、地图渲染主题、图例编辑、标注、多种方式的对象选择、属性表与统计信息、排序、数据表关系与连接、地图布局编辑、地理空间运算、计算机辅助设计数据支持、栅格数据处理等

* gvGIS 可以识别绝大多数的地理数据格式

  * 栅格：ecw, ENVI hdr, ERDAS img, (Geo)TIFF, GRASS 等
  * 矢量：shapefile, GML, KML, DGN, DXF, DWG
  * 数据库：PostGIS, MySQL, Oracle, ArcSDE
  * 网络服务：ECWP, ArcIMS, OGC 标准

* 通过数据服务客户端将本地地理信息源加入空间数据框架中

  * 数据编录：Z3950, SRW, CSW (ISO/19115 及 ebRIM)
  * 地名索引：ADL, WFS, WFS-G
  
* 通过 SEXTANTE 函数库和 GRASS 集成实现超过二百九十种地理空间信息处理算法
  
* 高级计算机辅助设计（CAD）软件环境集成

  * 矢量数据：创建、编辑和删除矢量对象
  * 基于命令行的典型 CAD 功能实现
  * 帮助支持、格网参考、命令序列、复杂要素选择等功能
  * 点、线、面、规则椭圆等要素创建
  * 旋转、镜像等编辑工具
  
* 高级栅格数据处理集成

  * 地理空间定位与投影变换
  * 输出与裁切
  * 表格查询和统计图
  * 过滤器
  * 矢量化
  * 总览图和研究区管理

* 脚本系统
* 基于 PROJ4 的高性能投影变换系统

标准实现
--------------------------------------------------------------------------------

gvSIG 支持大量的 OGC 标准

* 读取 WMS 网络地图服务、WFS 网络地理要素服务、WCS 网络数据检索服务等数据源
* 输入/输出 SLD 地图样式及图例
* 输入/输出 Web Map Context（WMC）数据描述文件
* 搜索 CSW（ISO/19115 及 ebRIM）数据编录
* 搜索基于 WFS-G 推荐标准的地名索引

详细信息
--------------------------------------------------------------------------------

**官方网站：** http://www.gvsig.org/

**开源协议：** GNU General Public License (GPL) version 2

**软件版本：** |version-gvsig|

**平台支持：** MS Windows, GNU/Linux, Mac

**技术支持：** http://www.gvsig.org/web/organization/services


.. _gvSIG: http://www.gvsig.org

快速入门
--------------------------------------------------------------------------------
    
* :doc:`快速入门文档 <../quickstart/gvsig_quickstart>`
