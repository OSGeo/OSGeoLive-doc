:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-otb.png
  :alt: project logo
  :align: right
  :target: http://www.orfeo-toolbox.org/

OTB
================================================================================

影象处理系统
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　ORFEO Toolbox Library（OTB）是一套高性能的影象处理函数库。其主要用途为处理雷达影象及卫星或航空光学影象。OTB 为未来的光学及雷达影象处理提供了一整套工具，包括三维建模、影象分割、分类、变化探测、纹理识别与匹配、光学与雷达信息综合等。

　　OTB 由法国宇航局赞助，从 2006 开始一直进行着活跃的开发。它是以 ITK 医学影响分析系统为基础的开源软件。

核心功能
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/800x600/otb-mapping.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

* 影象读取：为遥感影象专门优化，具备元数据支持，且支持 JPEG 2000 等格式
* 重投影及正射校正
* 辐射校正
* 影象融合
* 模糊、去噪、增强滤波器
* 要素检测：兴趣点、布局、线对象等
* 物像识别
* 大尺度影象分割：区域增长模型、均值偏移算法、分水岭模型、等值线搜索等
* 影象分类：K-Means 最小组内方差、支持向量机、马尔可夫随机场
* 基于要素的影象分析
* 地理空间分析
* 影象对三维建模
* 合成孔径雷达数据处理
* 变化检测

详细信息
--------------------------------------------------------------------------------

**官方网站：** http://www.orfeo-toolbox.org/

**开源协议：** CeCILL（CeCILL 与 GPL 兼容，并考虑了法国法律系统的要求）

**软件版本：** 3.14（2012 年 7 月）

**平台支持：** GNU/Linux, Mac, Windows

**API 接口：** C++（支持 Java / Python 接口）

**商业支持：** http://www.osgeo.org/search_profile


快速入门
--------------------------------------------------------------------------------

* :doc:`快速入门文档 <../quickstart/otb_quickstart>`

