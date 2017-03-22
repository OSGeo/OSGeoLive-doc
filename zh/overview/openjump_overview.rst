:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-openjump.png
  :alt: project logo
  :align: right
  :target: http://www.openjump.org

OpenJUMP GIS
================================================================================

地理信息系统桌面环境
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
　　OpenJUMP 是一套易用而强大的桌面 GIS 系统，用于显示、编辑、分析和综合各类地理信息数据。该软件有 CORE 和 PLUS 两个版本，其中 PLUS 版本预装了大量的功能插件。

　　OpenJUMP 非常擅长于数据编辑和 GIS 功能原型化开发的用途。

.. image:: ../../images/screenshots/1024x768/openjump-screenshot.png
  :scale: 50 %
  :alt: project screenshots
  :align: right

核心功能与插件（带有“*”者）
--------------------------------------------------------------------------------

* 数据格式支持

    * 数据文件输入：GML, SHP, DXF*, MIF*, CSV* & TIFF, JPG, PNG, JPEG2000*, MrSID*, ECW*
    * 数据库读取：PostGIS, ArcSDE*, Oracle*, MySQL* and SpatiaLite*
    * OGC 标准化网络服务： WKT 地理要素注记，WMS 网络地图服务
    * 输出：GML, SHP, WKT, DXF*, PostGIS* & JPG, TIFF and SVG*
    * 请注意带有“*”者需相应插件支持

* 数据编辑和综合分析

    * 绘制点、线、规则几何面、任意面、几何要素组合等，并可最终统一至同一图层
    * 添加、移动和删除点
    * 旋转、缩放和自动封闭面
    * 裁切、拼合和抽稀线及面
    * 质量检查工具等

* 检索和分析

    * 空间和非空间属性检索
    * 空间分析：缓冲区、合并、重叠、中央点、包络线等
    * 统计分析：长度、面积、图层统计、属性表统计、图表等
    * 编辑工具：数据转换、节点编辑、多边形编辑、平面图（图论）编辑和拓扑检查清理（PLUS 版）等
    * 属性转换：属性连接和传递*
    * PLUS 版包含了 SEXTANTE 栅格分析工具箱

* 自定义与二次开发

    * 多语言支持（包括汉语）
    * 提供一套API 用于 BeanShell / Java / Python 脚本
    * 基于 Java 的插件系统
   

标准实现
--------------------------------------------------------------------------------

* OGC 标准：GML2, SFS, WMS, SLD, WFS for deegree

详细信息
--------------------------------------------------------------------------------

**官方网站：** http://www.openjump.org

**开源协议：** GPL

**软件版本：** 1.5.2 (Core 版)

**平台支持：** Windows, Linux, Mac, Unix

**社区支持：** http://www.openjump.org/support.html

**商业支持：** http://sourceforge.net/apps/mediawiki/jump-pilot/index.php?title=Professional_Support_Page

**下载页面：** http://sourceforge.net/projects/jump-pilot/files/ 

快速入门
--------------------------------------------------------------------------------
    
* :doc:`快速入门文档 <../quickstart/openjump_quickstart>`
